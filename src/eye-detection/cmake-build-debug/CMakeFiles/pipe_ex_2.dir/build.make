# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /usr/share/clion-2017.3.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /usr/share/clion-2017.3.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/victorvianna/Desktop/FaceTweaking/src/eye-detection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/pipe_ex_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pipe_ex_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pipe_ex_2.dir/flags.make

# Object files for target pipe_ex_2
pipe_ex_2_OBJECTS =

# External object files for target pipe_ex_2
pipe_ex_2_EXTERNAL_OBJECTS =

pipe_ex_2: CMakeFiles/pipe_ex_2.dir/build.make
pipe_ex_2: dlib_build/libdlib.a
pipe_ex_2: /usr/lib/x86_64-linux-gnu/libnsl.so
pipe_ex_2: /usr/lib/x86_64-linux-gnu/libSM.so
pipe_ex_2: /usr/lib/x86_64-linux-gnu/libICE.so
pipe_ex_2: /usr/lib/x86_64-linux-gnu/libX11.so
pipe_ex_2: /usr/lib/x86_64-linux-gnu/libXext.so
pipe_ex_2: /usr/lib/x86_64-linux-gnu/libgif.so
pipe_ex_2: /usr/lib/x86_64-linux-gnu/libpng.so
pipe_ex_2: /usr/lib/x86_64-linux-gnu/libz.so
pipe_ex_2: /usr/lib/x86_64-linux-gnu/libjpeg.so
pipe_ex_2: /usr/lib/x86_64-linux-gnu/libsqlite3.so
pipe_ex_2: CMakeFiles/pipe_ex_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX executable pipe_ex_2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pipe_ex_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pipe_ex_2.dir/build: pipe_ex_2

.PHONY : CMakeFiles/pipe_ex_2.dir/build

CMakeFiles/pipe_ex_2.dir/requires:

.PHONY : CMakeFiles/pipe_ex_2.dir/requires

CMakeFiles/pipe_ex_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pipe_ex_2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pipe_ex_2.dir/clean

CMakeFiles/pipe_ex_2.dir/depend:
	cd /home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/victorvianna/Desktop/FaceTweaking/src/eye-detection /home/victorvianna/Desktop/FaceTweaking/src/eye-detection /home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug /home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug /home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug/CMakeFiles/pipe_ex_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pipe_ex_2.dir/depend

