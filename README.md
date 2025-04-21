# Projeto Apache Spark com Delta Lake e Apache Iceberg

### Sobre o projeto:
Trabalho de pesquisa sobre arquitetura de dados utilizando Apache Spark com Delta Lake e Apache Iceberg.

Projeto python iniciado com [UV](https://github.com/astral-sh/uv).

### Requisitos:
- Python 3.11.8
- [UV](https://github.com/astral-sh/uv)
- [Jar do Delta Core](https://repo1.maven.org/maven2/io/delta/delta-core_2.12/2.4.0/delta-core_2.12-2.4.0.jar) 
- Navegador web para visualizar JupyterLab e MkDocs

### Comandos:
Para iniciar o setup do projeto, execute:

```
uv init
uv venv
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
├── data/                  # Arquivos de dados utilizados no projeto (ALTERAR DEPOIS)
├── docs/                  # Páginas de documentação para o MKDocs (ALTERAR DEPOIS)
│   ├── index.md
│   ├── delta.md
│   └── iceberg.md
├── notebooks/             # Notebooks Jupyter (ALTERAR DEPOIS)
│   ├── delta_lake.ipynb
│   └── iceberg.ipynb
├── src/                   # Código fonte do projeto (ALTERAR DEPOIS)
├── requirements.txt       # Dependências congeladas
├── mkdocs.yml             # Configuração do site/documentação
├── main.py/               # Arquivo principal (ALTERAR DEPOIS)
├── README.md 
```

### Equipe:
- Gustavo Goulart.
- João Daniel de Liz.
