#!/bin/bash
on_sequoia=1
#experiment=${1}
experiment=test

tool_names=('barbell' 'carjack' 'hammer' 'scythe' 'wrench')

if [ ${on_sequoia} -eq 1 ]
then
  run_tool_path='/sequoia/data2/zoli/software/pose-hg-demo/utils_sh/run_tool.sh'
else
  run_tool_path='/Users/zoli/Work/pose-hg-demo/utils_sh/run_tool.sh'
fi

for i in $(seq 0 4)
do
  source ${run_tool_path} ${on_sequoia} ${experiment} ${tool_names[$i]}
done
