#!/bin/bash


### Whole-genome reference sequences

## Roundworm
\
input_list=/mnt/scratch4/genome-refs/roundworm/ref-roundworm.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/path-cover/refs/roundworm/ ;\
log_dir=/mnt/scratch1/genome-refs/cuttlefish/path-cover/roundworm/ ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.default.log ;\
\
bash ${driver} ${input_list} 27 1 1 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t1.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.unrestrict.log ;\
\
bash ${driver} ${input_list} 27 1 1 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t1.unrestrict.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.default.log ;\
\
bash ${driver} ${input_list} 55 1 1 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t1.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.unrestrict.log ;\
\
bash ${driver} ${input_list} 55 1 1 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t1.unrestrict.log ;\
\


# Human
\
input_list=/mnt/scratch4/genome-refs/human/ref-human.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/path-cover/refs/human/ ;\
log_dir=/mnt/scratch1/genome-refs/cuttlefish/path-cover/human/ ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.default.log ;\
\
bash ${driver} ${input_list} 27 1 1 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t1.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.unrestrict.log ;\
\
bash ${driver} ${input_list} 27 1 1 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t1.unrestrict.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.default.log ;\
\
bash ${driver} ${input_list} 55 1 1 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t1.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.unrestrict.log ;\
\
bash ${driver} ${input_list} 55 1 1 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t1.unrestrict.log ;\
\


# 7-human
\
input_list=/mnt/scratch4/genome-refs/7-human/refs-7-human.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/path-cover/refs/7-human/ ;\
log_dir=/mnt/scratch1/genome-refs/cuttlefish/path-cover/7-human/ ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.default.log ;\
\
bash ${driver} ${input_list} 27 1 1 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t1.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.unrestrict.log ;\
\
bash ${driver} ${input_list} 27 1 1 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t1.unrestrict.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.default.log ;\
\
bash ${driver} ${input_list} 55 1 1 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t1.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.unrestrict.log ;\
\
bash ${driver} ${input_list} 55 1 1 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t1.unrestrict.log ;\
\



# Sequencing read sets


# Roundworm reads
\
input_list=/mnt/scratch4/seq-reads/roundworm/reads-drr008444.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/path-cover/reads/roundworm/DRR008444/ ;\
log_dir=/mnt/scratch1/seq-reads/cuttlefish/path-cover/roundworm/DRR008444/ ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.default.log ;\
\
bash ${driver} ${input_list} 27 1 1 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t1.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.unrestrict.log ;\
\
bash ${driver} ${input_list} 27 1 1 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t1.unrestrict.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.default.log ;\
\
bash ${driver} ${input_list} 55 1 1 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t1.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.unrestrict.log ;\
\
bash ${driver} ${input_list} 55 1 1 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t1.unrestrict.log ;\
\


# Gut microbiome
\
input_list=/mnt/scratch4/seq-reads/metagenomic/human-gut/reads-prjeb33098.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/path-cover/reads/human-gut/PRJEB33098/ ;\
log_dir=/mnt/scratch1/seq-reads/cuttlefish/path-cover/human-gut/PRJEB33098/ ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.default.log ;\
\
bash ${driver} ${input_list} 27 1 1 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t1.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.unrestrict.log ;\
\
bash ${driver} ${input_list} 27 1 1 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t1.unrestrict.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.default.log ;\
\
bash ${driver} ${input_list} 55 1 1 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t1.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.unrestrict.log ;\
\
bash ${driver} ${input_list} 55 1 1 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t1.unrestrict.log ;\
\


# Human reads
\
input_list=/mnt/scratch4/seq-reads/human/reads-hg004.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/path-cover/reads/human/HG004/ ;\
log_dir=/mnt/scratch1/seq-reads/cuttlefish/path-cover/human/HG004/ ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 1 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.unrestrict.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-path-cover/read-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 1 8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.unrestrict.log ;\
\
