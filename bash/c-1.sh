#!/bin/bash
# vim:tw=0 fdm=marker:

if [[ -d /Volumes/Work/dev/general/okl-common/bin ]]
then
  PATH=$PATH:/Volumes/Work/dev/general/okl-common/bin
  if [[ -f /Volumes/Work/dev/general/okl-common/bin/bash-startup.sh ]]
  then
    source /Volumes/Work/dev/general/okl-common/bin/bash-startup.sh
  fi
fi
