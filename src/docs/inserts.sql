-- Usuários - Senha 'a'
insert into usuario (id, nome, celular, email, senha, perfil)
values (1, 'Fulano de Tal', '91999991111', 'fulano@seila.com.br', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb', 'A'),
       (2, 'Beltrano Jr', '91999992222', 'beltrano@seila.com.br', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb', 'V'),
       (3, 'Ciclano da Silva', '91999993333', 'ciclano@seila.com.br', 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb', 'U');

-- Raças
INSERT INTO raca (id, nome)
VALUES (1, 'Pug'),
       (2, 'Boxer'),
       (3, 'Shih Tzu'),
       (4, 'Dachshund'),
       (5, 'Siamese cat'),
       (6, 'Persian cat'),
       (7, 'Russian Blue');

-- Animais
INSERT INTO animal (id, nome, dono, telefone, raca, tipo, nascimento)
VALUES (1, 'Don', 'Diego', '912345678', 2, 'C', '2015-07-01'),
       (2, 'Tel', 'Alessandra', '945678123', 2, 'C', '2014-10-07'),
       (3, 'Petrus', 'Augusto', '956781234', 1, 'C', '2016-01-05'),
       (4, 'Viseu', 'Diego', '912345678', 7, 'G', '2015-07-01'),
       (5, 'Duelo', 'Alessandra', '945678123', 6, 'G', '2014-10-07'),
       (6, 'Gargamel', 'Augusto', '956781234', 5, 'G', '2016-01-05');

-- Vacinas
INSERT INTO vacina (id, nome, data, animal)
VALUES (1, 'Vacina Polivalente V8', '2015-12-01', 1),  -- Don
       (2, 'Vacina Polivalente V10', '2015-01-02', 2), -- Tel
       (3, 'Vacina Polivalente V5', '2016-10-01', 6),  -- Gargamel
       (4, 'Vacina Antirrábica', '2016-12-01', 6);