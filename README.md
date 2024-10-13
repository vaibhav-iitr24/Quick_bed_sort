Segregation of files chromosome wise:

The main files (shuf.a.bed.gz & shuf.b.bed.gz) first unzipped. 
Then segragated both file chromosome wise by awk command(Refer qbs.sh) and stored in another folder.


Snakemake file:

Now snakemake file generated(segregate.smk). Pandas library and sys module imported. Then a function defined to store file-path in list.
Then snakemake parametr written i.e. rule, input, output, shell. And respective information  written in respective parameter.


