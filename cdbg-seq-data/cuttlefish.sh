#!/bin/bash

## Human
\
input_list=/mnt/scratch4/seq-reads/human/reads-hg004.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/human/HG004/ ;\
log_dir=/mnt/scratch1/seq-reads/cuttlefish/human/HG004/ ;\
op_dump_dir=/bio2/cdbg-output/cuttlefish/human/HG004/ ;\
\

# k = 27
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 14 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.default.log ;\
bash ${driver} ${input_list} 27 14  8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-match-mem.sh ;\
\
bash ${driver} ${input_list} 27 14 16 8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.match-mem.log ;\
bash ${driver} ${input_list} 27 14  8 6 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.match-mem.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 14 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.unrestrict.log ;\
bash ${driver} ${input_list} 27 14  8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.unrestrict.log ;\
\
\
mv ${output_dir}/k27.cf.* ${op_dump_dir}/ ;\
\

# k = 55
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 9 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t16.default.log ;\
bash ${driver} ${input_list} 55 9  8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-match-mem.sh ;\
\
bash ${driver} ${input_list} 55 9 16 10 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t16.match-mem.log ;\
bash ${driver} ${input_list} 55 9  8 7 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.match-mem.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 9 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t16.unrestrict.log ;\
bash ${driver} ${input_list} 55 9  8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.unrestrict.log ;\
\
\
mv ${output_dir}/k55.cf.* ${op_dump_dir}/ ;\
\


## Human RNA-seq
\
input_list=/mnt/scratch5/seq-reads/human/reads-prjeb3365.lst ;\
work_dir=/mnt/scratch5/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/human/PRJEB3365/ ;\
log_dir=/mnt/scratch1/seq-reads/cuttlefish/human/PRJEB3365/ ;\
op_dump_dir=/bio2/cdbg-output/cuttlefish/human/PRJEB3365/ ;\
\

# k = 27
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 2 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.default.log ;\
bash ${driver} ${input_list} 27 2  8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 2 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.unrestrict.log ;\
bash ${driver} ${input_list} 27 2  8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.unrestrict.log ;\
\
\
mv ${output_dir}/k27.cf.* ${op_dump_dir}/ ;\
\


## Gut microbiome
\
input_list=/mnt/scratch4/seq-reads/metagenomic/human-gut/reads-prjeb33098.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/metagenomic/human-gut/PRJEB33098/ ;\
log_dir=/mnt/scratch1/seq-reads/cuttlefish/metagenomic/human-gut/PRJEB33098/ ;\
op_dump_dir=/bio2/cdbg-output/cuttlefish/metagenomic/human-gut/PRJEB33098/ ;\
\

# k = 27
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 2 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27.default.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-match-mem.sh ;\
\
bash ${driver} ${input_list} 27 2 16  7 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27.match-mem.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 2 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27.unrestrict.log ;\
\
mv ${output_dir}/k27.cf.* ${op_dump_dir}/ ;\
\

# k = 55
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 2 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55.default.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-match-mem.sh ;\
\
bash ${driver} ${input_list} 55 2 16 12 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55.match-mem.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 2 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55.unrestrict.log ;\
\
mv ${output_dir}/k55.cf.* ${op_dump_dir}/ ;\
\


## Soil
\
input_list=/mnt/scratch4/seq-reads/metagenomic/soil/reads-iowa-corn.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/metagenomic/soil/Iowa_Corn/ ;\
log_dir=/mnt/scratch1/seq-reads/cuttlefish/metagenomic/soil/Iowa_Corn/ ;\
op_dump_dir=/bio2/cdbg-output/cuttlefish/metagenomic/soil/Iowa_Corn/ ;\
\

# k = 27
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 2 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-match-mem.sh ;\
\
bash ${driver} ${input_list} 27 2 16 52 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27.match-mem.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 2 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27.unrestrict.log ;\
\
mv ${output_dir}/k27.cf.* ${op_dump_dir}/ ;\
\

