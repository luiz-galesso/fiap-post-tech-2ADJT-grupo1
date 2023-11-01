--INSERCAO DE PERFIL--
INSERT INTO TB_PERFIL VALUES (NEXT VALUE FOR perfil_sequence, 'GESTOR');
INSERT INTO TB_PERFIL VALUES (NEXT VALUE FOR perfil_sequence, 'RECRUTADOR');
INSERT INTO TB_PERFIL VALUES (NEXT VALUE FOR perfil_sequence, 'CANDIDATO');
INSERT INTO TB_PERFIL VALUES (NEXT VALUE FOR perfil_sequence, 'ADMINISTRADOR');

--INSERCAO DE USUARIOS--
INSERT INTO TB_USUARIO (CPF, NOME, CELULAR, GENERO, ESTADO_CIVIL, CEP, NUMERO, COMPLEMENTO, DATA_NASCIMENTO, ID_PERFIL, NOME_PAI, NOME_MAE, NOME_USUARIO)
VALUES ('98353850095', 'Steve Jobs', '11999999999', 'Masculino', 'Solteiro','09340340', '15', null, '1964-03-12', 1, 'Rogerio Jobs', 'Ana Luiz Jobs', 'steve.jobs@foomail.com');
INSERT INTO TB_USUARIO (CPF, NOME,  CELULAR, GENERO, ESTADO_CIVIL, CEP, NUMERO, COMPLEMENTO, DATA_NASCIMENTO, ID_PERFIL, NOME_PAI, NOME_MAE, NOME_USUARIO)
VALUES ('49968313084', 'Bill Gates', '11555555555', 'Masculino', 'Casado','08340340', '130', 'apartamento 3', '1972-11-03', 1, 'Ronaldo Gates', 'Maria Faria Gates', 'bill.gates@foomail.com');
INSERT INTO TB_USUARIO (CPF, NOME,  CELULAR, GENERO, ESTADO_CIVIL, CEP, NUMERO, COMPLEMENTO, DATA_NASCIMENTO, ID_PERFIL, NOME_PAI, NOME_MAE, NOME_USUARIO)
VALUES ('47881175095', 'Elon Musk', '11222222222', 'Masculino', 'Solteiro','03560780', '99', 'ap 7', '1988-12-09', 2, 'Cleber Silva Musk', 'Suzana Pereira Musk', 'elon.musk@foomail.com');
INSERT INTO TB_USUARIO (CPF, NOME, CELULAR, GENERO, ESTADO_CIVIL, CEP, NUMERO, COMPLEMENTO, DATA_NASCIMENTO, ID_PERFIL, NOME_PAI, NOME_MAE, NOME_USUARIO)
VALUES ('12179330006', 'Jeff Bezos', '1133333333','Masculino', 'Solteiro','34560390', '1034', null, '1975-07-09', 2, 'Rodrigo Bezos', 'Aparecida Maria Bezos', 'jeff.bezos@foomail.com');
INSERT INTO TB_USUARIO (CPF, NOME, CELULAR, GENERO, ESTADO_CIVIL, CEP, NUMERO, COMPLEMENTO, DATA_NASCIMENTO, ID_PERFIL, NOME_PAI, NOME_MAE, NOME_USUARIO)
VALUES ('83761594020', 'Mark Zuckerberg', '11545454545', 'Masculino', 'Solteiro','09340340', '1', null, '1964-03-12', 3, 'Claudio Zuckerberg', 'Maria Rosana Leite', 'mark.zuckerberg@foomail.com');
INSERT INTO TB_USUARIO (CPF, NOME, CELULAR, GENERO, ESTADO_CIVIL, CEP, NUMERO, COMPLEMENTO, DATA_NASCIMENTO, ID_PERFIL, NOME_PAI, NOME_MAE, NOME_USUARIO)
VALUES ('48515000091', 'Susan Wojcick', null, 'Feminino', 'Casado','07620630', '999', null, '1984-12-01', 3, 'Marcos Carlos Wojcick', 'Bianca Wojcick', 'susan.wojcick@foomail.com');
INSERT INTO TB_USUARIO (CPF, NOME, CELULAR, GENERO, ESTADO_CIVIL, CEP, NUMERO, COMPLEMENTO, DATA_NASCIMENTO, ID_PERFIL, NOME_PAI, NOME_MAE, NOME_USUARIO)
VALUES ('07867470050', 'Sherly Sandberg', '11666666666','Feminino', 'Solteiro','07340880', 'S/N', null, '1964-03-12', 3, null, 'Joana Sandberg', 'sherly.sandberg@foomail.com');
INSERT INTO TB_USUARIO (CPF, NOME, CELULAR, GENERO, ESTADO_CIVIL, CEP, NUMERO, COMPLEMENTO, DATA_NASCIMENTO, ID_PERFIL, NOME_PAI, NOME_MAE, NOME_USUARIO)
VALUES ('05012529081', 'Tim Cook', '11777777777','Masculino', 'Solteiro','06500450', '17b', null, '1992-04-11', 3, 'Bruno Cook', 'Helena Maia Cook', 'tim.cook@foomail.com');
INSERT INTO TB_USUARIO (CPF, NOME, CELULAR, GENERO, ESTADO_CIVIL, CEP, NUMERO, COMPLEMENTO, DATA_NASCIMENTO, ID_PERFIL, NOME_PAI, NOME_MAE, NOME_USUARIO)
VALUES ('63897500051', 'Larry Page', null, 'Masculino', 'Casado','09500700', '2345', 'ap 703', '1977-11-11', 4, 'Leandro Page', 'Alberta Page', 'larry.page@foomail.com');

