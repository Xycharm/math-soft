cmake_minimum_required(VERSION 3.10)
project(MyProject)

# Set the C++ standard to C++11
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add the main.cpp file
set(SOURCES main.cpp)

# Add an executable target
add_executable(MyProject ${SOURCES})

# Specify the installation directory for the executable
set(INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/bin)

# Specify the installation directory for the header files
set(HEADER_INSTALL_DIR ${CMAKE_INSTALL_PREFIX}/include)

# Install the executable to the specified directory
install(TARGETS MyProject DESTINATION ${INSTALL_DIR})

# Find and configure Doxygen
find_package(Doxygen)
if(DOXYGEN_FOUND)
  # Set input and output directories for Doxygen documentation
  set(DOXYGEN_INPUT_DIR ${CMAKE_SOURCE_DIR})
  set(DOXYGEN_OUTPUT_DIR ${CMAKE_BINARY_DIR}/docs)

  # Create a custom target to generate Doxygen documentation
  add_custom_target(docs
    COMMAND ${DOXYGEN_EXECUTABLE} ${CMAKE_SOURCE_DIR}/Doxyfile
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    COMMENT "Generating Doxygen documentation"
    VERBATIM)

  # Install the generated documentation to the specified directory
  install(DIRECTORY ${DOXYGEN_OUTPUT_DIR} DESTINATION ${CMAKE_INSTALL_PREFIX})
endif()

# Install the header file to the specified directory
install(FILES Chicken.h DESTINATION ${HEADER_INSTALL_DIR})

