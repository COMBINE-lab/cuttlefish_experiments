#!/bin/bash

seqtk=seqtk

ip_list=$1
coverage=$2
sampling_cov=$3
op_dir=$4

frac=$(echo "scale=2; ${sampling_cov}/${coverage}" | bc)

while read path; do
    file_name=$(echo "$path" | sed -r "s/.+\/(.+)\..+/\1/")
    ${seqtk} sample "${path}" 0"${frac}" | gzip > "${op_dir}"/"${file_name}".downsampled_"${sampling_cov}".gz
done <"${ip_list}"
