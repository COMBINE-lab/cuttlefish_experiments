#!/bin/bash

tool=cuttlefish-strict-mem
vars_req=8

bin="/home/jamshed/cf-read-dbg/build/src/cuttlefish"

ip_list=${1}
k=${2}
cutoff=${3}
threads=${4}
memory=${5} # in GB
temp_dir=${6}
op_prefix=${7}
log_file=${8}


if [[ ${#} -ne ${vars_req} ]]
then
    echo "For ${tool}, vars req.: ${vars_req} — -l, -k, -c, -t, -m, -w, -o, log_file"
else
    # remove previous output, if any
    rm -rf "${op_prefix}"*

    # execute
    cmd="/usr/bin/time ${bin} build --read -l ${ip_list} -k ${k} -c ${cutoff} -t ${threads} -m ${memory} -w ${temp_dir} -o ${op_prefix} &> ${log_file}"

    echo "${cmd}"
    eval "${cmd}"

    ret_val=${?}
    if [[ ${ret_val} -ne 0 ]]
    then echo "Crashed with exit code: ${ret_val}"
        rm "${temp_dir}"/*
        exit 1
    fi
fi
