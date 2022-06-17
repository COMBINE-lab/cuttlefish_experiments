#!/bin/bash

driver=/home/jamshed/cuttlefish/experiments/scripts/k-scale.sh
ip_list=/mnt/scratch4/seq-reads/human/reads-hg004.lst
cutoff=5
threads=8
temp_dir=/mnt/scratch4/cuttlefish/
op_dir=/mnt/scratch7/cuttlefish/structural/k-scaling/
log_dir=/mnt/scratch1/seq-reads/structural/k-scaling/
op_dump_dir=/bio2/cdbg-output/structural/k-scaling/

bash ${driver} ${ip_list} ${cutoff} ${threads} ${temp_dir} ${op_dir} ${log_dir} ${op_dump_dir}
