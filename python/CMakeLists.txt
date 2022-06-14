find_package(gtwrap)

set(PROJECT_MODULE_NAME "dcsam")

set(interface_files ${PROJECT_SOURCE_DIR}/src/${PROJECT_NAME}.i)

set(DCSAM_PYTHON_BUILD_DIRECTORY ${PROJECT_BINARY_DIR}/python)

# Set the path for the DCSAM python module
set(DCSAM_MODULE_PATH ${DCSAM_PYTHON_BUILD_DIRECTORY}/dcsam)

# Set the path for the DCSAM python module
set(DCSAM_PY_MODULE_PATH ${PROJECT_SOURCE_DIR}/build/python)

# Copy all python files to build folder.
copy_directory("${CMAKE_CURRENT_SOURCE_DIR}/dcsam"
        "${DCSAM_MODULE_PATH}")

pybind_wrap(${PROJECT_NAME}_py # target
            "${interface_files}" # list of interface header files
            "${PROJECT_NAME}.cpp" # the generated cpp
            "${PROJECT_NAME}" # module_name
            "${PROJECT_MODULE_NAME}" # top namespace in the cpp file e.g. gtsam
            "${ignore}" # ignore classes
            ${PROJECT_SOURCE_DIR}/python/dcsam/${PROJECT_NAME}.tpl # the wrapping template file
            ${PROJECT_NAME} # libs
            "${PROJECT_NAME};gtsam" # dependencies
            ON # use boost
            )

add_custom_target(
  python-install
  COMMAND ${PYTHON_EXECUTABLE} ${DCSAM_PY_MODULE_PATH}/setup.py install
  DEPENDS ${PROJECT_NAME}_py
  WORKING_DIRECTORY ${DCSAM_PY_MODULE_PATH})