--INSERCAO DE ETAPAS--
INSERT INTO TB_ETAPA VALUES (NEXT VALUE FOR etapa_sequence, 'INSCRICAO');
INSERT INTO TB_ETAPA VALUES (NEXT VALUE FOR etapa_sequence, 'ENTREVISTA');
INSERT INTO TB_ETAPA VALUES (NEXT VALUE FOR etapa_sequence, 'ENTREVISTA TECNICA');
INSERT INTO TB_ETAPA VALUES (NEXT VALUE FOR etapa_sequence, 'SELECAO');
INSERT INTO TB_ETAPA VALUES (NEXT VALUE FOR etapa_sequence, 'PROPOSTA');

--INSERCAO DE CARREIRAS--
INSERT INTO TB_CARREIRA VALUES (NEXT VALUE FOR carreira_sequence, 'DESENVOLVEDOR');
INSERT INTO TB_CARREIRA VALUES (NEXT VALUE FOR carreira_sequence, 'PRODUCT OWNER');
INSERT INTO TB_CARREIRA VALUES (NEXT VALUE FOR carreira_sequence, 'GERENTE');


--INSERCAO DE SOLICITACAO--
INSERT INTO TB_SOLICITACAO_VAGA
  ( ID, QUANTIDADE_DE_VAGAS, CARREIRA_ID, SOLICITANTE_CPF, DATA_SOLICITACAO, NIVEL, TITULO, DESCRICAO, SITUACAO, AVALIADOR_CPF, DATA_AVALIACAO, MENSAGEM, DATA_EXPIRACAO) VALUES
  (NEXT VALUE FOR solicitacao_sequence, 3, 1, '98353850095','2023-01-25','JUNIOR', 'Programador','Programador com experiência em Java', 'ABERTA',null, null, null, '2024-01-01');
INSERT INTO TB_SOLICITACAO_VAGA
  ( ID, QUANTIDADE_DE_VAGAS, CARREIRA_ID, SOLICITANTE_CPF, DATA_SOLICITACAO, NIVEL, TITULO, DESCRICAO, SITUACAO, AVALIADOR_CPF, DATA_AVALIACAO, MENSAGEM, DATA_EXPIRACAO) VALUES
  (NEXT VALUE FOR solicitacao_sequence, 5, 2, '49968313084','2023-02-19','PLENO', 'Product Owner','Product Owner para um sistema de gerenciamento de estoque', 'ABERTA',null, null, null,'2024-01-01');
INSERT INTO TB_SOLICITACAO_VAGA
   ( ID, QUANTIDADE_DE_VAGAS, CARREIRA_ID, SOLICITANTE_CPF, DATA_SOLICITACAO, NIVEL, TITULO, DESCRICAO, SITUACAO, AVALIADOR_CPF, DATA_AVALIACAO, MENSAGEM, DATA_EXPIRACAO) VALUES
   (NEXT VALUE FOR solicitacao_sequence, 10, 3, '98353850095','2023-03-22','SENIOR', 'Gerente de Operação','Gerente para atuar na área de operações logísticas', 'ABERTA',null, null, null,'2024-01-01');
INSERT INTO TB_SOLICITACAO_VAGA
   ( ID, QUANTIDADE_DE_VAGAS, CARREIRA_ID, SOLICITANTE_CPF, DATA_SOLICITACAO, NIVEL, TITULO, DESCRICAO, SITUACAO, AVALIADOR_CPF, DATA_AVALIACAO, MENSAGEM, DATA_EXPIRACAO) VALUES
   (NEXT VALUE FOR solicitacao_sequence, 1, 1, '49968313084','2023-04-11','JUNIOR', 'Programador','Programador com experiência em Python', 'APROVADA','47881175095', '2023-04-17', null,'2024-01-01');
