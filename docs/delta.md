# Delta


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
CREATE TABLE IF NOT EXISTS delta_cliente 
USING DELTA 
LOCATION '/tmp/delta/cliente'
""") 

```

- comando para criar as tabelas, bem parecido com o slq, so tem que colocar o using para dizer que estamos usando o delta e o location para dizer aonde os dados vao ficar salvo na tabela.

```
spark.sql("""
INSERT INTO delta_cliente VALUES (10,'LUCAS OLIVEIRA', '1010101010', 'M', 'RUA TESTE', '', '(48) 9-88001118')
""").show()

```

- comando para enserir os dados em uma tabela sao iguals no sql ".show() apenas para mostrar os dados".

```
spark.sql("""
SELECT * FROM delta_cliente
""").show()

```

- comando para procurar dados em uma tabela, sao iguals no sql ".show() apenas para mostrar os dados".

```
spark.sql("""
UPDATE delta_cliente SET telefone_celular = '(48) 5096-4117' WHERE cod_cliente = 1
""").show()

```

- comando para atualizar o telefone do celular aonde o codigo do cliente é igual a 1 ".show() apenas para mostrar os dados".

```
spark.sql("""
DELETE FROM delta_cliente WHERE cod_cliente = 10
""").show()

```

- comando para deletar aonde o codigo do usuario é igual 10 ".show() apenas para mostrar os dados".

```
spark.sql("""
SELECT a.cod_apolice, c.nome, a.placa, a.valor_cobertura 
FROM delta_apolice a
JOIN delta_cliente c ON a.cod_cliente = c.cod_cliente
WHERE a.valor_cobertura > 15000
""").show()

```

- comando para pesquisar usando join, para Apólices com valor de cobertura > 15000:" ".show() apenas para mostrar os dados".