# k = 55
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 2 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55.default.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-match-mem.sh ;\
\
bash ${driver} ${input_list} 55 2 16 27 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55.match-mem.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 2 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55.unrestrict.log ;\
\
mv ${output_dir}/k55.cf.* ${op_dump_dir}/ ;\
\


## White spruce
\
input_list=/mnt/scratch4/seq-reads/white-spruce/reads-sra056234.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/white-spruce/SRA056234/ ;\
log_dir=/mnt/scratch1/seq-reads/cuttlefish/white-spruce/SRA056234/ ;\
op_dump_dir=/bio2/cdbg-output/cuttlefish/white-spruce/SRA056234/ ;\
\

# k = 27
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 2 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-match-mem.sh ;\
\
bash ${driver} ${input_list} 27 2 16 37 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27.match-mem.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 2 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27.unrestrict.log ;\
\
mv ${output_dir}/k27.cf.* ${op_dump_dir}/ ;\
\

# k = 55
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 2 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55.default.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-match-mem.sh ;\
\
bash ${driver} ${input_list} 55 2 16 31 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55.match-mem.log ;\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 2 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55.unrestrict.log ;\
\
mv ${output_dir}/k55.cf.* ${op_dump_dir}/ ;\
\


## Human (cutoff = 2)
\
input_list=/mnt/scratch4/seq-reads/human/reads-hg004.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/human/HG004/ ;\
log_dir=/mnt/scratch1/seq-reads/cuttlefish/human/HG004/ ;\
op_dump_dir=/bio2/cdbg-output/cuttlefish/human/HG004/ ;\
\

# k = 27
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 2 16 ${work_dir} ${output_dir}/k27-c2.cf ${log_dir}/k27-c2-t16.default.log ;\
bash ${driver} ${input_list} 27 2  8 ${work_dir} ${output_dir}/k27-c2.cf ${log_dir}/k27-c2-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-match-mem.sh ;\
\
bash ${driver} ${input_list} 27 2 16 12 ${work_dir} ${output_dir}/k27-c2.cf ${log_dir}/k27-c2-t16.match-mem.log ;\
bash ${driver} ${input_list} 27 2  8  9 ${work_dir} ${output_dir}/k27-c2.cf ${log_dir}/k27-c2-t8.match-mem.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 2 16 ${work_dir} ${output_dir}/k27-c2.cf ${log_dir}/k27-c2-t16.unrestrict.log ;\
bash ${driver} ${input_list} 27 2  8 ${work_dir} ${output_dir}/k27-c2.cf ${log_dir}/k27-c2-t8.unrestrict.log ;\
\
\
mv ${output_dir}/k27-c2.cf.* ${op_dump_dir}/ ;\
\

# k = 55
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 2 16 ${work_dir} ${output_dir}/k55-c2.cf ${log_dir}/k55-c2-t16.default.log ;\
bash ${driver} ${input_list} 55 2  8 ${work_dir} ${output_dir}/k55-c2.cf ${log_dir}/k55-c2-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-match-mem.sh ;\
\
bash ${driver} ${input_list} 55 2 16 11 ${work_dir} ${output_dir}/k55-c2.cf ${log_dir}/k55-c2-t16.match-mem.log ;\
bash ${driver} ${input_list} 55 2  8  8 ${work_dir} ${output_dir}/k55-c2.cf ${log_dir}/k55-c2-t8.match-mem.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 2 16 ${work_dir} ${output_dir}/k55-c2.cf ${log_dir}/k55-c2-t16.unrestrict.log ;\
bash ${driver} ${input_list} 55 2  8 ${work_dir} ${output_dir}/k55-c2.cf ${log_dir}/k55-c2-t8.unrestrict.log ;\
\
\
mv ${output_dir}/k55-c2.cf.* ${op_dump_dir}/ ;\
\
