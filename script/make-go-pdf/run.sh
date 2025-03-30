#!/bin/bash

#To export any variable
#echo "VARIABLE_NAME=VARIABLE_VALUE" >>tmp-run-env.out

#${MLC_PYTHON_BIN_WITH_PATH} contains the path to python binary if "get,python" is added as a dependency


if [[ ${MLC_FAKE_RUN} != "yes" ]]; then
  echo "Running: "
  echo "${MLC_RUN_CMD}"
  echo ""
  eval "${MLC_RUN_CMD}"
  test $? -eq 0 || exit $?
fi
