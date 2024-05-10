# Llama2 on HiPerGator

This tutorial is adopted from github repositories [meta-llama/llama](https://github.com/meta-llama/llama) and [meta-llama/llama-recipes](https://github.com/meta-llama/llama-recipes).

## Llama2 Introduction

Llama2, developed by Meta (the parent company of Facebook), is a family of pre-trained and fine-tuned large language models (LLMs). These models range in scale from 7 billion to 70 billion parameters. Llama 2 is optimized for dialogue use cases and has demonstrated superior performance compared to open-source chat models on various benchmarks. Here are some key points about Llama2:

* Purpose: Llama2 is designed for natural language processing (NLP) tasks, including text generation, summarization, and even programming code.
* Coda Llama: Special language models for coding. They come in three types, basic Models for all coding tasks, Python Models focused on Python programming, Instruction Models for following code instructions. Available sizes including 7B, 13B, and 34B.
* Purple Llama: An umbrella project that over time will bring together tools and evals to help the community build responsibly with open generative AI models. 

## Download Llama2

In order to download the Llama2 models weights and tokenizer, please visit the [Meta website](https://ai.meta.com/resources/models-and-libraries/llama-downloads/) and accept our License.

Once your request is approved, you will receive a signed URL over email. Then run the download.sh script, passing the URL provided when prompted to start the download.

Pre-requisites: Make sure you have `wget` and `md5sum` installed. Then run the script: `./download.sh`.

Keep in mind that the links expire after 24 hours and a certain amount of downloads. If you start seeing errors such as `403: Forbidden`, you can always re-request a link.

### Access to Hugging Face

We are also providing downloads on [Hugging Face](https://huggingface.co/meta-llama). You must first request a download from the Meta website using the same email address as your Hugging Face account. After doing so, you can request access to any of the models on Hugging Face and within 1-2 days your account will be granted access to all versions.

## Quick Start Llama2 on HiPerGator (HPG)

All the LLama2 models have already been downloaded to `/data/ai/models/nlp/llama/models_llama2`. You can run the model on HPG via the command line using `ml llama/2`, `ml nlp/1.3`, or in the Jupyter Notebook with the `LLAMA2`, `nlp-1.3` kernels. For this tutorial, we recommend using the `nlp-1.3` kernel.

* [01. Getting start with Llama_2](01_getting_start_Llama_2.ipynb): This session is to provide a guided tour of Llama2, including understanding different Llama 2 models, how access them on HPG, Generative AI and Chatbot architectures, prompt engineering, RAG (Retrieval Augmented Generation), Fine-tuning and more.

* [02. Prompt Engineering with Llama_2](02_prompt_engineering_with_Llama_2.ipynb): This session interactive guide covers prompt engineering & best practices with Llama 2 user [Replicate API](https://replicate.com/meta/llama-2-70b-chat).

* [03. Fine tuning Llama_2](03_fine_tuning_Llama_2.ipynb): This session shows how to train a Llama2 model on a single GPU (e.g. A100 with 80GB) using int8 quantization and LoRA. 

## Finetuning and Inference

* If you insteaed in finetune Llama2 on single-GPU and multi-GPU setups, you can find recipes at [finetuning](./finetuning).
* If you want to deploy Llama2 for inference locally and using model servers, you can find recipes at [inference](./inference).

More other recipes and metarials can be found at [meta-llama/llama-recipes](https://github.com/meta-llama/llama-recipes)

## License  
All rights are reserved by the [Meta Llama team](https://llama.meta.com/) Please refer to the [Meta Llama License file](LICENSE) and the Acceptable [Use Policy](USE_POLICY.md).
