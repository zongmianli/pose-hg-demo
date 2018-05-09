#!/bin/bash

on_sequoia=${1}
experiment=${2}
tool_name=${3}

exec=1
if [ ${tool_name} = 'barbell' ]
then
  # barbell
  video_names=('barbell_0002' 'barbell_0003' 'barbell_0007' 'barbell_0008' 'barbell_0010')
  frames_start=('56' '18' '4' '27' '0')
  frames_end=('239' '164' '161' '169' '171')
elif [ ${tool_name} = 'carjack' ]
then
  # carjack
  video_names=('carjack_0001' 'carjack_0002' 'carjack_0003' 'carjack_0004' 'carjack_0005')
  frames_start=('13' '6' '0' '0' '2')
  frames_end=('152' '255' '124' '80' '82')
elif [ ${tool_name} = 'hammer' ]
then
  # hammer
  video_names=('hammer_0001' 'hammer_0003' 'hammer_0006' 'hammer_0007' 'hammer_0010')
  frames_start=('0' '0' '0' '0' '0')
  frames_end=('98' '97' '125' '78' '99')
elif [ ${tool_name} = 'scythe' ]
then
  # scythe
  video_names=('scythe_0001' 'scythe_0002' 'scythe_0003' 'scythe_0005' 'scythe_0006')
  frames_start=('0' '0' '0' '9' '0')
  frames_end=('185' '104' '114' '99' '138')
elif [ ${tool_name} = 'wrench' ]
then
  # wrench
  video_names=('wrench_0001' 'wrench_0002' 'wrench_0003' 'wrench_0009' 'wrench_0010')
  frames_start=('4' '0' '0' '0' '0')
  frames_end=('147' '138' '93' '116' '120')
else
  echo 'unknown tool_name!'
  exec=0
fi

if [ ${on_sequoia} -eq 1 ]
then
  run_path='/sequoia/data2/zoli/software/pose-hg-demo/utils_sh/run.sh'
else
  run_path='/Users/zoli/Work/pose-hg-demo/utils_sh/run.sh'
fi

if [ ${exec} -eq 1 ]
then
  for i in $(seq 0 4)
  do
    source ${run_path} \
    ${on_sequoia} ${experiment} ${tool_name} ${video_names[$i]} \
    ${frames_start[$i]} ${frames_end[$i]}
  done
fi
