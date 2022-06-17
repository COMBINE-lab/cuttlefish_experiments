#!/bin/bash

driver=/home/jamshed/cuttlefish/experiments/scripts/bifrost.sh


## Human
\
input_list=/mnt/scratch4/seq-reads/human/reads-hg004.lst ;\
output_dir=/mnt/scratch7/bifrost/human/HG004/ ;\
log_dir=/mnt/scratch1/seq-reads/bifrost/human/HG004/ ;\
\
bash ${driver} read ${input_list} 27  8 ${output_dir}/k27.bifrost ${log_dir}/k27-t8.rerun.log ;\
bash ${driver} read ${input_list} 27 16 ${output_dir}/k27.bifrost ${log_dir}/k27-t16.rerun.log ;\
bash ${driver} read ${input_list} 55  8 ${output_dir}/k55.bifrost ${log_dir}/k55-t8.rerun.log ;\
bash ${driver} read ${input_list} 55 16 ${output_dir}/k55.bifrost ${log_dir}/k55-t16.rerun.log ;\
\


## Human RNA-seq
\
input_list=/mnt/scratch3/seq-reads/human/reads-prjeb3365.lst ;\
output_dir=/mnt/scratch6/bifrost/human/PRJEB3365/ ;\
log_dir=/mnt/scratch1/seq-reads/bifrost/human/PRJEB3365/ ;\
\
bash ${driver} read ${input_list} 27 8 ${output_dir}/k27.bifrost ${log_dir}/k27-t8.log ;\
bash ${driver} read ${input_list} 27 16 ${output_dir}/k27.bifrost ${log_dir}/k27-t16.log ;\
bash ${driver} read ${input_list} 27 16 ${output_dir}/k27.bifrost ${log_dir}/k27-t16.rerun.log ;\
bash ${driver} read ${input_list} 27 16 ${output_dir}/k27.bifrost ${log_dir}/k27-t16.rerun.log ;\
\


## Gut microbiome
\
input_list=/mnt/scratch4/seq-reads/metagenomic/human-gut/reads-prjeb33098.lst ;\
output_dir=/mnt/scratch7/bifrost/metagenomic/human-gut/PRJEB33098/ ;\
log_dir=/mnt/scratch1/seq-reads/bifrost/metagenomic/human-gut/PRJEB33098/ ;\
\
bash ${driver} read ${input_list} 27 16 ${output_dir}/k27.bifrost ${log_dir}/k27-t16.rerun.log ;\
bash ${driver} read ${input_list} 55 16 ${output_dir}/k55.bifrost ${log_dir}/k55-t16.rerun.log ;\
\


## Soil
\
input_list=/mnt/scratch4/seq-reads/metagenomic/soil/reads-iowa-corn.lst ;\
output_dir=/mnt/scratch7/bifrost/metagenomic/soil/Iowa_Corn/ ;\
log_dir=/mnt/scratch1/seq-reads/bifrost/metagenomic/soil/Iowa_Corn/ ;\
\
bash ${driver} read ${input_list} 27 16 ${output_dir}/k27.bifrost ${log_dir}/k27-t16.rerun.log ;\
bash ${driver} read ${input_list} 55 16 ${output_dir}/k55.bifrost ${log_dir}/k55-t16.rerun.log ;\
\
