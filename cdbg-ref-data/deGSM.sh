#!/bin/bash

\
driver=/home/jamshed/cuttlefish/experiments/scripts/deGSM.sh ;\
du_tracker=/home/jamshed/cuttlefish/experiments/scripts/peak-disk-usage.sh ;\
wrapper=/home/jamshed/cuttlefish/experiments/scripts/wrapper.sh ;\
\


## Human gut genomes
\
input_dir=/mnt/scratch4/genome-refs/human-gut-genomes/ ;\
output_dir=/mnt/scratch4/degsm/human-gut-genomes/ ;\
work_dir=/mnt/scratch7/deGSM/ ;\
log_dir=/mnt/scratch1/genome-refs/degsm/human-gut-genomes/ ;\
\
ulimit -s 65536 ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 27 1  8 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 27 1 16 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 55 1  8 128 '${output_dir}'/k55.degsm '${log_dir}'/k55-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 55 1 16 128 '${output_dir}'/k55.degsm '${log_dir}'/k55-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.peak_du' ;\
\


## 100-human
\
original_ip_dir=/bio1/10x/jamshed/cuttlefish/genome/100-human/ ;\
input_dir=/mnt/scratch4/genome-refs/100-human/ ;\
output_dir=/mnt/scratch4/degsm/100-human/ ;\
work_dir=/mnt/scratch7/deGSM/ ;\
log_dir=/mnt/scratch1/genome-refs/degsm/100-human/ ;\
\
ulimit -s 65536 ;\
mkdir ${input_dir}/packed/ ;\
find ${original_ip_dir} -type f > 100-humans.lst ;\
let counter=0 ;\
while read path; do
    cp "${path}" ${input_dir}/packed/${counter}.fa
    let "counter=counter+1"
done <100-humans.lst ;\
rm 100-humans.lst ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}'/packed/ 27 1  8 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}'/packed/ 27 1 16 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}'/packed/ 55 1  8 128 '${output_dir}'/k55.degsm '${log_dir}'/k55-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}'/packed/ 55 1 16 128 '${output_dir}'/k55.degsm '${log_dir}'/k55-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.peak_du' ;\
\
\
rm -rf ${input_dir}/packed/ ;\
\
