# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/toor/Desktop/JetsonYolov5/yolov5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/toor/Desktop/JetsonYolov5/yolov5/build

# Include any dependencies generated for this target.
include CMakeFiles/yolov5_seg.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/yolov5_seg.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/yolov5_seg.dir/flags.make

CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o: CMakeFiles/yolov5_seg.dir/flags.make
CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o: ../yolov5_seg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/Desktop/JetsonYolov5/yolov5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o -c /home/toor/Desktop/JetsonYolov5/yolov5/yolov5_seg.cpp

CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/toor/Desktop/JetsonYolov5/yolov5/yolov5_seg.cpp > CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.i

CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/toor/Desktop/JetsonYolov5/yolov5/yolov5_seg.cpp -o CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.s

CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o.requires:

.PHONY : CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o.requires

CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o.provides: CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o.requires
	$(MAKE) -f CMakeFiles/yolov5_seg.dir/build.make CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o.provides.build
.PHONY : CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o.provides

CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o.provides.build: CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o


CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o: CMakeFiles/yolov5_seg.dir/flags.make
CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o: ../src/calibrator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/Desktop/JetsonYolov5/yolov5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o -c /home/toor/Desktop/JetsonYolov5/yolov5/src/calibrator.cpp

CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/toor/Desktop/JetsonYolov5/yolov5/src/calibrator.cpp > CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.i

CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/toor/Desktop/JetsonYolov5/yolov5/src/calibrator.cpp -o CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.s

CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o.requires:

.PHONY : CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o.requires

CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o.provides: CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o.requires
	$(MAKE) -f CMakeFiles/yolov5_seg.dir/build.make CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o.provides.build
.PHONY : CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o.provides

CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o.provides.build: CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o


CMakeFiles/yolov5_seg.dir/src/model.cpp.o: CMakeFiles/yolov5_seg.dir/flags.make
CMakeFiles/yolov5_seg.dir/src/model.cpp.o: ../src/model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/Desktop/JetsonYolov5/yolov5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/yolov5_seg.dir/src/model.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yolov5_seg.dir/src/model.cpp.o -c /home/toor/Desktop/JetsonYolov5/yolov5/src/model.cpp

CMakeFiles/yolov5_seg.dir/src/model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yolov5_seg.dir/src/model.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/toor/Desktop/JetsonYolov5/yolov5/src/model.cpp > CMakeFiles/yolov5_seg.dir/src/model.cpp.i

CMakeFiles/yolov5_seg.dir/src/model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yolov5_seg.dir/src/model.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/toor/Desktop/JetsonYolov5/yolov5/src/model.cpp -o CMakeFiles/yolov5_seg.dir/src/model.cpp.s

CMakeFiles/yolov5_seg.dir/src/model.cpp.o.requires:

.PHONY : CMakeFiles/yolov5_seg.dir/src/model.cpp.o.requires

CMakeFiles/yolov5_seg.dir/src/model.cpp.o.provides: CMakeFiles/yolov5_seg.dir/src/model.cpp.o.requires
	$(MAKE) -f CMakeFiles/yolov5_seg.dir/build.make CMakeFiles/yolov5_seg.dir/src/model.cpp.o.provides.build
.PHONY : CMakeFiles/yolov5_seg.dir/src/model.cpp.o.provides

CMakeFiles/yolov5_seg.dir/src/model.cpp.o.provides.build: CMakeFiles/yolov5_seg.dir/src/model.cpp.o


CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o: CMakeFiles/yolov5_seg.dir/flags.make
CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o: ../src/postprocess.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/Desktop/JetsonYolov5/yolov5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o -c /home/toor/Desktop/JetsonYolov5/yolov5/src/postprocess.cpp

CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/toor/Desktop/JetsonYolov5/yolov5/src/postprocess.cpp > CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.i

CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/toor/Desktop/JetsonYolov5/yolov5/src/postprocess.cpp -o CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.s

CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o.requires:

.PHONY : CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o.requires

CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o.provides: CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o.requires
	$(MAKE) -f CMakeFiles/yolov5_seg.dir/build.make CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o.provides.build
.PHONY : CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o.provides

CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o.provides.build: CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o


CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o: CMakeFiles/yolov5_seg.dir/flags.make
CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o: ../src/preprocess.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/Desktop/JetsonYolov5/yolov5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CUDA object CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o"
	/usr/local/cuda/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/toor/Desktop/JetsonYolov5/yolov5/src/preprocess.cu -o CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o

