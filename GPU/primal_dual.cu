#include <iostream>
#include <math.h>
#include <vector>
#include <algorithm>
#include "primal_dual.cuh"
#include "mathOperations.cuh"
#include <cublas_v2.h>

using namespace std;

// Update X (GPU)
__global__ void primal_dual(float *x, float *y, float *w, float *f, float *div_y, vert *mVert, edge *mEdge, float *tau, float *sigma, int num_vertex, int num_edge){
	// Get coordinates - 3D coordinate implemented for sake of generality (perhaps we could play around with different block configurations)
	int x_thread = threadIdx.x + blockDim.x * blockIdx.x;
	int y_thread = threadIdx.y + blockDim.y * blockIdx.y;
	int z_thread = threadIdx.z + blockDim.z * blockIdx.z;
	// Get indices
	//int idx = x_thread + (size_t)w*y_thread + (size_t)w*h*z_thread;
	int idx = x_thread;
	// Temporary values
	float x_new, x_diff;
	// Compute divergence of y for each thread
	// compute_divergence(w, y, mVert, num_vertex, div_y);
	// Compute new u
	if (idx < num_vertex){
		x_new = x[idx] + tau[idx] * (div_y[idx] - f[idx]);
		// Compute x_diff
		x_diff = x_new - x[idx];
		// Update Y using a device function
		// updateY(x, y, x_diff, w, mEdge, sigma, num_edge);
		// Clamping
		if (x_new < 0)
			x_new = 0;
		else if (x_new > 1)
			x_new = 1;
		// Update X	
		x[idx] = x_new;
	}
}

// Update Y (GPU)
__device__ void updateY(float *x, float *y, float &x_diff, float *w, edge *mEdge, float *sigma, int num_edge){
	// Get coordinates
	int x_thread = threadIdx.x + blockDim.x * blockIdx.x;
	int y_thread = threadIdx.y + blockDim.y * blockIdx.y;
	int z_thread = threadIdx.z + blockDim.z * blockIdx.z;
	// Get indices
	//int idx = x_thread + (size_t)w*y_thread + (size_t)w*h*z_thread;
	int idx = x_thread;
	// Temporary values
	float y_new, grad_x_diff;
	// Compute gradient of x_diff
	//compute_gradient(w, x, mEdge, num_edge, grad_x_diff); NOTE GRAD_X_DIFF IS A REFERENCE
	// Compute new y
	y_new = y[idx] + sigma[idx] * grad_x_diff;
	// Clamping
	if (y_new < -1)
		y_new = -1;
	else if (y_new > 1)
		y_new = 1;
	// Update y
	y[idx] = y_new;
}

// Compute time steps
/*template <class T>
void compute_dt(T *tau, T *sigma, T *w_u, T alpha, T phi, vert *mVert, int num_vertex, int num_edge){
    // Size of neighbouring vertices j for vertex i
    int size_nbhd;
    // Compute tau
    for (size_t i = 0; i < num_vertex; i++){
        T sum = (T)0;
        size_nbhd = mVert[i].nbhdSize;
		if (size_nbhd == 0){ 
			tau[i] = 0;
		}
		else if (size_nbhd != 0) {
			for (size_t j = 0; j < size_nbhd; j++){
				sum += pow(abs(w_u[mVert[i].nbhdEdges[j]]), alpha);
			}
			tau[i] = (T)1 / ((T)phi * (T)sum);
		}
    }
    // Compute sigma
    for (size_t i = 0; i < num_edge; i++){
        sigma[i] = (T)phi / pow((T)abs(w_u[i]), (T)2 - (T) alpha);
    }
}*/


template <class T> __global__
void d_compute_dt(T *tau, T *sigma, T *w_u, T alpha, T phi, vert *mVert, int num_vertex, int num_edge){
    // Size of neighbouring vertices j for vertex i
    int size_nbhd;
    // Compute tau
    int tnum_x = threadIdx.x + blockIdx.x*blockDim.x;
    int tnum_y = threadIdx.y + blockIdx.y*blockDim.y;
    int tnum_z = threadIdx.z + blockIdx.z*blockDim.z;
    int i = tnum_x + tnum_y + tnum_z; 

    if (i < num_vertex){
        T sum = (T)0;
        size_nbhd = mVert[i].nbhdSize;
		if (size_nbhd == 0){ 
			tau[i] = 0;
		}
		else if (size_nbhd != 0) {
			for (size_t j = 0; j < size_nbhd; j++){
				sum += pow(abs(w_u[mVert[i].nbhdEdges[j]]), alpha);
			}
			tau[i] = (T)1 / ((T)phi * (T)sum);
		}
    }
    // Compute sigma
	__syncthreads();
    if (i<num_edge){
        sigma[i] = (T)phi / pow((T)abs(w_u[i]), (T) 2 - (T) alpha);
    }
}


// Compare 0 and div_y - f
/*template <class T> 
void get_max (T *div_y, T *f, T *max_vec, T &sum, int num_vertex){
	sum = (T) 0;
	// Get max value and sum the results
    for (size_t i = 0; i < num_vertex; i++){
        max_vec[i] = max( (T) 0, div_y[i] - f[i] );
		sum += max_vec[i];
    }
}*/


template <class T> __global__
void max_vec_computation (T *div_y, T *f, T *max_vec, int num_vertex){
	int tnum_x = threadIdx.x + blockIdx.x*blockDim.x;
	int tnum_y = threadIdx.y + blockIdx.y*blockDim.y;
	int tnum_z = threadIdx.z + blockIdx.z*blockDim.z;
	int i = tnum_x + tnum_y + tnum_z; 

	// Get max value and sum the results
	if (i < num_vertex){
	max_vec[i] = max( (T) 0, div_y[i] - f[i] );
	}
}


// Compute gap
/*template <class T> 
void compute_gap(T *w, edge *mEdge, T *x, T *f, T *div_y, T &gap, T &x_norm, T &xf, int num_vertex, int num_edge){
	cublasHandle_t handle;
	cublasCreate(&handle);
	// Allocate memory
	T *grad_x = new T[num_edge];
	T *max_vec = new T[num_vertex];
	T *gap_vec = new T[num_vertex];
	T max_val;
	// Compute gradient of u
	gradient_calculate(w, x, mEdge, num_edge, grad_x);
	// Compute scalar product
	cublasDdot(handle, num_vertex, x, 1, f, 1, &xf);	
	//compute_scalar_product(x, f, xf, num_vertex);
	// Compute L1 norm of gradient of u
	cublasDasum(handle, num_vertex, grad_x, 1, &x_norm);	
	//compute_L1(grad_x, x_norm, num_edge);
	// Compare 0 and div_y - f
	get_max<T>(div_y, f, max_vec, max_val, num_vertex);
	//cout << " Xf = " << xf << " x_norm = " << x_norm << " max_val = " << max_val << endl;
	// Compute gap
	gap = (xf + x_norm + max_val) / num_edge;
	// Free memory
	delete []grad_x;
	delete []max_vec;
	delete []gap_vec;
}*/



template __global__ void d_compute_dt<float>(float*, float*, float*, float, float, vert*, int, int);
template __global__ void d_compute_dt<double>(double*, double*, double*, double, double, vert*, int, int);
template <class T> __global__ void max_vec_computation (float *div_y, float *f, float *max_vec, int num_vertex);
template <class T> __global__ void max_vec_computation (double *div_y, double *f, double *max_vec, int num_vertex);

