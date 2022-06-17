#!/bin/bash

\
driver=/home/jamshed/cuttlefish/experiments/scripts/bcalm.sh ;\
du_tracker=/home/jamshed/cuttlefish/experiments/scripts/peak-disk-usage.sh ;\
wrapper=/home/jamshed/cuttlefish/experiments/scripts/wrapper.sh ;\
\

# memory: (approx_kmer_count * 9.7) / (8 * 1024^2) + size_of_kmc_pre_file_in_MB + threads_count * 16
# disk: as much as available


## Human gut genomes
\
input_dir=/mnt/scratch4/genome-refs/human-gut-genomes/ ;\
input_list=/mnt/scratch4/genome-refs/human-gut-genomes/refs-gut-genomes.lst ;\
work_dir=/mnt/scratch7/bcalm2/ ;\
output_dir=/mnt/scratch7/bcalm2/ ;\
log_dir=/mnt/scratch1/genome-refs/bcalm/human-gut-genomes/ ;\
final_op_dir=/mnt/scratch4/bcalm2/human-gut-genomes/ ;\
\
find ${input_dir} -name "*.fna.gz" > ${input_list} ;\
\

# k = 27, 55
\
bash ${wrapper} \
'bash '${driver}'/bcalm.sh '${input_list}' 27 1  8 15358 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t8.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}'/bcalm.sh '${input_list}' 27 1 16 15486 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t16.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}'/bcalm.sh '${input_list}' 55 1  8 20885 3512730 '${work_dir}' '${output_dir}'/k55.bcalm '${log_dir}'/k55-t8.log '${final_op_dir}'/k55.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}'/bcalm.sh '${input_list}' 55 1 16 21013 3512730 '${work_dir}' '${output_dir}'/k55.bcalm '${log_dir}'/k55-t16.log '${final_op_dir}'/k55.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.peak_du' ;\
\
rm ${input_list} ;\
\


## 100-human
\
input_dir=/mnt/scratch4/genome-refs/100-human/ ;\
input_list=/mnt/scratch4/genome-refs/100-human/refs-100-human.lst ;\
work_dir=/mnt/scratch7/bcalm2/ ;\
output_dir=/mnt/scratch7/bcalm2/ ;\
log_dir=/mnt/scratch1/genome-refs/bcalm/100-human/ ;\
final_op_dir=/mnt/scratch4/bcalm2/100-human/ ;\
\
find ${input_dir} -name "*.fa" > ${input_list} ;\
\

# k = 27, 55
\
bash ${wrapper} \
'bash '${driver}'/bcalm.sh '${input_list}' 27 1  8 28029 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t8.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}'/bcalm.sh '${input_list}' 27 1 16 28157 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t16.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}'/bcalm.sh '${input_list}' 55 1  8 57127 3512730 '${work_dir}' '${output_dir}'/k55.bcalm '${log_dir}'/k55-t8.log '${final_op_dir}'/k55.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}'/bcalm.sh '${input_list}' 55 1 16 57255 3512730 '${work_dir}' '${output_dir}'/k55.bcalm '${log_dir}'/k55-t16.log '${final_op_dir}'/k55.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.peak_du' ;\
\
rm ${input_list} ;\
\


## Bacterial archive
\
input_dir=/mnt/scratch4/genome-refs/bacteria/ ;\
input_list=/mnt/scratch4/genome-refs/bacteria/refs-bacteria.lst ;\
work_dir=/mnt/scratch7/bcalm2/ ;\
output_dir=/mnt/scratch7/bcalm2/ ;\
log_dir=/mnt/scratch1/genome-refs/bcalm/100-human/ ;\
final_op_dir=/mnt/scratch4/bcalm2/100-human/ ;\
\
find ${input_dir} -name "*.fa.gz" > ${input_list} ;\
\

# k = 27, 55
\
bash ${wrapper} \
'bash '${driver}'/bcalm.sh '${input_list}' 27 1 16 49075 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t16.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}'/bcalm.sh '${input_list}' 55 1 16 60583 3512730 '${work_dir}' '${output_dir}'/k55.bcalm '${log_dir}'/k55-t16.log '${final_op_dir}'/k55.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.peak_du' ;\
\
rm ${input_list} ;\
\
