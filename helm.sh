#!/bin/bash
. shmod

include github.com/dockcmd/shmod util.sh

exec_or_dryrun \
  $(docker_run) \
  $(docker_user) \
  $(docker_mount_home .cache) \
  $(docker_mount_home .config) \
  $(docker_workdir) \
  $(docker_image dcmd/helm v3.1.2) \
  "$@"