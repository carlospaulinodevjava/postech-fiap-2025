CREATE TABLE VEICULOS(
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  marca VARCHAR(255),
  modelo VARCHAR(255),
  placa VARCHAR(255),
  ano INT,
  cor VARCHAR(255),
  valor_diaria DECIMAL(10,2)
);

CREATE TABLE PESSOAS(
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255),
  cpf VARCHAR(255),
  telefone VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE alugueis (
     id BIGINT AUTO_INCREMENT PRIMARY KEY,
     pessoa_id BIGINT NOT NULL,
     veiculo_id BIGINT NOT NULL,
     data_inicio DATE,
     data_fim DATE,
     valor_total DECIMAL(10, 2),
     FOREIGN KEY (pessoa_id) REFERENCES pessoas(id),
     FOREIGN KEY (veiculo_id) REFERENCES veiculos(id)
);

INSERT INTO veiculos(marca, modelo, placa, ano, cor, valor_diaria) VALUES
    ('Chevrolet','Celta', 'ABC-1234', 2010, 'preta', 100.00);

INSERT INTO PESSOAS(nome, cpf, telefone, email) VALUES
    ('Carlos','99999999999-99', '11-99999999', 'carlos@fiap.com.br');


INSERT INTO alugueis (pessoa_id, veiculo_id, data_inicio, data_fim, valor_total) VALUES
    (1, 1, '2025-04-15', '2025-04-30', 1500.00);