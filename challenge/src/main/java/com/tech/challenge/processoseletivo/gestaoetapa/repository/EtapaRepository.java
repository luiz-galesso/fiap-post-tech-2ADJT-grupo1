package com.tech.challenge.processoseletivo.gestaoetapa.repository;

import com.tech.challenge.processoseletivo.gestaoetapa.entity.Etapa;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EtapaRepository extends JpaRepository <Etapa, Long> {

    Etapa findByDescricao(String descricao);
}
