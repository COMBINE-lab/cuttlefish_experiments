#!/bin/bash

tool=esscompress
vars_req=7

bin="/home/jamshed/ESSCompress/bin/essCompress"

input=${1}
k=${2}
min_count=${3}
threads=${4}
temp_dir=${5}
op_dir=${6}
log_file=${7}

if [[ ${#} -ne ${vars_req} ]]
then
    echo "For ${tool}, vars req.: ${vars_req} — -i, -k, -a, -t, working_dir, -o, log_file"
else
    cd ${temp_dir}  # To track intermediate disk-usage of interim BCALM run.

    cmd="/usr/bin/time ${bin} -i ${input} -k ${k} -a ${min_count} -t ${threads} -o ${op_dir} -u -v &> ${log_file}"
    
    echo "${cmd}"
    eval "${cmd}"

    ret_val=${?}
    if [[ ${ret_val} -ne 0 ]]
    then echo "Crashed with exit code: ${ret_val}"
        exit 1
    fi
fi