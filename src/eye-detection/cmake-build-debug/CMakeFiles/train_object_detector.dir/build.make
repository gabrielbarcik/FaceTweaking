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
include CMakeFiles/train_object_detector.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/train_object_detector.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/train_object_detector.dir/flags.make

# Object files for target train_object_detector
train_object_detector_OBJECTS =

# External object files for target train_object_detector
train_object_detector_EXTERNAL_OBJECTS =

train_object_detector: CMakeFiles/train_object_detector.dir/build.make
train_object_detector: dlib_build/libdlib.a
train_object_detector: /usr/lib/x86_64-linux-gnu/libnsl.so
train_object_detector: /usr/lib/x86_64-linux-gnu/libSM.so
train_object_detector: /usr/lib/x86_64-linux-gnu/libICE.so
train_object_detector: /usr/lib/x86_64-linux-gnu/libX11.so
train_object_detector: /usr/lib/x86_64-linux-gnu/libXext.so
train_object_detector: /usr/lib/x86_64-linux-gnu/libgif.so
train_object_detector: /usr/lib/x86_64-linux-gnu/libpng.so
train_object_detector: /usr/lib/x86_64-linux-gnu/libz.so
train_object_detector: /usr/lib/x86_64-linux-gnu/libjpeg.so
train_object_detector: /usr/lib/x86_64-linux-gnu/libsqlite3.so
train_object_detector: CMakeFiles/train_object_detector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX executable train_object_detector"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/train_object_detector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/train_object_detector.dir/build: train_object_detector

.PHONY : CMakeFiles/train_object_detector.dir/build

CMakeFiles/train_object_detector.dir/requires:

.PHONY : CMakeFiles/train_object_detector.dir/requires

CMakeFiles/train_object_detector.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/train_object_detector.dir/cmake_clean.cmake
.PHONY : CMakeFiles/train_object_detector.dir/clean

CMakeFiles/train_object_detector.dir/depend:
	cd /home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/victorvianna/Desktop/FaceTweaking/src/eye-detection /home/victorvianna/Desktop/FaceTweaking/src/eye-detection /home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug /home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug /home/victorvianna/Desktop/FaceTweaking/src/eye-detection/cmake-build-debug/CMakeFiles/train_object_detector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/train_object_detector.dir/depend
