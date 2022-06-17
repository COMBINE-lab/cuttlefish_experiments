#!/bin/bash

driver=/home/jamshed/cuttlefish/experiments/scripts/bifrost.sh


## Human gut genomes
\
input_dir=/mnt/scratch4/genome-refs/human-gut-genomes/ ;\
input_list=/mnt/scratch4/genome-refs/human-gut-genomes/refs-gut-genomes.lst ;\
output_dir=/mnt/scratch7/bifrost/human-gut/ ;\
log_dir=/mnt/scratch1/genome-refs/bifrost/human-gut/ ;\
\
find ${input_dir} -name "*.gz" > ${input_list} ;\
\

# k = 27, 55
\
bash ${driver} ref ${input_list} 27  8 ${output_dir}/k27.bifrost ${log_dir}/k27-t8.rerun.log ;\
bash ${driver} ref ${input_list} 27 16 ${output_dir}/k27.bifrost ${log_dir}/k27-t16.rerun.log ;\
bash ${driver} ref ${input_list} 55  8 ${output_dir}/k55.bifrost ${log_dir}/k55-t8.rerun.log ;\
bash ${driver} ref ${input_list} 55 16 ${output_dir}/k55.bifrost ${log_dir}/k55-t16.rerun.log ;\
\
rm ${input_list} ;\
\


## 100-human
\
input_dir=/mnt/scratch4/genome-refs/100-human/ ;\
input_list=/mnt/scratch4/genome-refs/100-human/refs-100-human.lst ;\
output_dir=/mnt/scratch7/bifrost/100-human/ ;\
log_dir=/mnt/scratch1/genome-refs/bifrost/100-human/ ;\
\
find ${input_dir} -name "*.fa" > ${input_list} ;\
\

# k = 27, 55
\
bash ${driver} ref ${input_list} 27  8 ${output_dir}/k27.bifrost ${log_dir}/k27-t8.rerun.log ;\
bash ${driver} ref ${input_list} 27 16 ${output_dir}/k27.bifrost ${log_dir}/k27-t16.rerun.log ;\
bash ${driver} ref ${input_list} 55  8 ${output_dir}/k55.bifrost ${log_dir}/k55-t8.rerun.log ;\
bash ${driver} ref ${input_list} 55 16 ${output_dir}/k55.bifrost ${log_dir}/k55-t16.rerun.log ;\
\
rm ${input_list} ;\
\
