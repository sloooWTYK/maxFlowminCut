# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/apoorv/maxFlowminCut/GPU

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/apoorv/maxFlowminCut/GPU/cmake_build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/main_generated_main.cu.o: CMakeFiles/main.dir/main_generated_main.cu.o.depend
CMakeFiles/main.dir/main_generated_main.cu.o: CMakeFiles/main.dir/main_generated_main.cu.o.cmake
CMakeFiles/main.dir/main_generated_main.cu.o: ../main.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building NVCC (Device) object CMakeFiles/main.dir/main_generated_main.cu.o"
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir && /usr/bin/cmake -E make_directory /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//.
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir && /usr/bin/cmake -D verbose:BOOL=$(VERBOSE) -D build_configuration:STRING= -D generated_file:STRING=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//./main_generated_main.cu.o -D generated_cubin_file:STRING=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//./main_generated_main.cu.o.cubin.txt -P /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//main_generated_main.cu.o.cmake

CMakeFiles/main.dir/main_generated_mathOperations.cu.o: CMakeFiles/main.dir/main_generated_mathOperations.cu.o.depend
CMakeFiles/main.dir/main_generated_mathOperations.cu.o: CMakeFiles/main.dir/main_generated_mathOperations.cu.o.cmake
CMakeFiles/main.dir/main_generated_mathOperations.cu.o: ../mathOperations.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building NVCC (Device) object CMakeFiles/main.dir/main_generated_mathOperations.cu.o"
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir && /usr/bin/cmake -E make_directory /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//.
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir && /usr/bin/cmake -D verbose:BOOL=$(VERBOSE) -D build_configuration:STRING= -D generated_file:STRING=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//./main_generated_mathOperations.cu.o -D generated_cubin_file:STRING=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//./main_generated_mathOperations.cu.o.cubin.txt -P /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//main_generated_mathOperations.cu.o.cmake

CMakeFiles/main.dir/main_generated_postProcessing.cu.o: CMakeFiles/main.dir/main_generated_postProcessing.cu.o.depend
CMakeFiles/main.dir/main_generated_postProcessing.cu.o: CMakeFiles/main.dir/main_generated_postProcessing.cu.o.cmake
CMakeFiles/main.dir/main_generated_postProcessing.cu.o: ../postProcessing.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building NVCC (Device) object CMakeFiles/main.dir/main_generated_postProcessing.cu.o"
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir && /usr/bin/cmake -E make_directory /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//.
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir && /usr/bin/cmake -D verbose:BOOL=$(VERBOSE) -D build_configuration:STRING= -D generated_file:STRING=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//./main_generated_postProcessing.cu.o -D generated_cubin_file:STRING=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//./main_generated_postProcessing.cu.o.cubin.txt -P /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//main_generated_postProcessing.cu.o.cmake

CMakeFiles/main.dir/main_generated_primal_dual.cu.o: CMakeFiles/main.dir/main_generated_primal_dual.cu.o.depend
CMakeFiles/main.dir/main_generated_primal_dual.cu.o: CMakeFiles/main.dir/main_generated_primal_dual.cu.o.cmake
CMakeFiles/main.dir/main_generated_primal_dual.cu.o: ../primal_dual.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building NVCC (Device) object CMakeFiles/main.dir/main_generated_primal_dual.cu.o"
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir && /usr/bin/cmake -E make_directory /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//.
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir && /usr/bin/cmake -D verbose:BOOL=$(VERBOSE) -D build_configuration:STRING= -D generated_file:STRING=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//./main_generated_primal_dual.cu.o -D generated_cubin_file:STRING=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//./main_generated_primal_dual.cu.o.cubin.txt -P /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//main_generated_primal_dual.cu.o.cmake

