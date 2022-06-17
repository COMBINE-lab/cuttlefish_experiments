#!/bin/bash

bwa=/home/jamshed/bwa/bwa
samtobreak=/home/jamshed/abyss/Misc/samtobreak
seqkit=/home/jamshed/seqkit

ref=${1}
contig_dir=${2}
work_dir=${3}
thread=${4}
log_dir=${5}

# Build an index over the reference.
idx="${work_dir}/idx.bwa"
/usr/bin/time ${bwa} index -p "${idx}" "${ref}" &> "${log_dir}/idx.log"

# Get the sum length of the reference-sequences.
printer=$(if [[ "${ref}" == *.gz ]]; then echo "zcat"; else echo "cat"; fi)
len=$("${printer}" "${ref}" | grep -v ">" | tr -d '\n' | wc -c)


for k in {27,41,55,69,83,97,111,125}
do
    # Align the contigs to the ref.
    aln="${work_dir}/aln-k${k}.sam"
    contigs="${contig_dir}/k${k}.default.cf.fa"
    /usr/bin/time -o "${log_dir}/aln-k${k}.log" ${bwa} mem -t "${thread}" "${idx}" "${contigs}" > "${aln}"

    # Assess alignment quality.
    /usr/bin/time ${samtobreak} "-G${len}" --text "${aln}" &> "${log_dir}/quality-k${k}.log"

    # Get basic stats of the contigs
    /usr/bin/time ${seqkit} stats -a -j "${thread}" "${contigs}" &> "${log_dir}/stats-k${k}.log"
done
