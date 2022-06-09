find_package(gtwrap)

set(interface_files ${PROJECT_SOURCE_DIR}/cpp/${PROJECT_NAME}.h)

pybind_wrap(${PROJECT_NAME}_py # target
            "${interface_files}" # list of interface header files
            "${PROJECT_NAME}.cpp" # the generated cpp
            "${PROJECT_NAME}" # module_name
            "${PROJECT_MODULE_NAME}" # top namespace in the cpp file e.g. gtsam
            "${ignore}" # ignore classes
            ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.tpl # the wrapping template file
            ${PROJECT_NAME} # libs
            "${PROJECT_NAME}" # dependencies
            ON # use boost
            )
