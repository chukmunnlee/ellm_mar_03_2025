#!/bin/sh

apt update && apt install -y pandoc

START="$(date)"

pip3 install --upgrade pip
pip install chromadb pypandoc
pip install transformers datasets evaluate rouge_score loralib peft 
pip3 install ipykernel ipywidgets 
pip3 install langchain-community sentence-transformers unstructured
pip3 install diffusers accelerate scipy safetensors
pip3 install torch torchdata torchvision
pip install smolagents
pip install nbconvert[webpdf]

echo "Preloads..."
python3 .devcontainer/preload.py

echo "Set HF_TOKEN"
export HF_TOKEN="Your Huggingface token here"

echo "+++ Start time: ${START}"
echo "+++ End time: $(date)"
