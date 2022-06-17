#!/bin/bash

ip_list=${1}
cutoff=${2}
threads=${3}
temp_dir=${4}
op_dir=${5}
log_dir=${6}
op_dump_dir=${7}

for k in {27,41,55,69,83,97,111,125}
do
    driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh
    bash ${driver} "${ip_list}" "${k}" "${cutoff}" "${threads}" "${temp_dir}" "${op_dir}"/k"${k}"-t"${threads}".default.cf "${log_dir}"/k"${k}"-t"${threads}".default.log

    driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh
    bash ${driver} "${ip_list}" "${k}" "${cutoff}" "${threads}" "${temp_dir}" "${op_dir}"/k"${k}"-t"${threads}".unrestrict.cf "${log_dir}"/k"${k}"-t"${threads}".unrestrict.log

    mv "${op_dir}"/k"${k}"-t"${threads}".* "${op_dump_dir}"
done
