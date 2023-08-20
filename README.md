# text-generation-webui-command
Workspace for [Text Generation Web UI](https://github.com/oobabooga/text-generation-webui)

## Preparation

### Install Miniconda
See https://docs.conda.io/en/latest/miniconda.html

### Configure Miniconda
If it wasn't done by the installer, execute the following.
```bash
conda init
```
Open a new terminal and execute the following.
```bash
conda config --set auto_activate_base false
conda config --add channels conda-forge
```

---

## One-time setup

### Create conda environment
```bash
#conda deactivate
#conda remove -n textgen --all
conda create -n textgen python=3.10
conda activate textgen
```

### Install
```bash
./install.sh
```

---

## How to run

### Start server
```bash
./start-server.sh
```

### Start client
```bash
./start-client.sh
```
