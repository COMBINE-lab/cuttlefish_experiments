#!/bin/bash

## Human gut genomes
\
input_dir=/mnt/scratch4/genome-refs/human-gut-genomes/ ;\
input_list=/mnt/scratch4/genome-refs/human-gut-genomes/refs-gut-genomes.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/human-gut-genomes/ ;\
log_dir=/mnt/scratch1/genome-refs/cuttlefish/human-gut-genomes/ ;\
op_dump_dir=/bio2/cdbg-output/cuttlefish/human-gut-genomes/ ;\
\
find ${input_dir} -name "*.fna.gz" > ${input_list} ;\
\

# k = 27
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 1 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.default.log ;\
bash ${driver} ${input_list} 27 1  8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 1 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.unrestrict.log ;\
bash ${driver} ${input_list} 27 1  8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.unrestrict.log ;\
\
mv ${output_dir}/k27.cf.* ${op_dump_dir}/ ;\
\

# k = 55
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 1 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t16.default.log ;\
bash ${driver} ${input_list} 55 1  8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 1 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t16.unrestrict.log ;\
bash ${driver} ${input_list} 55 1  8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.unrestrict.log ;\
\
mv ${output_dir}/k55.cf.* ${op_dump_dir}/ ;\
\
rm ${input_list} ;\
\


## 100-human
\
input_dir=/mnt/scratch4/genome-refs/100-human/ ;\
input_list=/mnt/scratch4/genome-refs/100-human/refs-100-human.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/100-human/ ;\
log_dir=/mnt/scratch1/genome-refs/cuttlefish/100-human/ ;\
op_dump_dir=/bio2/cdbg-output/cuttlefish/100-human/ ;\
\
find ${input_dir} -name "*.fa" > ${input_list} ;\
\

# k = 27
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 1 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.default.log ;\
bash ${driver} ${input_list} 27 1  8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 1 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.unrestrict.log ;\
bash ${driver} ${input_list} 27 1  8 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t8.unrestrict.log ;\
\
mv ${output_dir}/k27.cf.* ${op_dump_dir}/ ;\
\

# k = 55
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 1 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t16.default.log ;\
bash ${driver} ${input_list} 55 1  8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 1 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t16.unrestrict.log ;\
bash ${driver} ${input_list} 55 1  8 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t8.unrestrict.log ;\
\
mv ${output_dir}/k55.cf.* ${op_dump_dir}/ ;\
\
rm ${input_list} ;\
\


## Bacterial archive
\
input_dir=/mnt/scratch4/genome-refs/bacteria/ ;\
input_list=/mnt/scratch4/genome-refs/bacteria/refs-bacteria.lst ;\
work_dir=/mnt/scratch4/cuttlefish/ ;\
output_dir=/mnt/scratch7/cuttlefish/bacteria/ ;\
log_dir=/mnt/scratch1/genome-refs/cuttlefish/bacteria/ ;\
op_dump_dir=/bio2/cdbg-output/cuttlefish/bacteria/ ;\
\
find ${input_dir} -name "*.fa.gz" > ${input_list} ;\
\

# k = 27
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 27 1 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 27 1 16 ${work_dir} ${output_dir}/k27.cf ${log_dir}/k27-t16.unrestrict.log ;\
\
mv ${output_dir}/k27.cf.* ${op_dump_dir}/ ;\
\

# k = 55
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-default.sh ;\
\
bash ${driver} ${input_list} 55 1 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t16.default.log ;\
\
\
driver=/home/jamshed/cuttlefish/experiments/scripts/cf-ref-dbg/cuttlefish-unrestrict-mem.sh ;\
\
bash ${driver} ${input_list} 55 1 16 ${work_dir} ${output_dir}/k55.cf ${log_dir}/k55-t16.unrestrict.log ;\
\
mv ${output_dir}/k55.cf.* ${op_dump_dir}/ ;\
\
rm ${input_list} ;\
\
