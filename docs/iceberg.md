# Iceberg


## Commands

```
 apoliceSchema = StructType([
    StructField("cod_apolice", IntegerType(), False),
    StructField("cod_cliente", IntegerType(), False),
    StructField("data_inicio_vigencia", DateType(), True),
    StructField("data_fim_vigencia", DateType(), True),
    StructField("valor_cobertura", DoubleType(), True),
    StructField("valor_franquia", DoubleType(), True),
    StructField("placa", StringType(), True)
])  

df_apolice = spark.read \
    .format("csv") \
    .schema(apoliceSchema) \
    .option("header", "true") \
    .option("encoding", "UTF-8") \
    .load("../data/apolice.csv")


```

- cria um esquema de como vai ser a tabela e seus tipos de valores, e o comando de baixo le e carega os dados.


```
spark.sql("""
CREATE TABLE IF NOT EXISTS local.apolice (
    cod_apolice INT,
    cod_cliente INT,
    data_inicio_vigencia DATE,
    data_fim_vigencia DATE,
    valor_cobertura DECIMAL(15, 2),
    valor_franquia DECIMAL(15, 2),
    placa STRING
) USING iceberg
""")

```

- comando para criar as tabelas bem parecido com o sql, tem que colocar o using e especificar que é o iceberg.

```
spark.sql("""
INSERT INTO local.cliente VALUES (10,'LUCAS OLIVEIRA', '1010101010', 'M', 'RUA TESTE', '', '(48) 9-88001118')
""")

```

- comando para enserir o dado em uma tabela bem parecido com o sql.

```
spark.sql("""
SELECT * FROM local.cliente
""").show()

```

- comando para procurar dados em uma tabela "o .show() serve so para mostrar os dados".

```
spark.sql("""
UPDATE local.cliente SET telefone_celular = '(48) 5096-4117' WHERE cod_cliente = 1
""")

```

- comando para atualizar o telefone do celular aonde o codigo do cliente é igual a 1.

```
spark.sql("""
DELETE FROM local.cliente WHERE cod_cliente = 10
""")

```

- comando para deletar aonde o codigo do usuario é igual 10.

```
spark.sql("""
SELECT a.cod_apolice, c.nome, a.placa, a.valor_cobertura 
FROM local.apolice a
JOIN local.cliente c ON a.cod_cliente = c.cod_cliente
WHERE a.valor_cobertura > 15000
""").show()

```

- comando para pesquisar usando join, para Apólices com valor de cobertura > 15000:".