#!/bin/bash

\
driver=/home/jamshed/cuttlefish/experiments/scripts//bcalm.sh ;\
du_tracker=/home/jamshed/cuttlefish/experiments/scripts/peak-disk-usage.sh ;\
wrapper=/home/jamshed/cuttlefish/experiments/scripts/wrapper.sh ;\
\

# memory: (approx_kmer_count * 9.7) / (8 * 1024^2) + size_of_kmc_pre_file_in_MB + threads_count * 16
# disk: as much as available


## Human

\
input_list=/mnt/scratch4/seq-reads/human/reads-hg004.lst ;\
work_dir=/mnt/scratch7/bcalm2/human/PRJEB3365/ ;\
output_dir=/mnt/scratch7/bcalm2/human/PRJEB3365/ ;\
log_dir=/mnt/scratch1/seq-reads/bcalm/human/PRJEB3365/ ;\
final_op_dir=/mnt/scratch5/bcalm2/human/PRJEB3365/ ;\
\

# k = 27, 55
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 27 14 8 4024 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t8.rerun.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.rerun.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 27 14 16 4152 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t16.rerun.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.rerun.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 55 9 8 4460 3512730 '${work_dir}' '${output_dir}'/k55.bcalm '${log_dir}'/k55-t8.rerun.log '${final_op_dir}'/k55.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.rerun.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 55 9 16 4588 3512730 '${work_dir}' '${output_dir}'/k55.bcalm '${log_dir}'/k55-t16.rerun.log '${final_op_dir}'/k55.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.rerun.peak_du' ;\
\


## Human RNA-seq
\
input_list=/mnt/scratch5/seq-reads/human/reads-prjeb3365.lst ;\
work_dir=/mnt/scratch7/bcalm2/human/PRJEB3365/ ;\
output_dir=/mnt/scratch7/bcalm2/human/PRJEB3365/ ;\
log_dir=/mnt/scratch1/seq-reads/bcalm/human/PRJEB3365/ ;\
final_op_dir=/mnt/scratch5/bcalm2/human/PRJEB3365/ ;\
\

# k = 27
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 27 2 8 3086 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t8.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 27 2 8 3086 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t16.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.peak_du' ;\
\


## Gut microbiome
\
input_list=/mnt/scratch4/seq-reads/metagenomic/human-gut/reads-prjeb33098.lst ;\
work_dir=/mnt/scratch7/bcalm2/metagenomic/human-gut/PRJEB33098/ ;\
output_dir=/mnt/scratch7/bcalm2/metagenomic/human-gut/PRJEB33098/ ;\
log_dir=/mnt/scratch1/seq-reads/bcalm/metagenomic/human-gut/PRJEB33098/ ;\
final_op_dir=/mnt/scratch4/bcalm2/metagenomic/human-gut/PRJEB33098/ ;\
\

# k = 27, 55
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 27 2 16 3500 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t16.rerun.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.rerun.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_list}'  55 2 16 4109 3512730 '${work_dir}' '${output_dir}'/k55.bcalm '${log_dir}'/k55-t16.rerun.log '${final_op_dir}'/k55.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.rerun.peak_du' ;\
\


## Soil
\
input_list=/mnt/scratch4/seq-reads/metagenomic/soil/reads-iowa-corn.lst ;\
work_dir=/mnt/scratch7/bcalm2/metagenomic/soil/Iowa_Corn/ ;\
output_dir=/mnt/scratch7/bcalm2/metagenomic/soil/Iowa_Corn/ ;\
log_dir=/mnt/scratch1/seq-reads/bcalm/metagenomic/soil/Iowa_Corn/ ;\
final_op_dir=/mnt/scratch4/bcalm2/metagenomic/soil/Iowa_Corn/ ;\
\

# k = 27, 55
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 27 2 16 19720 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t16.rerun.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.rerun.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 55 2 16 11386 3512730 '${work_dir}' '${output_dir}'/k55.bcalm '${log_dir}'/k55-t16.rerun.log '${final_op_dir}'/k55.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'k55-t16.rerun.peak_du' ;\
\


## White spruce
\
input_list=/mnt/scratch4/seq-reads/white-spruce/reads-sra056234.lst ;\
work_dir=/mnt/scratch7/bcalm2/white-spruce/SRA056234/ ;\
output_dir=/mnt/scratch7/bcalm2/white-spruce/SRA056234/ ;\
log_dir=/mnt/scratch1/seq-reads/bcalm/white-spruce/ ;\
final_op_dir=/mnt/scratch4/bcalm2/white-spruce/SRA056234/ ;\
\

# k = 27, 55
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 55 7 16 24266 3512730 '${work_dir}' '${output_dir}'/k55.bcalm '${log_dir}'/k55-t16.rerun.log '${final_op_dir}'/k55.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t16.rerun.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 27 11 16 14202 3512730 '${work_dir}' '${output_dir}'/k27.bcalm '${log_dir}'/k27-t16.rerun.log '${final_op_dir}'/k27.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t16.rerun.peak_du' ;\
\


## Human (cutoff = 2)
\
input_list=/mnt/scratch4/seq-reads/human/reads-hg004.lst ;\
work_dir=/mnt/scratch7/bcalm2/human/HG004/ ;\
output_dir=/mnt/scratch7/bcalm2/human/HG004/ ;\
log_dir=/mnt/scratch1/seq-reads/bcalm/human/HG004/ ;\
final_op_dir=/mnt/scratch4/bcalm2/human/HG004/ ;\
\

# k = 27, 55; cutoff = 2
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 27 2 8 3778 3512730 '${work_dir}' '${output_dir}'/k27-c2.bcalm '${log_dir}'/k27-c2-t8.log '${final_op_dir}'/k27-c2.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-c2-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 27 2 16 3906 3512730 '${work_dir}' '${output_dir}'/k27-c2.bcalm '${log_dir}'/k27-c2-t16.log '${final_op_dir}'/k27-c2.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-c2-t16.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 55 2 8 4091 3512730 '${work_dir}' '${output_dir}'/k55-c2.bcalm '${log_dir}'/k55-c2-t8.log '${final_op_dir}'/k55-c2.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-c2-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input_list}' 55 2 16 4219 3512730 '${work_dir}' '${output_dir}'/k55-c2.bcalm '${log_dir}'/k55-c2-t16.log '${final_op_dir}'/k55-c2.bcalm' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-c2-t16.peak_du' ;\
\
