#!/bin/bash

#CM Script location: ${CM_TMP_CURRENT_SCRIPT_PATH}

#To export any variable
#echo "VARIABLE_NAME=VARIABLE_VALUE" >>tmp-run-env.out

#${CM_PYTHON_BIN_WITH_PATH} contains the path to python binary if "get,python" is added as a dependency

echo "Running: "
echo "${CM_RUN_CMD}"
echo ""

if [[ ${CM_FAKE_RUN} != "yes" ]]; then
  eval "${CM_RUN_CMD}"
  test $? -eq 0 || exit 1
fi
