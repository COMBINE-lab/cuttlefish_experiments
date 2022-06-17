#!/bin/bash

driver="/home/jamshed/cuttlefish/experiments/scripts/abyss.sh"


## Human
\
input_dir="/mnt/scratch6/seq-reads/human/HG004/" ;\
output_dir="/mnt/scratch6/abyss/human/HG004/" ;\
log_dir="/mnt/scratch1/seq-reads/abyss/human/HG004/" ;\
\

# k = 27, 55; B = 32G, H = 4
\
bash ${driver} ${input_dir} 27 14 32G 4 16 ${output_dir}/k27.abyss ${log_dir}/k27-t16.b32.h4.log ;\
bash ${driver} ${input_dir} 55  9 32G 4 16 ${output_dir}/k55.abyss ${log_dir}/k55-t16.b32.h4.log ;\
bash ${driver} ${input_dir} 27 14 32G 4  8 ${output_dir}/k27.abyss ${log_dir}/k27-t8.b32.h4.log  ;\
bash ${driver} ${input_dir} 55  9 32G 4  8 ${output_dir}/k55.abyss ${log_dir}/k55-t8.b32.h4.log  ;\
\

# k = 27, 55; B = 64G, H = 3
\
bash ${driver} ${input_dir} 27 14 64G 3 16 ${output_dir}/k27.abyss ${log_dir}/k27-t16.b64.h3.log ;\
bash ${driver} ${input_dir} 55  9 64G 3 16 ${output_dir}/k55.abyss ${log_dir}/k55-t16.b64.h3.log ;\
bash ${driver} ${input_dir} 27 14 64G 3  8 ${output_dir}/k27.abyss ${log_dir}/k27-t8.b64.h3.log  ;\
bash ${driver} ${input_dir} 55  9 64G 3  8 ${output_dir}/k55.abyss ${log_dir}/k55-t8.b64.h3.log  ;\
\


## Human RNA-seq
\
input_dir="/mnt/scratch5/seq-reads/human/PRJEB3365/" ;\
output_dir="/mnt/scratch7/abyss/human/PRJEB3365/" ;\
log_dir="/mnt/scratch1/seq-reads/abyss/human/PRJEB3365/" ;\
\

# k = 27; B = 32G, H = 4
\
bash ${driver} ${input_dir} 27 2 32G 4 16 ${output_dir}/k27.abyss ${log_dir}/k27-t16.b32.h4.log ;\
bash ${driver} ${input_dir} 27 2 32G 4  8 ${output_dir}/k27.abyss ${log_dir}/k27-t8.b32.h4.log ;\
\

# k = 27; B = 64G, H = 3
\
bash ${driver} ${input_dir} 27 2 64G 3 16 ${output_dir}/k27.abyss ${log_dir}/k27-t16.b64.h3.log ;\
bash ${driver} ${input_dir} 27 2 64G 3  8 ${output_dir}/k27.abyss ${log_dir}/k27-t8.b64.h3.log ;\
\


## Gut microbiome
\
input_dir="/mnt/scratch6/seq-reads/metagenomic/human-gut/PRJEB33098/" ;\
output_dir="/mnt/scratch6/abyss/metagenomic/human-gut/PRJEB33098/" ;\
log_dir="/mnt/scratch1/seq-reads/abyss/metagenomic/human-gut/PRJEB33098/" ;\
\

# k = 27, 55; B = 32G, H = 3
\
bash ${driver} ${input_dir} 27 2 32G 3 16 ${output_dir}/k27.abyss ${log_dir}/k27-t16.b32.h3.log ;\
bash ${driver} ${input_dir} 55 2 32G 3 16 ${output_dir}/k55.abyss ${log_dir}/k55-t16.b32.h3.log ;\
\