CMakeFiles/yolov5_seg.dir/src/preprocess.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/yolov5_seg.dir/src/preprocess.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/yolov5_seg.dir/src/preprocess.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/yolov5_seg.dir/src/preprocess.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o.requires:

.PHONY : CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o.requires

CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o.provides: CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o.requires
	$(MAKE) -f CMakeFiles/yolov5_seg.dir/build.make CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o.provides.build
.PHONY : CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o.provides

CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o.provides.build: CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o


# Object files for target yolov5_seg
yolov5_seg_OBJECTS = \
"CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o" \
"CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o" \
"CMakeFiles/yolov5_seg.dir/src/model.cpp.o" \
"CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o" \
"CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o"

# External object files for target yolov5_seg
yolov5_seg_EXTERNAL_OBJECTS =

CMakeFiles/yolov5_seg.dir/cmake_device_link.o: CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: CMakeFiles/yolov5_seg.dir/src/model.cpp.o
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: CMakeFiles/yolov5_seg.dir/build.make
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: libmyplugins.so
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_dnn.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_gapi.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_highgui.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_ml.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_objdetect.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_photo.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_stitching.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_video.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_videoio.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_features2d.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_flann.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: /usr/lib/aarch64-linux-gnu/libopencv_core.so.4.1.1
CMakeFiles/yolov5_seg.dir/cmake_device_link.o: CMakeFiles/yolov5_seg.dir/dlink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toor/Desktop/JetsonYolov5/yolov5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CUDA device code CMakeFiles/yolov5_seg.dir/cmake_device_link.o"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yolov5_seg.dir/dlink.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/yolov5_seg.dir/build: CMakeFiles/yolov5_seg.dir/cmake_device_link.o

.PHONY : CMakeFiles/yolov5_seg.dir/build

# Object files for target yolov5_seg
yolov5_seg_OBJECTS = \
"CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o" \
"CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o" \
"CMakeFiles/yolov5_seg.dir/src/model.cpp.o" \
"CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o" \
"CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o"

# External object files for target yolov5_seg
yolov5_seg_EXTERNAL_OBJECTS =

yolov5_seg: CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o
yolov5_seg: CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o
yolov5_seg: CMakeFiles/yolov5_seg.dir/src/model.cpp.o
yolov5_seg: CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o
yolov5_seg: CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o
yolov5_seg: CMakeFiles/yolov5_seg.dir/build.make
yolov5_seg: libmyplugins.so
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_dnn.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_gapi.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_highgui.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_ml.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_objdetect.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_photo.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_stitching.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_video.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_videoio.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_features2d.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_flann.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.4.1.1
yolov5_seg: /usr/lib/aarch64-linux-gnu/libopencv_core.so.4.1.1
yolov5_seg: CMakeFiles/yolov5_seg.dir/cmake_device_link.o
yolov5_seg: CMakeFiles/yolov5_seg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toor/Desktop/JetsonYolov5/yolov5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable yolov5_seg"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/yolov5_seg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/yolov5_seg.dir/build: yolov5_seg

.PHONY : CMakeFiles/yolov5_seg.dir/build

CMakeFiles/yolov5_seg.dir/requires: CMakeFiles/yolov5_seg.dir/yolov5_seg.cpp.o.requires
CMakeFiles/yolov5_seg.dir/requires: CMakeFiles/yolov5_seg.dir/src/calibrator.cpp.o.requires
CMakeFiles/yolov5_seg.dir/requires: CMakeFiles/yolov5_seg.dir/src/model.cpp.o.requires
CMakeFiles/yolov5_seg.dir/requires: CMakeFiles/yolov5_seg.dir/src/postprocess.cpp.o.requires
CMakeFiles/yolov5_seg.dir/requires: CMakeFiles/yolov5_seg.dir/src/preprocess.cu.o.requires

.PHONY : CMakeFiles/yolov5_seg.dir/requires

CMakeFiles/yolov5_seg.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/yolov5_seg.dir/cmake_clean.cmake
.PHONY : CMakeFiles/yolov5_seg.dir/clean

CMakeFiles/yolov5_seg.dir/depend:
	cd /home/toor/Desktop/JetsonYolov5/yolov5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toor/Desktop/JetsonYolov5/yolov5 /home/toor/Desktop/JetsonYolov5/yolov5 /home/toor/Desktop/JetsonYolov5/yolov5/build /home/toor/Desktop/JetsonYolov5/yolov5/build /home/toor/Desktop/JetsonYolov5/yolov5/build/CMakeFiles/yolov5_seg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/yolov5_seg.dir/depend

