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
CMAKE_SOURCE_DIR = /home/toor/Desktop/atom_ws/src/atom_logic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/toor/Desktop/atom_ws/build/atom_logic

# Include any dependencies generated for this target.
include CMakeFiles/atom_core_logic_node.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/atom_core_logic_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/atom_core_logic_node.dir/flags.make

CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o: CMakeFiles/atom_core_logic_node.dir/flags.make
CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o: /home/toor/Desktop/atom_ws/src/atom_logic/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/Desktop/atom_ws/build/atom_logic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o -c /home/toor/Desktop/atom_ws/src/atom_logic/src/main.cpp

CMakeFiles/atom_core_logic_node.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atom_core_logic_node.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/toor/Desktop/atom_ws/src/atom_logic/src/main.cpp > CMakeFiles/atom_core_logic_node.dir/src/main.cpp.i

CMakeFiles/atom_core_logic_node.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atom_core_logic_node.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/toor/Desktop/atom_ws/src/atom_logic/src/main.cpp -o CMakeFiles/atom_core_logic_node.dir/src/main.cpp.s

CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o.requires

CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o.provides: CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/atom_core_logic_node.dir/build.make CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o.provides

CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o.provides.build: CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o


CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o: CMakeFiles/atom_core_logic_node.dir/flags.make
CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o: /home/toor/Desktop/atom_ws/src/atom_logic/src/FindLines.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/Desktop/atom_ws/build/atom_logic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o -c /home/toor/Desktop/atom_ws/src/atom_logic/src/FindLines.cpp

CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/toor/Desktop/atom_ws/src/atom_logic/src/FindLines.cpp > CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.i

CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/toor/Desktop/atom_ws/src/atom_logic/src/FindLines.cpp -o CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.s

CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o.requires:

.PHONY : CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o.requires

CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o.provides: CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o.requires
	$(MAKE) -f CMakeFiles/atom_core_logic_node.dir/build.make CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o.provides.build
.PHONY : CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o.provides

CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o.provides.build: CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o


CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o: CMakeFiles/atom_core_logic_node.dir/flags.make
CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o: /home/toor/Desktop/atom_ws/src/atom_logic/src/PID.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/Desktop/atom_ws/build/atom_logic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o -c /home/toor/Desktop/atom_ws/src/atom_logic/src/PID.cpp

CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/toor/Desktop/atom_ws/src/atom_logic/src/PID.cpp > CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.i

CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/toor/Desktop/atom_ws/src/atom_logic/src/PID.cpp -o CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.s

CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o.requires:

.PHONY : CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o.requires

CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o.provides: CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o.requires
	$(MAKE) -f CMakeFiles/atom_core_logic_node.dir/build.make CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o.provides.build
.PHONY : CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o.provides

CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o.provides.build: CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o


# Object files for target atom_core_logic_node
atom_core_logic_node_OBJECTS = \
"CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o" \
"CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o" \
"CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o"

# External object files for target atom_core_logic_node
atom_core_logic_node_EXTERNAL_OBJECTS =

