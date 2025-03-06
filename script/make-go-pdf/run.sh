#!/bin/bash

#CM Script location: ${MLC_TMP_CURRENT_SCRIPT_PATH}

#To export any variable
#echo "VARIABLE_NAME=VARIABLE_VALUE" >>tmp-run-env.out

#${MLC_PYTHON_BIN_WITH_PATH} contains the path to python binary if "get,python" is added as a dependency

echo "Running: "
echo "${MLC_RUN_CMD}"
echo ""

if [[ ${MLC_FAKE_RUN} != "yes" ]]; then
  eval "${MLC_RUN_CMD}"
  test $? -eq 0 || exit 1
fi
