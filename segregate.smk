import sys
import pandas as pd

run_df= pd.read_csv("run_metadat.tsv", sep="\t", header="infer")

sample_df=pd.read_csv("sample.tsv", sep="\t", header="infer")

run_df.index = run_df["run"]
sample_df.index = sample_df["sample"]
print (run_df)
print (sample_df)

def get_all_runs_for_a_sample(wildcards):
    all_runs = sample_df.loc[wildcards.sample,"runs"].split(",")
    run_path_list=[]
    for r in all_runs:
        p= run_df.loc[r, "file_path"]
        run_path_list.append(p)
    print(run_path_list)
    return run_path_list

rule merge_all_files:
    input:
        all_runs = lambda wildcards: get_all_runs_for_a_sample(wildcards)
    output:
        sorted = "Output/for_{sample}.bed"
    shell:
        "sh trial_sorted.sh \"{input.all_runs}\" {output.sorted}"
