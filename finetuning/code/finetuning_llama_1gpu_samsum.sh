#!/bin/sh

#SBATCH --job-name=llama2-1gpu-samsum
#SBATCH --mail-type=ALL               # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=...@ufl.edu       # Where to send mail
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --time=12:00:00               # Time limit hrs:min:sec
#SBATCH --cpus-per-task=4             # Number of CPU cores per task
#SBATCH --mem=20gb                   # Total memory limit
#SBATCH --partition=gpu               # Specify partition
#SBATCH --gres=gpu:a100:1             # Request 1 GPU per task
#SBATCH --account=ufhpc               # Sepcify account
#SBATCH --qos=ufhpc                   # Specify QoS setting
#SBATCH --output=job-%j.out
#SBATCH --error=job-%j.err

module load llama/2

cd /data/ai/tutorial/Llama2_on_HPG/finetuning # Important Note: Please specify the path to your own directory.

python finetuning.py --use_peft --peft_method lora --quantization --dataset samsum_dataset \
       --model_name /data/ai/models/nlp/llama/models_llama2/llama-2-7b-hf \
       --output_dir /data/ai/tutorial/Llama2_on_HPG/finetuning/models/1gpu/samsum # Important Note: Please specify the path to your own directory.
