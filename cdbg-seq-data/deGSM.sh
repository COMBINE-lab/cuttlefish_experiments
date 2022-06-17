#!/bin/bash

\
driver=/home/jamshed/cuttlefish/experiments/scripts/deGSM.sh ;\
du_tracker=/home/jamshed/cuttlefish/experiments/scripts/peak-disk-usage.sh ;\
wrapper=/home/jamshed/cuttlefish/experiments/scripts/wrapper.sh ;\
\

## Human
\
input_dir=/mnt/scratch4/seq-reads/human/HG004/ ;\
output_dir=/mnt/scratch4/degsm/human/HG004/ ;\
work_dir=/mnt/scratch7/deGSM/ ;\
log_dir=/mnt/scratch1/seq-reads/degsm/human/HG004/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 27 14  8 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 27 14 16 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 55  9  8 128 '${output_dir}'/k55.degsm '${log_dir}'/k55-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 55  9 16 128 '${output_dir}'/k55.degsm '${log_dir}'/k55-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.peak_du' ;\
\


## Human RNA-seq
\
input_dir=/mnt/scratch5/seq-reads/human/PRJEB3365/ ;\
output_dir=/mnt/scratch5/degsm/human/PRJEB3365/ ;\
work_dir=/mnt/scratch7/deGSM/ ;\
log_dir=/mnt/scratch1/seq-reads/degsm/human/PRJEB3365/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 27 2  8 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 27 2 16 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\


## Gut microbiome
\
input_dir=/mnt/scratch4/seq-reads/metagenomic/human-gut/PRJEB33098/ ;\
output_dir=/mnt/scratch4/degsm/metagenomic/human-gut/PRJEB33098/ ;\
work_dir=/mnt/scratch7/deGSM/ ;\
log_dir=/mnt/scratch1/seq-reads/degsm/metagenomic/human-gut/PRJEB33098/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 27 2 16 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 55 2 16 128 '${output_dir}'/k55.degsm '${log_dir}'/k55-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.peak_du' ;\
\


## Soil
\
input_dir=/mnt/scratch4/seq-reads/metagenomic/soil/Iowa_Corn/ ;\
output_dir=/mnt/scratch4/degsm/metagenomic/soil/Iowa_Corn/ ;\
work_dir=/mnt/scratch7/deGSM/ ;\
log_dir=/mnt/scratch1/seq-reads/degsm/metagenomic/soil/Iowa_Corn/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 27 2 16 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 55 2 16 128 '${output_dir}'/k55.degsm '${log_dir}'/k55-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.peak_du' ;\
\


## White spruce
\
input_dir=/mnt/scratch4/seq-reads/white-spruce/SRA056234/ ;\
output_dir=/mnt/scratch4/degsm/white-spruce/SRA056234/ ;\
work_dir=/mnt/scratch7/deGSM/ ;\
log_dir=/mnt/scratch1/seq-reads/degsm/white-spruce/SRA056234/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 27 11 16 128 '${output_dir}'/k27.degsm '${log_dir}'/k27-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_dir}' 55  7 16 128 '${output_dir}'/k55.degsm '${log_dir}'/k55-t16.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.peak_du' ;\
\
