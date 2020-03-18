#!/bin/bash
. shmod

include github.com/dockcmd/shmod util.sh

exec_or_dryrun \
  $(docker_run) \
  --mount type=bind,source=$HOME/.config,target=/root/.config,consistency=delegated \
  $(docker_workdir) \
  $(docker_image dcmd/helm v3.1.2) \
  "$@"