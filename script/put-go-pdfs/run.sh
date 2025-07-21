#!/bin/bash
function exit_if_error() {
  test $? -eq 0 || exit $?
}

function run() {
  echo "Running: "
  echo "$1"
  echo ""
  if [[ ${MLC_FAKE_RUN} != 'yes' ]]; then
    eval "$1"
    exit_if_error
  fi
}

run "$MLC_RCLONE_CONFIG_CMD"
run "$MLC_RCLONE_CONNECT_CMD"
#Add your run commands here...
run "$MLC_RUN_CMD"
if [ "$MLC_RUN_CMD1" ]; then
  run "$MLC_RUN_CMD1"
fi
