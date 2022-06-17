#!/bin/bash

\
driver=/home/jamshed/cuttlefish/experiments/scripts/ust.sh ;\
du_tracker=/home/jamshed/cuttlefish/experiments/scripts/peak-disk-usage.sh ;\
wrapper=/home/jamshed/cuttlefish/experiments/scripts/wrapper.sh ;\
\


### Whole-genome reference sequences

## Roundworm
\
input=/mnt/scratch4/genome-refs/roundworm/UNSB01.1.fsa_nt.gz ;\
work_dir=/mnt/scratch7/ust/roundworm/ ;\
output_dir=/mnt/scratch7/ust/roundworm/ ;\
log_dir=/mnt/scratch1/genome-refs/ust/roundworm/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 1 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t1.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t1.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 1 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t1.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t1.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\


## Human
\
input=/mnt/scratch4/genome-refs/human/GCA_000001405.28_GRCh38.p13_genomic.fna.gz ;\
work_dir=/mnt/scratch7/ust/human/ ;\
output_dir=/mnt/scratch7/ust/human/ ;\
log_dir=/mnt/scratch1/genome-refs/ust/human/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 1 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t1.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t1.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 1 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t1.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t1.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\


## 7-human
\
input=/mnt/scratch4/genome-refs/7-human/refs-7-human.lst ;\
work_dir=/mnt/scratch7/ust/7-human/ ;\
output_dir=/mnt/scratch7/ust/7-human/ ;\
log_dir=/mnt/scratch1/genome-refs/ust/7-human/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 1 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t1.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t1.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 1 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t1.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t1.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\



### Sequencing read-sets

## Roundworm reads
\
input=/mnt/scratch4/seq-reads/roundworm/DRR008444/reads-drr008444.lst ;\
work_dir=/mnt/scratch7/ust/roundworm/DRR008444/ ;\
output_dir=/mnt/scratch7/ust/roundworm/DRR008444/ ;\
log_dir=/mnt/scratch1/seq-reads/ust/roundworm/DRR008444/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 1 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t1.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t1.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 1 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t1.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t1.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\


## Gut microbiome
\
input=/mnt/scratch4/seq-reads/metagenomic/human-gut/reads-prjeb33098.lst ;\
work_dir=/mnt/scratch7/ust/human-gut/PRJEB33098/ ;\
output_dir=/mnt/scratch7/ust/human-gut/PRJEB33098/ ;\
log_dir=/mnt/scratch1/seq-reads/ust/human-gut/PRJEB33098/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 1 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t1.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t1.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 1 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t1.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t1.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\


## Human reads
\
input=/mnt/scratch4/seq-reads/human/reads-hg004.lst ;\
work_dir=/mnt/scratch7/ust/human/HG004/ ;\
output_dir=/mnt/scratch7/ust/human/HG004/ ;\
log_dir=/mnt/scratch1/seq-reads/ust/human/HG004/ ;\
\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 27 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k27-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k27-t8.peak_du' ;\
\
bash ${wrapper} \
'bash '${driver}' '${input}' 55 1 8 '${work_dir}' '${output_dir}' '${log_dir}'/k55-t8.log' \
'bash '${du_tracker}' '${work_dir}' '${log_dir}'/k55-t8.peak_du' ;\
\
