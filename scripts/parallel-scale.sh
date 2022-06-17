#!/bin/bash

ip_list=${1}
k=${2}
cutoff=${3}
max_threads=${4}
temp_dir=${5}
op_dir=${6}
log_dir=${7}
op_dump_dir=${8}

bash /home/jamshed/cuttlefish/scripts/read-dbg/cuttlefish-default.sh "$ip_list" "$k" "$cutoff" "$max_threads" "$temp_dir" "$op_dir"/k"$k".validation.default.cf "$log_dir"/k"$k".validation.default.log

for thread in $(seq "${max_threads}" -1 1)
do
    bash /home/jamshed/cuttlefish/scripts/read-dbg/cuttlefish-default.sh "$ip_list" "$k" "$cutoff" "$thread" "$temp_dir" "$op_dir"/k"$k"-t"$thread".default.1.cf "$log_dir"/k"$k"-t"$thread".default.1.log
    
    bash /home/jamshed/cuttlefish/scripts/read-dbg/cuttlefish-default.sh "$ip_list" "$k" "$cutoff" "$thread" "$temp_dir" "$op_dir"/k"$k"-t"$thread".default.2.cf "$log_dir"/k"$k"-t"$thread".default.2.log
done

mv "$op_dir"/k"$k"-t* "${op_dump_dir}"
