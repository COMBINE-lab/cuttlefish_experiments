#!/bin/bash

tool=deGSM
vars_req=7

lib="/mnt/scratch7/deGSM/jellyfish-2.1.4/lib"
bin="/mnt/scratch7/deGSM/deGSM"
jf_path="/mnt/scratch7/deGSM/jellyfish-2.1.4/"

ip_dir=${1}
k=${2}
min_count=${3}
threads=${4}
memory=${5}
op_file=${6}
log_file=${7}

if [[ ${#} -ne ${vars_req} ]]
then
    echo "For ${tool}, vars req.: ${vars_req} — -k, -l, -t, -m, op_file, ip_dir, log_file"
else
    bin_dir=$(dirname ${bin})
    min_count_arg=$(if [ "${min_count}" -gt 1 ]; then echo "-l ${min_count}"; else echo ""; fi)
    zipped_arg=$(if [[ $(ls "${ip_dir}" | head -1) == *.gz ]]; then echo "-g"; else echo ""; fi)

    cmd="LD_LIBRARY_PATH=${lib} /usr/bin/time ${bin} -k ${k} ${min_count_arg} -t ${threads} -m ${memory}G ${zipped_arg} ${jf_path} ${op_file}.bwt ${ip_dir} &> ${log_file}.1"

    echo "${cmd}"
    eval "${cmd}"

    ret_val=${?}
    if [ ${ret_val} -ne 0 ]
    then echo "Crashed with exit code: ${ret_val}"
        rm "${bin_dir}"/kmer*
        exit 1
    fi


    cmd="/usr/bin/time ${bin_dir}/ubwt unipath ${op_file}.bwt -t ${threads} -o ${op_file}.fa &> ${log_file}.2"

    echo "${cmd}"
    eval "${cmd}"

    ret_val=${?}
    if [ ${ret_val} -ne 0 ]
    then echo "Crashed with exit code: ${ret_val}"
        exit 1
    fi

    rm "${bin_dir}"/edges.seq
    rm "${op_file}".bwt
fi
