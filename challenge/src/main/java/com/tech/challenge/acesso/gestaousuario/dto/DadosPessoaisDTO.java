package com.tech.challenge.acesso.gestaousuario.dto;

import java.time.LocalDate;

public record DadosPessoaisDTO(

        String estadoCivil,
        String genero,
        LocalDate dataNascimento,
        String celular,
        String naturalidade,
        FiliacaoDTO filiacao,
        EnderecoDTO endereco
) {
};
