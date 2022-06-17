#!/bin/bash

tool=abyss-bloom-dbg
vars_req=8

bin="abyss-bloom-dbg"

# assembly_name=${1}
ip_dir=${1}
k=${2}
min_count=${3}
bf_size=${4}
bf_hash_num=${5}
threads=${6}
# temp_dir=${7}
op_file=${7}
log_file=${8}


if [[ ${#} -ne ${vars_req} ]]
then
    echo "For ${tool}, vars req.: ${vars_req} — ip_dir, k, kc, b, H, j, out, log_file"
else
    ip_files=$(find "${ip_dir}" -name "*.fastq.gz" | tr '\n' ' ')
    # ip_files=$(echo \'$(find ${ip_dir} -name "*.fastq.gz" | tr '\n' ' ')\')
    # export TMPDIR=${temp_dir}

    cmd="/usr/bin/time ${bin} -b${bf_size} -H${bf_hash_num} -j${threads} -k${k} --kc=${min_count} --out=${op_file} -v ${ip_files} &> ${log_file}"
    
    echo "${cmd}"
    eval "${cmd}"

    # echo "Command : abyss-pe -C ${out_dir} name=${assembly_name} in=${ip_files} k=${k} kc=${min_count} B=${bf_size}G H=${bf_hash_num} j=${threads} v=-v unitigs &> ${log_file}"
    
    # /usr/bin/time abyss-pe -C ${out_dir} name=${assembly_name} in=${ip_files} k=${k} kc=${min_count} B=${bf_size}G H=${bf_hash_num} j=${threads} v=-v unitigs &> ${log_file}

    ret_val=${?}
    if [ ${ret_val} -ne 0 ]
    then echo "Crashed with exit code: ${ret_val}"
        exit 1
    fi
fi
