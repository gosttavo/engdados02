# Projeto Apache Spark com Delta Lake e Apache Iceberg

### Sobre o projeto:
Trabalho de engenharia de dados utilizando Apache Spark com Delta Lake e Apache Iceberg.

Projeto python iniciado com [UV](https://github.com/astral-sh/uv).

### Requisitos:
- Python 3.11.8
- [UV](https://github.com/astral-sh/uv)
- Navegador web para visualizar JupyterLab e MkDocs

### Modelagem do projeto:
![Diagrama ER](https://raw.githubusercontent.com/gosttavo/engdados02/main/assets/diagram.jpeg)

### Comandos:
Para iniciar o setup do projeto, execute:

```
uv init
uv venv --python 3.11.8
source .venv/bin/activate
uv pip install -r requirements.txt
```

### Notebooks:
Os notebooks estão na pasta **notebooks/**
* delta_lake.ipynb – demonstração de leitura, escrita, INSERT, UPDATE e DELETE com Delta Lake. (ALTERAR DEPOIS)
* iceberg.ipynb – exemplo semelhante utilizando Apache Iceberg. (ALTERAR DEPOIS)
```
uv run jupyter lab
``` 

### Documentação (MKDocs):
Para rodar a documentação localmente:
```
uv run mkdocs serve
```
Acesse pelo navegador em: http://127.0.0.1:8000 (http://localhost)

### Estrutura do projeto:
```
.
├── data/                  # Arquivos de dados utilizados no projeto
│   ├── apolice.csv
│   ├── carro.csv
│   ├── cliente.csv
│   ├── sinistro.csv
|   └── scripts.sql
├── docs/                  # Páginas de documentação para o MKDocs
│   ├── index.md
│   ├── delta.md
│   └── iceberg.md
├── notebooks/             # Notebooks Jupyter
│   ├── delta_lake.ipynb   # Notebook com operações em Delta Lake
│   └── iceberg.ipynb      # Notebook com operações em Iceberg
├── src/
|   └── scripts.sql
├── .gitignore
├── .python-version
├── main.py/               # Arquivo principal (ALTERAR DEPOIS)
├── mkdocs.yml             # Configuração do site/documentação
├── README.md
├── requirements.txt       # Dependências congeladas
├── uv.lock
```

### Equipe:
- Gustavo Goulart.
- João Daniel de Liz.
