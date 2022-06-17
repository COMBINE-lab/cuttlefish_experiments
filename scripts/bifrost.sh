#!/bin/bash

tool=bifrost
vars_req=6

bin="/home/jamshed/bifrost/build/src/Bifrost"

ip_type=${1}
ip_list=${2}
k=${3}
threads=${4}
op_file=${5}
log_file=${6}

if [[ ${#} -ne ${vars_req} ]]
then
    echo "For ${tool}, vars req.: ${vars_req} — ip_type, ip_list, -k, -t, -o, log_file"
else
    # Installation for appropriate `k`
    max_k=$(if [ "$k" -lt 32 ]; then echo "32"; elif [ "$k" -lt 64 ]; then echo "64"; elif [ "$k" -lt 96 ]; then echo "96"; else echo "128"; fi)
    cd /home/jamshed/bifrost/build/ && rm -rf * && cmake -DMAX_KMER_SIZE="${max_k}" ..
    make -j "${threads}"
    cd

    # Execution
    ip_type_arg=$(if [ "${ip_type}" = "ref" ]; then echo "r"; else echo "s"; fi)

    cmd="/usr/bin/time ${bin} build -${ip_type_arg} ${ip_list} -k ${k} -t ${threads} -o ${op_file} -v &> ${log_file}"

    echo "${cmd}"
    eval "${cmd}"

    ret_val=${?}
    if [ ${ret_val} -ne 0 ]
    then echo "Crashed with exit code: ${ret_val}"
        exit 1
    fi
fi