# k = 27, 55; B = 64G, H = 3
\
bash ${driver} ${input_dir} 27 2 64G 3 16 ${output_dir}/k27.abyss ${log_dir}/k27-t16.b64.h3.log ;\
bash ${driver} ${input_dir} 55 2 64G 3 16 ${output_dir}/k55.abyss ${log_dir}/k55-t16.b64.h3.log ;\
\


## Soil
\
input_dir="/mnt/scratch6/seq-reads/metagenomic/soil/Iowa_Corn/" ;\
output_dir="/mnt/scratch6/abyss/metagenomic/soil/Iowa_Corn/" ;\
log_dir="/mnt/scratch1/seq-reads/abyss/metagenomic/soil/Iowa_Corn/" ;\
\

# k = 27, 55; B = 64G, H = 3
\
bash ${driver} ${input_dir} 27 2 64G 3 16 ${output_dir}/k27.abyss ${log_dir}/k27-t16.b64.h3.log ;\
bash ${driver} ${input_dir} 55 2 64G 3 16 ${output_dir}/k55.abyss ${log_dir}/k55-t16.b64.h3.log ;\
\

# k = 27, 55; B = 128G, H = 3
\
bash ${driver} ${input_dir} 27 2 128G 3 16 ${output_dir}/k27.abyss ${log_dir}/k27-t16.b128.h3.log ;\
bash ${driver} ${input_dir} 55 2 128G 3 16 ${output_dir}/k55.abyss ${log_dir}/k55-t16.b128.h3.log ;\
\


## White spruce
\
input_dir="/mnt/scratch4/seq-reads/white-spruce/SRA056234/" ;\
output_dir="/mnt/scratch6/abyss/white-spruce/SRA056234/" ;\
log_dir="/mnt/scratch1/seq-reads/abyss/white-spruce/SRA056234/" ;\
\

# k = 27, 55; B = 400G, H = 3
\
bash ${driver} ${input_dir} 27 11 400G 3 16 ${output_dir}/k27.abyss ${log_dir}/k27-t16.b400.h3.log ;\
bash ${driver} ${input_dir} 55 11 400G 3 16 ${output_dir}/k55.abyss ${log_dir}/k55-t16.b400.h3.log ;\
\


## Human (cutoff = 2)
# cutoff = 2
\
input_dir="/mnt/scratch6/seq-reads/human/HG004/" ;\
output_dir="/mnt/scratch6/abyss/human/HG004/" ;\
log_dir="/mnt/scratch1/seq-reads/abyss/human/HG004/" ;\
\

# k = 27, 55; B = 32G, H = 4
\
bash ${driver} ${input_dir} 27 2 32G 4 16 ${output_dir}/k27-c2.abyss ${log_dir}/k27-c2-t16.b32.h4.log ;\
bash ${driver} ${input_dir} 55 2 32G 4 16 ${output_dir}/k55-c2.abyss ${log_dir}/k55-c2-t16.b32.h4.log ;\
bash ${driver} ${input_dir} 27 2 32G 4  8 ${output_dir}/k27-c2.abyss ${log_dir}/k27-c2-t8.b32.h4.log ;\
bash ${driver} ${input_dir} 55 2 32G 4  8 ${output_dir}/k55-c2.abyss ${log_dir}/k55-c2-t8.b32.h4.log ;\
\

# k = 27, 55; B = 64G, H = 3
\
bash ${driver} ${input_dir} 27 2 64G 3 16 ${output_dir}/k27-c2.abyss ${log_dir}/k27-c2-t16.b64.h3.log ;\
bash ${driver} ${input_dir} 55 2 64G 3 16 ${output_dir}/k55-c2.abyss ${log_dir}/k55-c2-t16.b64.h3.log ;\
bash ${driver} ${input_dir} 27 2 64G 3  8 ${output_dir}/k27-c2.abyss ${log_dir}/k27-c2-t8.b64.h3.log ;\
bash ${driver} ${input_dir} 55 2 64G 3  8 ${output_dir}/k55-c2.abyss ${log_dir}/k55-c2-t8.b64.h3.log ;\
\
