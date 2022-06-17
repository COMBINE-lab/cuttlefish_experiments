#!/bin/bash

driver=/home/jamshed/cuttlefish/experiments/scripts/prophasm.sh

# Roundworm
\
input_list=/mnt/scratch6/genome-refs/roundworm/genome-roundworm.lst ;\
output_dir=/mnt/scratch6/prophasm/roundworm/ ;\
log_dir=/mnt/scratch1/genome-refs/prophasm/roundworm/ ;\
\
bash ${driver} ${input_list} 27 ${output_dir}/k27.prophasm ${log_dir}/k27.log ;\
\


# Human
\
input_list=/mnt/scratch6/genome-refs/human/genome-human.lst ;\
output_dir=/mnt/scratch6/prophasm/human/ ;\
log_dir=/mnt/scratch1/genome-refs/prophasm/human/ ;\
\
bash ${driver} ${input_list} 27 ${output_dir}/k27.prophasm ${log_dir}/k27.log ;\
\


# 7-human
\
input_list=/mnt/scratch6/genome-refs/7-human/genomes-7-human.lst ;\
output_dir=/mnt/scratch6/prophasm/7-human/ ;\
log_dir=/mnt/scratch1/genome-refs/prophasm/7-human/ ;\
\
bash ${driver} ${input_list} 27 ${output_dir}/k27.prophasm ${log_dir}/k27.log ;\
\
