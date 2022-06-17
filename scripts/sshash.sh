#!/bin/bash

tool=sshash
vars_req=8

bin="/home/jamshed/sshash/build/build"

input=${1}
k=${2}
minimizer_len=${3}
output=${4}
temp_dir=${5}
log_file=${6}
mem_gb=${7}
cgroup=${8}

if [[ ${#} -ne ${vars_req} ]]
then
    echo "For ${tool}, vars req.: ${vars_req} — input, k, m, -o, -d, log_file, mem_gb, cgroup"
else
    echo $(( "${mem_gb}" * 1024 * 1024 * 1024 )) | sudo tee /sys/fs/cgroup/memory/"${cgroup}"/memory.limit_in_bytes
    cmd="cgexec -g memory:${cgroup} /usr/bin/time ${bin} ${input} ${k} ${minimizer_len} -o ${output} -d ${temp_dir} --verbose &> ${log_file}"

    echo "${cmd}"
    eval "${cmd}"

    ret_val=${?}
    if [[ ${ret_val} -ne 0 ]]
    then echo "Crashed with exit code: ${ret_val}"
        exit 1
    fi
fi
