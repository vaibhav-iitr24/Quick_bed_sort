#!/bin/bash

gunzip shuf.a.bed.gz shuf.b.bed.gz
cat shuf.a.bed shuf.b.bed | awk '{print > $1".bed"}'

snakemake -p --snakefile segregate.smk Output/for_demo.bed 

