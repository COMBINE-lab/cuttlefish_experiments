#!/bin/bash

tool=ntcard
vars_req=4

bin="/home/jamshed/ntCard/ntcard"

ip_dir=${1}
k=${2}
op_dir=${3}
threads=${4}

if [[ ${#} -ne ${vars_req} ]]
then
    echo "For ${tool}, vars req.: ${vars_req} — -k, -t, -p, @ip_list"
else
    find "${ip_dir}" -name "*.gz" > ./reads.lst

    cmd="${bin} -k${k} -t${threads} -p ${op_dir} @./reads.lst"
    
    echo "${cmd}"
    eval "${cmd}"

    rm ./reads.lst
fi
