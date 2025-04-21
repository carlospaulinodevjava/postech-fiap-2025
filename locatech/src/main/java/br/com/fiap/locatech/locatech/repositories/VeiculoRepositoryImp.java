package br.com.fiap.locatech.locatech.repositories;

import br.com.fiap.locatech.locatech.entities.Veiculo;
import org.springframework.jdbc.core.simple.JdbcClient;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class VeiculoRepositoryImp implements VeiculoRepository{

    private final JdbcClient jdbcClient;

    public VeiculoRepositoryImp(JdbcClient jdbcClient){
        this.jdbcClient = jdbcClient;
    }

    @Override
    public Optional<Veiculo> findById(Long id) {
        return this.jdbcClient
                .sql("SELECT * FROM veiculos WHERE id = :id")
                .param("id",id)
                .query(Veiculo.class)
                .optional();
    }

    @Override
    public List<Veiculo> findAll(int size, int offset) {
        return List.of();
    }

    @Override
    public Integer save(Veiculo veiculo) {
        return 0;
    }

    @Override
    public Integer update(Veiculo veiculo, Long id) {
        return 0;
    }

    @Override
    public Integer delete(Long id) {
        return 0;
    }
}
