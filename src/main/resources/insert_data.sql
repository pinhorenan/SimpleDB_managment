-- Fornecedor (10 registros)
INSERT INTO fornecedor (nome, contato) VALUES
  ('Fornecedor Alpha', 'alpha@fornec.com'),
  ('Fornecedor Beta', 'contato@beta.com'),
  ('Fornecedor Gamma', 'gamma@fornec.com'),
  ('Fornecedor Delta', 'delta@fornec.com'),
  ('Fornecedor Epsilon', 'epsilon@fornec.com'),
  ('Fornecedor Zeta', 'zeta@fornec.com'),
  ('Fornecedor Eta', 'eta@fornec.com'),
  ('Fornecedor Theta', 'theta@fornec.com'),
  ('Fornecedor Iota', 'iota@fornec.com'),
  ('Fornecedor Kappa', 'kappa@fornec.com');

-- Categoria (3 registros)
INSERT INTO categoria (descricao) VALUES
  ('Roupas Masculinas'),
  ('Roupas Femininas'),
  ('Agasalhos');

-- Cliente (20 registros)
INSERT INTO cliente (nome, telefone, email, senha) VALUES
  ('Alice Silva',         '(11) 91234-5678', 'alice.silva@example.com',    'senha123'),
  ('Bruno Santos',        '(11) 92345-6789', 'bruno.santos@example.com',   'senha123'),
  ('Carla Oliveira',      '(11) 93456-7890', 'carla.oliveira@example.com', 'senha123'),
  ('Diego Costa',         '(11) 94567-8901', 'diego.costa@example.com',    'senha123'),
  ('Eduarda Lima',        '(11) 95678-9012', 'eduarda.lima@example.com',   'senha123'),
  ('Fernando Rocha',      '(11) 96789-0123', 'fernando.rocha@example.com', 'senha123'),
  ('Gabriela Souza',      '(11) 97890-1234', 'gabriela.souza@example.com', 'senha123'),
  ('Henrique Martins',    '(11) 98901-2345', 'henrique.martins@example.com','senha123'),
  ('Isabela Ferreira',    '(11) 99012-3456', 'isabela.ferreira@example.com','senha123'),
  ('João Pereira',        '(11) 90123-4567', 'joao.pereira@example.com',   'senha123'),
  ('Karina Alves',        '(11) 91234-5679', 'karina.alves@example.com',   'senha123'),
  ('Leandro Carvalho',    '(11) 92345-6780', 'leandro.carvalho@example.com','senha123'),
  ('Mariana Gomes',       '(11) 93456-7891', 'mariana.gomes@example.com',  'senha123'),
  ('Nicolas Braga',       '(11) 94567-8902', 'nicolas.braga@example.com',  'senha123'),
  ('Olivia Ribeiro',      '(11) 95678-9013', 'olivia.ribeiro@example.com', 'senha123'),
  ('Paulo Mendes',        '(11) 96789-0124', 'paulo.mendes@example.com',   'senha123'),
  ('Quintina Silva',      '(11) 97890-1235', 'quintina.silva@example.com', 'senha123'),
  ('Rafael Dias',         '(11) 98901-2346', 'rafael.dias@example.com',    'senha123'),
  ('Sofia Teixeira',      '(11) 99012-3457', 'sofia.teixeira@example.com', 'senha123'),
  ('Tomás Almeida',       '(11) 90123-4568', 'tomas.almeida@example.com',  'senha123');

-- Endereço do Cliente (endereco_cliente)
INSERT INTO endereco_cliente (rua, numero, cidade, estado, cep, complemento, id_cliente) VALUES
  ('Rua A', '123', 'Cidade A', 'Estado A', '00000-001', '', 1),
  ('Av. B', '234', 'Cidade B', 'Estado B', '00000-002', '', 2),
  ('Rua C', '345', 'Cidade C', 'Estado C', '00000-003', '', 3),
  ('Av. D', '456', 'Cidade D', 'Estado D', '00000-004', '', 4),
  ('Rua E', '567', 'Cidade E', 'Estado E', '00000-005', '', 5),
  ('Av. F', '678', 'Cidade F', 'Estado F', '00000-006', '', 6),
  ('Rua G', '789', 'Cidade G', 'Estado G', '00000-007', '', 7),
  ('Av. H', '890', 'Cidade H', 'Estado H', '00000-008', '', 8),
  ('Rua I', '901', 'Cidade I', 'Estado I', '00000-009', '', 9),
  ('Av. J', '101', 'Cidade J', 'Estado J', '00000-010', '', 10),
  ('Rua K', '112', 'Cidade K', 'Estado K', '00000-011', '', 11),
  ('Av. L', '123', 'Cidade L', 'Estado L', '00000-012', '', 12),
  ('Rua M', '134', 'Cidade M', 'Estado M', '00000-013', '', 13),
  ('Av. N', '145', 'Cidade N', 'Estado N', '00000-014', '', 14),
  ('Rua O', '156', 'Cidade O', 'Estado O', '00000-015', '', 15),
  ('Av. P', '167', 'Cidade P', 'Estado P', '00000-016', '', 16),
  ('Rua Q', '178', 'Cidade Q', 'Estado Q', '00000-017', '', 17),
  ('Av. R', '189', 'Cidade R', 'Estado R', '00000-018', '', 18),
  ('Rua S', '190', 'Cidade S', 'Estado S', '00000-019', '', 19),
  ('Av. T', '201', 'Cidade T', 'Estado T', '00000-020', '', 20);

