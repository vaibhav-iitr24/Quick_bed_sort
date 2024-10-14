Segregation of files chromosome wise:

The main files (shuf.a.bed.gz & shuf.b.bed.gz) first unzipped. 
Then segragated both file chromosome wise by awk command(Refer qbs.sh) and stored in another folder.

Creating required file: created run_metadat.tsv and sample.tsv to read the file path

Snakemake file:

Now snakemake file generated(segregate.smk). Pandas library and sys module imported. Then a function defined to store file-path in list.
Then snakemake parameters incorporated in file i.e. rule, input, output, shell. And respective information  written in respective parameter.


