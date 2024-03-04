#!/bin/bash
#
# Call run_experiments.py that outputs gas bounds for the complete gastap dataset. 
# 
# For each function, run_experiments.py tries three options. 


# 指定使用的 Python 解释器
PYTHON_INTERPRETER=/Users/tttttttd/anaconda3/bin/python3

$PYTHON_INTERPRETER run_experiments.py --dataset dataset/gastap_dataset --output experiments/results/ --max-workers 16 --timeout 25 --function-list dataset/gastap_all_functions.csv

rm *.smt2 *.model *.gas

$PYTHON_INTERPRETER merge_experiments.py --results experiments/results/ --output experiment_results/asparagus_run_all.csv