INSERT INTO TB_SOLICITACAO_VAGA
  ( ID, QUANTIDADE_DE_VAGAS, CARREIRA_ID, SOLICITANTE_CPF, DATA_SOLICITACAO, NIVEL, TITULO, DESCRICAO, SITUACAO, AVALIADOR_CPF, DATA_AVALIACAO, MENSAGEM, DATA_EXPIRACAO) VALUES
  (NEXT VALUE FOR solicitacao_sequence, 7, 2, '98353850095','2023-07-07','SENIOR', 'Product Owner','Product Owner para um sistema de ERP', 'REPROVADA','12179330006', '2023-07-07', 'Falta de verba','2024-01-01');

--INSERCAO DE VAGAS--
INSERT INTO TB_VAGA
   (ID, QUANTIDADE_DE_VAGAS, CARREIRA_ID, CRIADOR_CPF, DATA_CRIACAO, NIVEL, TITULO, DESCRICAO, SITUACAO, SOLICITACAO_ID, DATA_EXPIRACAO) VALUES
   (NEXT VALUE FOR vaga_sequence, 3, 1, '98353850095','2023-01-25','JUNIOR', 'Programador','Programador com experiência em Java', 'ABERTA',null, '2024-07-07');
INSERT INTO TB_VAGA
   (ID, QUANTIDADE_DE_VAGAS, CARREIRA_ID, CRIADOR_CPF, DATA_CRIACAO, NIVEL, TITULO, DESCRICAO, SITUACAO, SOLICITACAO_ID, DATA_EXPIRACAO) VALUES
   (NEXT VALUE FOR vaga_sequence, 5, 2, '49968313084','2023-02-19','PLENO', 'Product Owner','Product Owner para um sistema de gerenciamento de estoque', 'ABERTA', null,'2024-07-07');
INSERT INTO TB_VAGA
   (ID, QUANTIDADE_DE_VAGAS, CARREIRA_ID, CRIADOR_CPF, DATA_CRIACAO, NIVEL, TITULO, DESCRICAO, SITUACAO, SOLICITACAO_ID, DATA_EXPIRACAO) VALUES
   (NEXT VALUE FOR vaga_sequence, 10, 3, '98353850095','2023-03-22','SENIOR', 'Gerente de Operação','Gerente para atuar na área de operações logísticas', 'ABERTA', null, '2024-07-07');
INSERT INTO TB_VAGA
   (ID, QUANTIDADE_DE_VAGAS, CARREIRA_ID, CRIADOR_CPF, DATA_CRIACAO, NIVEL, TITULO, DESCRICAO, SITUACAO, SOLICITACAO_ID, DATA_EXPIRACAO) VALUES
   (NEXT VALUE FOR vaga_sequence, 1, 1, '49968313084','2023-04-11','JUNIOR', 'Programador','Programador com experiência em Python', 'SUSPENSA',null, '2023-07-07');
INSERT INTO TB_VAGA
   (ID, QUANTIDADE_DE_VAGAS, CARREIRA_ID, CRIADOR_CPF, DATA_CRIACAO, NIVEL, TITULO, DESCRICAO, SITUACAO, SOLICITACAO_ID, DATA_EXPIRACAO) VALUES
   (NEXT VALUE FOR vaga_sequence, 7, 2, '98353850095','2023-07-07','SENIOR', 'Product Owner','Product Owner para um sistema de ERP', 'FINALIZADA',null, '2024-07-07');

--INSERT DE ETAPA VAGA ORDEM--
INSERT INTO TB_VAGA_ETAPA
   (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
   (1, 1, 1);
INSERT INTO TB_VAGA_ETAPA
   (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
   (2, 2, 1);
INSERT INTO TB_VAGA_ETAPA
   (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
   (3, 3, 1);
INSERT INTO TB_VAGA_ETAPA
   (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
   (4, 4, 1);
INSERT INTO TB_VAGA_ETAPA
   (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
   (5, 5, 1);

 INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (1, 1, 2);
 INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (2, 2, 2);
  INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (3, 2, 2);
 INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (4, 3, 2);
 INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (5, 4, 2);
 INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (6, 5, 2);

INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (1, 1, 3);
 INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (2, 2, 3);
  INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (3, 3, 3);
 INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (4, 4, 3);
 INSERT INTO TB_VAGA_ETAPA
    (ORDEM, ETAPA_ID_ETAPA,VAGA_ID ) VALUES
    (5, 5, 3);

--INSERT DE CANDIDATURA--
INSERT INTO TB_CANDIDATURA
    (ID, VAGA_ID, CANDIDATO_CPF ) VALUES
    (NEXT VALUE FOR candidatura_sequence, 1,'07867470050' );
INSERT INTO TB_CANDIDATURA
    (ID, VAGA_ID, CANDIDATO_CPF ) VALUES
    (NEXT VALUE FOR candidatura_sequence, 2,'07867470050');
INSERT INTO TB_CANDIDATURA
    (ID, VAGA_ID, CANDIDATO_CPF ) VALUES
    (NEXT VALUE FOR candidatura_sequence, 3,'07867470050' );