-- Produto (30 registros)
-- Note: mapeamos 'Roupas Masculinas' -> 1, 'Roupas Femininas' -> 2, 'Agasalhos' -> 3;
-- e para id_fornecedor, consideramos a ordem de inserção (1 a 10)
INSERT INTO produto (nome, preco, estoque, descricao, id_categoria, id_fornecedor) VALUES
  ('Camiseta Básica',        29.90, 100, 'Camiseta de algodão básica',         1, 1),
  ('Camiseta Estampada',     39.90,  80, 'Camiseta com estampa moderna',       2, 2),
  ('Calça Jeans',            79.90, 120, 'Calça jeans de corte reto',          1, 3),
  ('Vestido Floral',         99.90,  70, 'Vestido com estampa floral',         2, 4),
  ('Blusa de Frio',          69.90,  90, 'Blusa de frio para dias frios',      3, 5),
  ('Jaqueta de Couro',      149.90,  50, 'Jaqueta de couro legítimo',          3, 6),
  ('Saia Midi',             59.90, 110, 'Saia midi com corte evasê',          2, 7),
  ('Shorts Jeans',          49.90, 130, 'Shorts jeans para o verão',          1, 8),
  ('Calça de Moletom',       39.90,  95, 'Calça de moletom confortável',       1, 9),
  ('Legging Esportiva',      34.90,  85, 'Legging para atividades físicas',    2, 10),
  ('Suéter de Tricô',        89.90,  60, 'Suéter aconchegante de tricô',       3, 1),
  ('Camisa Social',          79.90,  75, 'Camisa social para ocasiões formais', 1, 2),
  ('Blusa de Seda',         129.90,  50, 'Blusa de seda elegante',             2, 3),
  ('Calça Legging',          59.90,  80, 'Calça legging confortável',          2, 4),
  ('Camiseta Polo',          49.90,  90, 'Camiseta polo clássica',             1, 5),
  ('Camisa Jeans',          69.90, 110, 'Camisa jeans casual',                1, 6),
  ('Vestido Longo',        109.90,  60, 'Vestido longo para festas',          2, 7),
  ('Blazer Casual',         119.90,  70, 'Blazer casual para eventos',         1, 8),
  ('Falda Midi',            54.90,  95, 'Falda midi elegante',                2, 9),
  ('Macacão',               89.90,  85, 'Macacão confortável',                2, 10),
  ('Camiseta Polo Premium', 59.90, 100, 'Camiseta polo de alta qualidade',      1, 1),
  ('Casaco de Lã',         139.90,  60, 'Casaco de lã para o inverno',         3, 2),
  ('Regata Básica',         19.90, 150, 'Regata básica para o verão',         1, 3),
  ('Blusa Cropped',         44.90,  90, 'Blusa cropped moderna',              2, 4),
  ('Calça Flare',           74.90,  80, 'Calça flare estilosa',               2, 5),
  ('Shorts de Moletom',     39.90, 100, 'Shorts confortáveis de moletom',     1, 6),
  ('Suéter Oversized',      89.90,  70, 'Suéter oversized para dias frios',   3, 7),
  ('Camisa Polo Premium',   69.90,  95, 'Camiseta polo premium',              1, 8),
  ('Vestido Casual',        79.90,  80, 'Vestido casual para o dia a dia',     2, 9),
  ('Blusa de Manga Longa',  49.90, 110, 'Blusa com mangas longas',            2, 10);

-- Estoque foi integrado à tabela produto, portanto já está definido nos INSERTs acima.

-- Compra (25 registros)
-- Valor_total é inicializado em 0 (será recalculado pela trigger)
INSERT INTO compra (data_pedido, status, id_cliente, valor_total) VALUES
  ('2025-03-01', 'Finalizado', 1, 0),
  ('2025-03-02', 'Em aberto',  2, 0),
  ('2025-03-03', 'Cancelado',  3, 0),
  ('2025-03-04', 'Finalizado', 4, 0),
  ('2025-03-05', 'Em aberto',  5, 0),
  ('2025-03-06', 'Finalizado', 6, 0),
  ('2025-03-07', 'Finalizado', 7, 0),
  ('2025-03-08', 'Em aberto',  8, 0),
  ('2025-03-09', 'Em aberto',  9, 0),
  ('2025-03-10', 'Finalizado', 10, 0),
  ('2025-03-11', 'Finalizado', 11, 0),
  ('2025-03-12', 'Em aberto',  12, 0),
  ('2025-03-13', 'Finalizado', 13, 0),
  ('2025-03-14', 'Cancelado',  14, 0),
  ('2025-03-15', 'Em aberto',  15, 0),
  ('2025-03-16', 'Finalizado', 16, 0),
  ('2025-03-17', 'Finalizado', 17, 0),
  ('2025-03-18', 'Em aberto',  18, 0),
  ('2025-03-19', 'Finalizado', 19, 0),
  ('2025-03-20', 'Finalizado', 20, 0),
  ('2025-03-21', 'Em aberto',  1, 0),
  ('2025-03-22', 'Finalizado', 2, 0),
  ('2025-03-23', 'Em aberto',  3, 0),
  ('2025-03-24', 'Finalizado', 4, 0),
  ('2025-03-25', 'Finalizado', 5, 0);

