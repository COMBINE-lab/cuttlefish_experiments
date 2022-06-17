#!/bin/bash

tool=prophasm
vars_req=4

bin="/home/jamshed/prophasm/prophasm"

ip_list=${1}
k=${2}
op_file=${3}
log_file=${4}

if [[ ${#} -ne ${vars_req} ]]
then
    echo "For ${tool}, vars req.: ${vars_req} — -i, -k, -o, log_file"
else
    # collect the input file names into the command
    io_paths=""
    while read file_name
    do
        io_paths="${io_paths} -i ${file_name} -o ${op_file}"
    done < "${ip_list}"

    # execute
    cmd="/usr/bin/time ${bin} -k ${k} $(echo ${io_paths}) &> ${log_file}"

    echo "${cmd}"
    eval "${cmd}"

    ret_val=${?}
    if [[ ${ret_val} -ne 0 ]]
    then echo "Crashed with exit code: ${ret_val}"
        exit 1
    fi
fi