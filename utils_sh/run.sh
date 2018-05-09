#!/bin/bash

# info
on_sequoia=${1}
experiment=${2}
tool_name=${3}
video_name=${4}
frames_start=${5}
frames_end=${6}

# paths
if [ ${on_sequoia} -eq 1 ]
then
  exec_path='/sequoia/data2/zoli/software/pose-hg-demo/main_handtools.lua'
else
  exec_path='/Users/zoli/Work/pose-hg-demo/main_handtools.lua'
fi

# run
th ${exec_path} handtools ${tool_name} ${video_name}