atom_core_logic_node: CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o
atom_core_logic_node: CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o
atom_core_logic_node: CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o
atom_core_logic_node: CMakeFiles/atom_core_logic_node.dir/build.make
atom_core_logic_node: /opt/ros/dashing/lib/libimage_transport.so
atom_core_logic_node: /opt/ros/dashing/lib/libmessage_filters.so
atom_core_logic_node: /opt/ros/dashing/lib/librclcpp.so
atom_core_logic_node: /opt/ros/dashing/lib/librcl.so
atom_core_logic_node: /opt/ros/dashing/lib/librcl_interfaces__rosidl_typesupport_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librcl_interfaces__rosidl_typesupport_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/librcl_interfaces__rosidl_generator_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librcl_interfaces__rosidl_typesupport_fastrtps_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librcl_interfaces__rosidl_typesupport_fastrtps_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/librcl_interfaces__rosidl_typesupport_introspection_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librcl_interfaces__rosidl_typesupport_introspection_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/librmw_implementation.so
atom_core_logic_node: /opt/ros/dashing/lib/librmw.so
atom_core_logic_node: /opt/ros/dashing/lib/librcl_logging_noop.so
atom_core_logic_node: /opt/ros/dashing/lib/librosgraph_msgs__rosidl_generator_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librosgraph_msgs__rosidl_typesupport_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librosgraph_msgs__rosidl_typesupport_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/librosgraph_msgs__rosidl_typesupport_introspection_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librosgraph_msgs__rosidl_typesupport_introspection_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/librosgraph_msgs__rosidl_typesupport_fastrtps_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librosgraph_msgs__rosidl_typesupport_fastrtps_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/librcl_yaml_param_parser.so
atom_core_logic_node: /opt/ros/dashing/lib/libament_index_cpp.so
atom_core_logic_node: /usr/lib/libPocoFoundation.so.50
atom_core_logic_node: /opt/ros/dashing/lib/libconsole_bridge.so.0.4
atom_core_logic_node: /opt/ros/dashing/lib/libclass_loader.so
atom_core_logic_node: /opt/ros/dashing/lib/librcutils.so
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
atom_core_logic_node: /opt/ros/dashing/lib/libcv_bridge.so
atom_core_logic_node: /opt/ros/dashing/lib/libgeometry_msgs__rosidl_typesupport_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libgeometry_msgs__rosidl_typesupport_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libgeometry_msgs__rosidl_generator_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libgeometry_msgs__rosidl_typesupport_fastrtps_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libgeometry_msgs__rosidl_typesupport_fastrtps_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libgeometry_msgs__rosidl_typesupport_introspection_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libgeometry_msgs__rosidl_typesupport_introspection_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libsensor_msgs__rosidl_generator_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libsensor_msgs__rosidl_typesupport_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libsensor_msgs__rosidl_typesupport_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libsensor_msgs__rosidl_typesupport_introspection_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libsensor_msgs__rosidl_typesupport_introspection_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libsensor_msgs__rosidl_typesupport_fastrtps_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libsensor_msgs__rosidl_typesupport_fastrtps_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libbuiltin_interfaces__rosidl_typesupport_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libbuiltin_interfaces__rosidl_typesupport_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libbuiltin_interfaces__rosidl_generator_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libbuiltin_interfaces__rosidl_typesupport_fastrtps_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libbuiltin_interfaces__rosidl_typesupport_fastrtps_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libbuiltin_interfaces__rosidl_typesupport_introspection_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libbuiltin_interfaces__rosidl_typesupport_introspection_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/librosidl_typesupport_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librosidl_typesupport_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/librosidl_generator_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librosidl_typesupport_introspection_c.so
atom_core_logic_node: /opt/ros/dashing/lib/librosidl_typesupport_introspection_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libstd_msgs__rosidl_generator_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libstd_msgs__rosidl_typesupport_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libstd_msgs__rosidl_typesupport_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libstd_msgs__rosidl_typesupport_introspection_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libstd_msgs__rosidl_typesupport_introspection_cpp.so
atom_core_logic_node: /opt/ros/dashing/lib/libstd_msgs__rosidl_typesupport_fastrtps_c.so
atom_core_logic_node: /opt/ros/dashing/lib/libstd_msgs__rosidl_typesupport_fastrtps_cpp.so
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_face.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_text.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libpcre.so
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libz.so
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0
atom_core_logic_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0
atom_core_logic_node: CMakeFiles/atom_core_logic_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toor/Desktop/atom_ws/build/atom_logic/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable atom_core_logic_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/atom_core_logic_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/atom_core_logic_node.dir/build: atom_core_logic_node

.PHONY : CMakeFiles/atom_core_logic_node.dir/build

CMakeFiles/atom_core_logic_node.dir/requires: CMakeFiles/atom_core_logic_node.dir/src/main.cpp.o.requires
CMakeFiles/atom_core_logic_node.dir/requires: CMakeFiles/atom_core_logic_node.dir/src/FindLines.cpp.o.requires
CMakeFiles/atom_core_logic_node.dir/requires: CMakeFiles/atom_core_logic_node.dir/src/PID.cpp.o.requires

.PHONY : CMakeFiles/atom_core_logic_node.dir/requires

CMakeFiles/atom_core_logic_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/atom_core_logic_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/atom_core_logic_node.dir/clean

CMakeFiles/atom_core_logic_node.dir/depend:
	cd /home/toor/Desktop/atom_ws/build/atom_logic && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toor/Desktop/atom_ws/src/atom_logic /home/toor/Desktop/atom_ws/src/atom_logic /home/toor/Desktop/atom_ws/build/atom_logic /home/toor/Desktop/atom_ws/build/atom_logic /home/toor/Desktop/atom_ws/build/atom_logic/CMakeFiles/atom_core_logic_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/atom_core_logic_node.dir/depend

