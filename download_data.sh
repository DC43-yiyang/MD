#!/bin/bash

mkdir -p data/GSE92332_RAW

wget -O data/GSE92332_RAW.tar "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE92332&format=file"

tar -xvf data/GSE92332_RAW.tar -C data/GSE92332_RAW

wget -O data/Macosko_cell_cycle_genes.txt "https://raw.githubusercontent.com/theislab/scanpy_usage/master/180209_cell_cycle/data/regev_lab_cell_cycle_genes.txt"

echo "finish"