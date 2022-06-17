#!/bin/bash

driver=/home/jamshed/cuttlefish/experiments/scripts/sshash.sh
k=27
temp_dir=/mnt/scratch7/sshash/
cgroup=sshash


## Path cover

# Human reads
\
input=/bio2/path-cover-output/cuttlefish/reads/human/HG004/k27-t8.default.cf.fa
minimizer_len=20
output=/mnt/scratch5/sshash/human/HG004/k${k}.paths.sshash
log_dir=/mnt/scratch1/seq-reads/sshash/human/HG004/
\
for mem_gb in {3..8}
do
    bash ${driver} ${input} ${k} ${minimizer_len} ${output} ${temp_dir} ${log_dir}/k${k}.M"${mem_gb}".paths.log "${mem_gb}" ${cgroup}
done
\

# Gut microbiome
\
input=/bio2/path-cover-output/cuttlefish/reads/human-gut/PRJEB33098/k27-t8.default.cf.fa
minimizer_len=20
output=/mnt/scratch5/sshash/metagenomic/human-gut/PRJEB33098/k${k}.paths.sshash
log_dir=/mnt/scratch1/seq-reads/sshash/metagenomic/human-gut/PRJEB33098/
\
for mem_gb in {3..9}
do
    bash ${driver} ${input} ${k} ${minimizer_len} ${output} ${temp_dir} ${log_dir}/k${k}.M"${mem_gb}".paths.log "${mem_gb}" ${cgroup}
done
\

# Human genome
\
input=/bio2/path-cover-output/cuttlefish/refs/human/k27-t8.default.cf.fa
minimizer_len=20
output=/mnt/scratch5/sshash/human-genome/k${k}.sshash
log_dir=/mnt/scratch1/seq-reads/sshash/human-genome/
\
for mem_gb in {3..8}
do
    bash ${driver} ${input} ${k} ${minimizer_len} ${output} ${temp_dir} ${log_dir}/k${k}.M"${mem_gb}".log "${mem_gb}" ${cgroup}
done
\

# 7-human
\
input=/bio2/path-cover-output/cuttlefish/refs/7-human/k27-t8.default.cf.fa
minimizer_len=20
output=/mnt/scratch5/sshash/7-human/k${k}.sshash
log_dir=/mnt/scratch1/seq-reads/sshash/7-human/
\
for mem_gb in {3..8}
do
    bash ${driver} ${input} ${k} ${minimizer_len} ${output} ${temp_dir} ${log_dir}/k${k}.M"${mem_gb}".log "${mem_gb}" ${cgroup}
done
\


## Maximal unitigs

# Human reads
\
input=/bio2/cdbg-output/cuttlefish/human/HG004/k27-t16.default.cf.fa
minimizer_len=20
output=/mnt/scratch5/sshash/human/HG004/k${k}.unitigs.sshash
log_dir=/mnt/scratch1/seq-reads/sshash/human/HG004/
\
for mem_gb in {3..8}
do
    bash ${driver} ${input} ${k} ${minimizer_len} ${output} ${temp_dir} ${log_dir}/k${k}.M"${mem_gb}".unitigs.log "${mem_gb}" ${cgroup}
done
\

# Human RNA-seq
\
input=/bio2/cdbg-output/cuttlefish/human/PRJEB3365/k27.default.cf.fa
minimizer_len=20
output=/mnt/scratch5/sshash/human/PRJEB3365/k${k}.sshash
log_dir=/mnt/scratch1/seq-reads/sshash/human/PRJEB3365/
\
for mem_gb in {1..4}
do
    bash ${driver} ${input} ${k} ${minimizer_len} ${output} ${temp_dir} ${log_dir}/k${k}.M"${mem_gb}".log "${mem_gb}" ${cgroup}
done
\

# Gut microbiome
\
input=/bio2/cdbg-output/cuttlefish/metagenomic/human-gut/PRJEB33098/k27-t16.default.cf.fa
minimizer_len=20
output=/mnt/scratch5/sshash/metagenomic/human-gut/PRJEB33098/k${k}.unitigs.sshash
log_dir=/mnt/scratch1/seq-reads/sshash/metagenomic/human-gut/PRJEB33098/
\
for mem_gb in {3..9}
do
    bash ${driver} ${input} ${k} ${minimizer_len} ${output} ${temp_dir} ${log_dir}/k${k}.M"${mem_gb}".unitigs.log "${mem_gb}" ${cgroup}
done
\

# Human gut genomes
\
input=/bio2/cdbg-output/cuttlefish/human-gut-genomes/k27-t16.default.cf.fa
minimizer_len=20
output=/mnt/scratch5/sshash/human-gut-genomes/k${k}.sshash
log_dir=/mnt/scratch1/seq-reads/sshash/human-gut-genomes/
\
for mem_gb in {8,12,16,20,24,28}
do
    bash ${driver} ${input} ${k} ${minimizer_len} ${output} ${temp_dir} ${log_dir}/k${k}.M"${mem_gb}".log "${mem_gb}" ${cgroup}
done
\
