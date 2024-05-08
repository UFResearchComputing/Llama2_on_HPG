#!/bin/bash

python finetuning.py --use_peft --peft_method lora --quantization --use_fp16 --model_name /data/ai/models/nlp/llama/models_llama2/llama-2-7b-hf --output_dir /data/ai/tutorial/Llama2_on_HPG/finetuning/models/1gpu