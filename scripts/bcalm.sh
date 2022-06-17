#!/bin/bash

tool=bcalm
vars_req=10

bin="/home/jamshed/bcalm/build/bcalm"

ip_list=${1}
k=${2}
min_count=${3}
threads=${4}
memory=${5} # in MB
disk=${6}   # in MB
temp_dir=${7}
op_file=${8}
log_file=${9}
final_op=${10}  # relating to the issue that bcalm2 also writes temporary files in the output dir.; got to track that too

if [[ ${#} -ne ${vars_req} ]]
then
    echo "For ${tool}, vars req.: ${vars_req} — -in, -kmer-size, -abundance-min, -nb-cores, -max-memory, -out-tmp, -max-disk, -out, log_file"
else
    # cd ${temp_dir} # Setting bcalm 2's working directory / max-disk usage turned out to be inconsistent

    cmd="/usr/bin/time ${bin} -in ${ip_list} -kmer-size ${k} -abundance-min ${min_count} -nb-cores ${threads} -max-memory ${memory} -max-disk ${disk} -out-tmp ${temp_dir} -out ${op_file} &> ${log_file}"

    echo "${cmd}"
    eval "${cmd}"

    ret_val=${?}
    if [ ${ret_val} -ne 0 ]
    then echo "Crashed with exit code: ${ret_val}"
        exit 1
    fi

    rm "${op_file}".unitigs.fa.glue.*
    mv "${op_file}".unitigs.fa "${final_op}"
fi
