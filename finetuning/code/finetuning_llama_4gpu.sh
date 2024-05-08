#!/bin/bash

torchrun --nnodes 1 --nproc_per_node 4  finetuning.py --enable_fsdp --model_name /data/ai/models/nlp/llama/models_llama2/llama-2-13b-hf --output_dir /data/ai/tutorial/Llama2_on_HPG/finetuning/models/4gpu
