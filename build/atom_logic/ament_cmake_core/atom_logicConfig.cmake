# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_atom_logic_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED atom_logic_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(atom_logic_FOUND FALSE)
  elseif(NOT atom_logic_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(atom_logic_FOUND FALSE)
  endif()
  return()
endif()
set(_atom_logic_CONFIG_INCLUDED TRUE)

# output package information
if(NOT atom_logic_FIND_QUIETLY)
  message(STATUS "Found atom_logic: 0.0.0 (${atom_logic_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'atom_logic' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message(WARNING "${_msg}")
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(atom_logic_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${atom_logic_DIR}/${_extra}")
endforeach()
