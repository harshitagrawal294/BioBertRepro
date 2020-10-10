# Download and preprocess the data
wget "https://drive.google.com/uc?export=download&id=1OletxmPYNkz2ltOr9pyT0b0iBtUWxslh" -O /input/NERdataset.zip
unzip input/NERdataset.zip -d input/NERdataset/
python preprocess.py
# Download model
mkdir input/bert-base-uncased/
wget "https://s3.amazonaws.com/models.huggingface.co/bert/bert-base-uncased-config.json" -O input/bert-base-uncased/config.json
wget "https://cdn.huggingface.co/bert-base-uncased-pytorch_model.bin" -O input/bert-base-uncased/pytorch_model.bin
wget "https://cdn.huggingface.co/bert-base-uncased-vocab.txt" -O input/bert-base-uncased/vocab.txt