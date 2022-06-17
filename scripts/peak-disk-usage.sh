#!/bin/bash

dir_name=${1}
log_file=${2}

peak_du=0
echo ${peak_du} > "${log_file}"

while true
do
    inotifywait --recursive --quiet --event modify,create,delete "${dir_name}" > /dev/null
    curr_du=$(du -s "${dir_name}" | egrep -o "[0-9]+" | head -1)
    peak_du=$(cat "${log_file}")

    if [ "${peak_du}" -lt "${curr_du}" ]
    then
        peak_du=${curr_du}
        echo "${peak_du}" > "${log_file}"
    fi
done
