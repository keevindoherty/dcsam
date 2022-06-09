{include_boost}

#include <pybind11/eigen.h>
#include <pybind11/stl_bind.h>
#include <pybind11/pybind11.h>
#include <pybind11/operators.h>
#include <pybind11/functional.h>
#include <pybind11/iostream.h>
#include "gtsam/base/utilities.h"  // for RedirectCout.

{includes}
#include <boost/serialization/export.hpp>

{boost_class_export}

{holder_type}

#include "dcsam/preamble/{module_name}.h"

using namespace std;

namespace py = pybind11;

{submodules}

{module_def} {{
    m_.doc() = "pybind11 wrapper of {module_name}";

{submodules_init}

{wrapped_namespace}

#include "dcsam/specializations/{module_name}.h"

}}