CMakeFiles/main.dir/main_generated_helper.cu.o: CMakeFiles/main.dir/main_generated_helper.cu.o.depend
CMakeFiles/main.dir/main_generated_helper.cu.o: CMakeFiles/main.dir/main_generated_helper.cu.o.cmake
CMakeFiles/main.dir/main_generated_helper.cu.o: ../helper.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building NVCC (Device) object CMakeFiles/main.dir/main_generated_helper.cu.o"
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir && /usr/bin/cmake -E make_directory /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//.
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir && /usr/bin/cmake -D verbose:BOOL=$(VERBOSE) -D build_configuration:STRING= -D generated_file:STRING=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//./main_generated_helper.cu.o -D generated_cubin_file:STRING=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//./main_generated_helper.cu.o.cubin.txt -P /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir//main_generated_helper.cu.o.cmake

CMakeFiles/main.dir/read_bk.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/read_bk.cpp.o: ../read_bk.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/main.dir/read_bk.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/read_bk.cpp.o -c /home/apoorv/maxFlowminCut/GPU/read_bk.cpp

CMakeFiles/main.dir/read_bk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/read_bk.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/apoorv/maxFlowminCut/GPU/read_bk.cpp > CMakeFiles/main.dir/read_bk.cpp.i

CMakeFiles/main.dir/read_bk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/read_bk.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/apoorv/maxFlowminCut/GPU/read_bk.cpp -o CMakeFiles/main.dir/read_bk.cpp.s

CMakeFiles/main.dir/read_bk.cpp.o.requires:

.PHONY : CMakeFiles/main.dir/read_bk.cpp.o.requires

CMakeFiles/main.dir/read_bk.cpp.o.provides: CMakeFiles/main.dir/read_bk.cpp.o.requires
	$(MAKE) -f CMakeFiles/main.dir/build.make CMakeFiles/main.dir/read_bk.cpp.o.provides.build
.PHONY : CMakeFiles/main.dir/read_bk.cpp.o.provides

CMakeFiles/main.dir/read_bk.cpp.o.provides.build: CMakeFiles/main.dir/read_bk.cpp.o


# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/read_bk.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS = \
"/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir/main_generated_main.cu.o" \
"/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir/main_generated_mathOperations.cu.o" \
"/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir/main_generated_postProcessing.cu.o" \
"/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir/main_generated_primal_dual.cu.o" \
"/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir/main_generated_helper.cu.o"

main: CMakeFiles/main.dir/read_bk.cpp.o
main: CMakeFiles/main.dir/main_generated_main.cu.o
main: CMakeFiles/main.dir/main_generated_mathOperations.cu.o
main: CMakeFiles/main.dir/main_generated_postProcessing.cu.o
main: CMakeFiles/main.dir/main_generated_primal_dual.cu.o
main: CMakeFiles/main.dir/main_generated_helper.cu.o
main: CMakeFiles/main.dir/build.make
main: /usr/lib/x86_64-linux-gnu/libcudart_static.a
main: /usr/lib/x86_64-linux-gnu/librt.so
main: /usr/lib/x86_64-linux-gnu/libcublas.so
main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: main

.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/requires: CMakeFiles/main.dir/read_bk.cpp.o.requires

.PHONY : CMakeFiles/main.dir/requires

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend: CMakeFiles/main.dir/main_generated_main.cu.o
CMakeFiles/main.dir/depend: CMakeFiles/main.dir/main_generated_mathOperations.cu.o
CMakeFiles/main.dir/depend: CMakeFiles/main.dir/main_generated_postProcessing.cu.o
CMakeFiles/main.dir/depend: CMakeFiles/main.dir/main_generated_primal_dual.cu.o
CMakeFiles/main.dir/depend: CMakeFiles/main.dir/main_generated_helper.cu.o
	cd /home/apoorv/maxFlowminCut/GPU/cmake_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/apoorv/maxFlowminCut/GPU /home/apoorv/maxFlowminCut/GPU /home/apoorv/maxFlowminCut/GPU/cmake_build /home/apoorv/maxFlowminCut/GPU/cmake_build /home/apoorv/maxFlowminCut/GPU/cmake_build/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

