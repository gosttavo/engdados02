CREATE TABLE apolice(
    cod_apolice int NOT NULL,
    cod_cliente int NOT NULL,
    data_inicio_vigencia date NULL,
    data_fim_vigencia date NULL,
    valor_cobertura numeric(10, 2) NULL,
    valor_franquia numeric(10, 2) NULL,
    placa varchar(10) NULL,
    CONSTRAINT pk_apolice PRIMARY KEY (cod_cliente, cod_apolice)
);

CREATE TABLE carro(
    placa varchar(10) NOT NULL,
    modelo varchar(50) NULL,
    chassi varchar(30) NOT NULL,
    marca varchar(30) NULL,
    ano int NULL,
    cor varchar(10) NULL,
    CONSTRAINT pk_carro PRIMARY KEY (placa)
);

CREATE TABLE cliente(
    cod_cliente int NOT NULL,
    nome varchar(50) NULL,
    cpf char(11) NOT NULL,
    sexo char(1) NULL,
    endereco varchar(200) NULL,
    telefone_fixo varchar(50) NULL,
    telefone_celular varchar(50) NULL,
    CONSTRAINT pk_cliente PRIMARY KEY (cod_cliente)
);

CREATE TABLE sinistro(
    cod_sinistro int NOT NULL,
    placa varchar(10) NOT NULL,
    data_sinistro date NULL,
    hora_sinistro time(7) NULL,
    local_sinistro varchar(100) NULL,
    condutor varchar(100) NULL,
    CONSTRAINT pk_sinistro PRIMARY KEY (cod_sinistro, placa)
);

INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200001, 1, CAST('2021-02-24' AS Date), CAST('2022-02-24' AS Date), CAST(2565.25 AS Numeric(10, 2)), CAST(100.25 AS Numeric(10, 2)), 'MZT1826');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200010, 1, CAST('2021-08-24' AS Date), CAST('2022-08-24' AS Date), CAST(9425.25 AS Numeric(10, 2)), CAST(68.64 AS Numeric(10, 2)), 'NAP5760');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200012, 1, CAST('2022-05-24' AS Date), CAST('2023-05-24' AS Date), CAST(19970.84 AS Numeric(10, 2)), CAST(157.80 AS Numeric(10, 2)), 'CCR8096');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200007, 2, CAST('2022-11-24' AS Date), CAST('2023-11-24' AS Date), CAST(19509.51 AS Numeric(10, 2)), CAST(61.00 AS Numeric(10, 2)), 'NFT2212');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200011, 2, CAST('2022-12-24' AS Date), CAST('2023-12-24' AS Date), CAST(7865.55 AS Numeric(10, 2)), CAST(89.16 AS Numeric(10, 2)), 'ALD3834');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200003, 3, CAST('2023-02-24' AS Date), CAST('2024-02-24' AS Date), CAST(19456.46 AS Numeric(10, 2)), CAST(146.99 AS Numeric(10, 2)), 'JIE0952');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200004, 3, CAST('2021-10-24' AS Date), CAST('2022-10-24' AS Date), CAST(4615.60 AS Numeric(10, 2)), CAST(47.77 AS Numeric(10, 2)), 'LVX7086');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200005, 3, CAST('2022-10-24' AS Date), CAST('2023-10-24' AS Date), CAST(19130.12 AS Numeric(10, 2)), CAST(181.57 AS Numeric(10, 2)), 'LWJ9156');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200016, 3, CAST('2022-06-24' AS Date), CAST('2023-06-24' AS Date), CAST(15760.31 AS Numeric(10, 2)), CAST(132.84 AS Numeric(10, 2)), 'EEE1056');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200014, 4, CAST('2021-12-24' AS Date), CAST('2022-12-24' AS Date), CAST(15040.52 AS Numeric(10, 2)), CAST(161.51 AS Numeric(10, 2)), 'GQY6753');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200015, 4, CAST('2023-02-24' AS Date), CAST('2024-02-24' AS Date), CAST(16261.87 AS Numeric(10, 2)), CAST(180.20 AS Numeric(10, 2)), 'DLA3438');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200009, 6, CAST('2023-03-24' AS Date), CAST('2024-03-24' AS Date), CAST(17561.01 AS Numeric(10, 2)), CAST(169.48 AS Numeric(10, 2)), 'FFR1234');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200002, 7, CAST('2022-02-24' AS Date), CAST('2023-02-24' AS Date), CAST(16081.90 AS Numeric(10, 2)), CAST(28.79 AS Numeric(10, 2)), 'NEM5116');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200006, 7, CAST('2022-02-24' AS Date), CAST('2023-02-24' AS Date), CAST(12595.89 AS Numeric(10, 2)), CAST(20.45 AS Numeric(10, 2)), 'IAC8974');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200008, 7, CAST('2022-10-24' AS Date), CAST('2023-10-24' AS Date), CAST(6815.28 AS Numeric(10, 2)), CAST(145.16 AS Numeric(10, 2)), 'IAC8974');
INSERT INTO apolice (cod_apolice, cod_cliente, data_inicio_vigencia, data_fim_vigencia, valor_cobertura, valor_franquia, placa) VALUES (202200013, 7, CAST('2023-03-24' AS Date), CAST('2024-03-24' AS Date), CAST(2737.30 AS Numeric(10, 2)), CAST(25.81 AS Numeric(10, 2)), 'IAC8974');

INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('ALD3834', 'CLIO', '34574215969', 'RENAULT', 2011, 'BRANCO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('CCR8096', 'CRETA', '88547875547', 'HYUNDAI', 2020, 'BRANCO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('DLA3438', 'PUNTO', '98823483434', 'FIAT', 2013, 'PRETO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('EEE1056', 'ECO SPORT', '56753453455', 'FORD', 2020, 'AZUL');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('FFR1234', 'PALIO', '32383478747', 'FIAT', 2009, 'AMARELO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('GQY6753', 'S10', '72004160549', 'GM', 2015, 'PRETO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('IAC8974', 'TIGUAN', '77130757746', 'VOLKSWAGEN', 2022, 'AZUL');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('JIE0952', 'PASSAT', '87493270405', 'VOLKSWAGEN', 2016, 'CINZA');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('JNU7898', '2020', '87628347687', 'FORD', 2020, 'VERDE');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('LVX7086', 'SANDERO', '00025131958', 'RENAULT', 1999, 'VERMELHO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('LWJ9156', 'ONIX', '40991078801', 'GM', 2015, 'AZUL');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('MZT1826', 'GOL', '41150439528', 'VOLKSWAGEN', 1998, 'AMARELO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('NAP5760', 'COMPASS', '40364369549', 'JEEP', 2017, 'PRETO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('NEM5116', '2008', '69469771523', 'PEUGEOT', 2018, 'PRETO');
INSERT INTO carro (placa, modelo, chassi, marca, ano, cor) VALUES ('NFT2212', 'KWID', '12344343433', 'RENAULT', 2023, 'BRANCO');

INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (1, 'MARISA MELO OLIVEIRA', '11111111111', 'F', 'RUA JOSÉ WOSCH SOBRINHO, 1938', '(41) 5096-4117', '(41) 5096-4117');
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (2, 'MURILO CARVALHO CARDOSO', '22222222222', 'M', 'RUA GEORGE BERNANOS, 122800', '(21) 3944-5385', NULL);
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (3, 'VINICIUS ROCHA RODRIGUES', '33333333333', 'M', NULL, NULL, NULL);
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (4, 'CAROLINA ROCHA GOMES', '44444444444', 'F', NULL, NULL, NULL);
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (5, 'ALINE SANTOS CASTRO', '55555555555', 'F', 'RUA ARMANDO PACAGNELLA, 1259', '(19) 7287-2893', '(19) 7287-2893');
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (6, 'LEILA CORREIA CAVALCANTI', '66666666666', 'F', 'RUA FRANCISCO D''ARAGE, 930', NULL, NULL);
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (7, 'SOPHIA CORREIA SANTOS', '77777777777', 'F', 'RUA JOÃO FORTES, 372', '(49) 8269-6660', '(49) 8269-6660');
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (8, 'JOÃO CORREIA COSTA', '88888888888', 'M', 'RUA PARAGUAI, 526', '(51) 7774-2809', '(51) 7774-2809');
INSERT INTO cliente (cod_cliente, nome, cpf, sexo, endereco, telefone_fixo, telefone_celular) VALUES (9, 'RAFAEL DIAS SOUZA', '99999999999', 'M', 'RUA MARIA MARCHI VISSALI, 74', '(16) 7459-3139', '(16) 7459-3139');

INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255501, 'ALD3834', CAST('2022-10-30' AS Date), CAST('11:00' AS Time), 'CRICIUMA', 'ARAUJO');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255502, 'GQY6753', CAST('2022-11-20' AS Date), CAST('10:34' AS Time), 'ICARA', 'CARDOSO');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255503, 'IAC8974', CAST('2022-05-24' AS Date), CAST('22:40' AS Time), 'TUBARAO', 'CUNHA');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255504, 'LVX7086', CAST('2023-01-25' AS Date), CAST('07:37' AS Time), 'URUSSANGA', 'SILVA');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255505, 'MZT1826', CAST('2024-03-27' AS Date), CAST('15:40' AS Time), 'SIDEROPOLIS', 'LUIZ');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255506, 'MZT1826', CAST('2023-10-20' AS Date), CAST('16:00' AS Time), 'FLORIANOPOLIS', 'JOAO');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255507, 'MZT1826', CAST('2022-05-08' AS Date), CAST('18:00' AS Time), 'NOVA VENEZA', 'LUCAS');
INSERT INTO sinistro (cod_sinistro, placa, data_sinistro, hora_sinistro, local_sinistro, condutor) VALUES (202255508, 'IAC8974', CAST('2022-08-08' AS Date), CAST('21:00' AS Time), 'CRICIUMA', 'PEDRO');

ALTER TABLE apolice ADD CONSTRAINT fk_carro__apolice FOREIGN KEY(placa) REFERENCES carro (placa);
ALTER TABLE apolice ADD CONSTRAINT fk_cliente__apolice FOREIGN KEY(cod_cliente) REFERENCES cliente (cod_cliente);
ALTER TABLE sinistro ADD CONSTRAINT fk_carro__sinistro FOREIGN KEY(placa) REFERENCES carro (placa);