-- Endereço de Entrega (para compras com status 'Finalizado')
INSERT INTO endereco_entrega (rua, numero, cidade, estado, cep, complemento, id_compra) VALUES
  ('Rua Entrega 1', '10', 'Cidade X', 'Estado X', '11111-111', '', 1),
  ('Rua Entrega 2', '20', 'Cidade Y', 'Estado Y', '22222-222', '', 4),
  ('Rua Entrega 3', '30', 'Cidade Z', 'Estado Z', '33333-333', '', 6),
  ('Rua Entrega 4', '40', 'Cidade W', 'Estado W', '44444-444', '', 7),
  ('Rua Entrega 5', '50', 'Cidade V', 'Estado V', '55555-555', '', 10),
  ('Rua Entrega 6', '60', 'Cidade U', 'Estado U', '66666-666', '', 11),
  ('Rua Entrega 7', '70', 'Cidade T', 'Estado T', '77777-777', '', 13),
  ('Rua Entrega 8', '80', 'Cidade S', 'Estado S', '88888-888', '', 16),
  ('Rua Entrega 9', '90', 'Cidade R', 'Estado R', '99999-999', '', 17),
  ('Rua Entrega 10', '100', 'Cidade Q', 'Estado Q', '10101-101', '', 19),
  ('Rua Entrega 11', '110', 'Cidade P', 'Estado P', '12121-121', '', 20),
  ('Rua Entrega 12', '120', 'Cidade O', 'Estado O', '13131-131', '', 22),
  ('Rua Entrega 13', '130', 'Cidade N', 'Estado N', '14141-141', '', 24),
  ('Rua Entrega 14', '140', 'Cidade M', 'Estado M', '15151-151', '', 25);

-- ItemCompra (45 registros)
INSERT INTO item_compra (id_compra, id_produto, quantidade, preco_unitario) VALUES
  (1,  1, 2,  29.90),
  (1,  3, 1,  79.90),
  (2,  2, 1,  39.90),
  (2,  5, 2,  69.90),
  (3,  4, 1,  99.90),
  (4,  6, 1, 149.90),
  (4,  7, 2,  59.90),
  (5,  8, 1,  49.90),
  (5,  9, 3,  39.90),
  (6, 10, 2,  34.90),
  (6, 12, 1,  79.90),
  (7, 11, 1,  89.90),
  (7, 13, 2, 129.90),
  (8, 14, 1,  59.90),
  (8, 15, 2,  49.90),
  (9, 16, 1,  69.90),
  (9, 17, 1, 109.90),
  (10, 18, 1, 119.90),
  (10, 19, 2,  54.90),
  (11, 20, 1,  89.90),
  (11, 21, 2,  59.90),
  (12, 22, 1, 139.90),
  (12, 23, 3,  19.90),
  (13, 24, 1,  44.90),
  (13, 25, 2,  74.90),
  (14, 26, 1,  39.90),
  (14, 27, 1,  89.90),
  (15, 28, 2,  69.90),
  (15, 29, 1,  79.90),
  (16, 30, 1,  49.90),
  (16,  1, 2,  29.90),
  (17,  2, 1,  39.90),
  (17,  3, 1,  79.90),
  (18,  4, 2,  99.90),
  (18,  5, 1,  69.90),
  (19,  6, 1, 149.90),
  (19,  7, 2,  59.90),
  (20,  8, 1,  49.90),
  (20,  9, 1,  39.90),
  (21, 10, 3,  34.90),
  (21, 11, 1,  89.90),
  (22, 12, 1,  79.90),
  (22, 13, 1, 129.90),
  (23, 14, 2,  59.90),
  (23, 15, 1,  49.90),
  (24, 16, 2,  69.90),
  (24, 17, 1, 109.90),
  (25, 18, 1, 119.90),
  (25, 19, 1,  54.90);

-- Troca/Devolução (exemplo único)
INSERT INTO troca_devolucao (data_solicitacao, motivo, status, id_compra) VALUES
  ('2025-03-05', 'Produto danificado', 'Aprovada', 3);

-- Avaliação (exemplo único)
INSERT INTO avaliacao (nota, comentario, data, id_cliente, id_compra) VALUES
  (5, 'Excelente serviço e produto', '2025-03-10', 1, 1);
