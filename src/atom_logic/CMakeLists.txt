cmake_minimum_required(VERSION 3.5)
project(atom_logic)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(image_transport REQUIRED)
find_package(cv_bridge REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(OpenCV REQUIRED)
find_package(rosidl_typesupport_cpp REQUIRED)  # Added to resolve the missing type support error

include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(atom_core_logic_node 
  "src/main.cpp"
  "src/FindLines.cpp"
  "src/PID.cpp"
  # "src/WebCamStream.cpp"
)

ament_target_dependencies(
  atom_core_logic_node
  "rclcpp"
  "image_transport"
  "cv_bridge"
  "sensor_msgs"
  "std_msgs"
  "OpenCV"
)

target_link_libraries(atom_core_logic_node
  ${OpenCV_LIBS}
  tinyxml2  # Add the missing library
)
include_directories(
  include
  ${OpenCV_INCLUDE_DIRS}
)
install(TARGETS
    atom_core_logic_node
  DESTINATION lib/${PROJECT_NAME}
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
