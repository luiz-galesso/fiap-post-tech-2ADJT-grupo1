package com.tech.challenge.processoseletivo.gestaoentrevista.entity;

import com.tech.challenge.inscricao.gestaousuario.entity.Usuario;
import com.tech.challenge.inscricao.gestaovaga.entity.Vaga;
import jakarta.persistence.*;

import java.time.LocalDate;


@Entity
@Table(name = "tb_entrevista")
public class Entrevista {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String local;

    private LocalDate dataEntrevista;

    @OneToOne
    private Usuario candidato;

    @OneToOne
    private Usuario entrevistador;

    @OneToOne
    private Vaga vaga;

    public Entrevista() {
    }

    public Entrevista(Long id, String local, LocalDate dataEntrevista, Usuario candidato, Usuario entrevistador, Vaga vaga) {
        this.id = id;
        this.local = local;
        this.dataEntrevista = dataEntrevista;
        this.candidato = candidato;
        this.entrevistador = entrevistador;
        this.vaga = vaga;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLocal() {
        return local;
    }

    public void setLocal(String local) {
        this.local = local;
    }

    public LocalDate getDataEntrevista() {
        return dataEntrevista;
    }

    public void setDataEntrevista(LocalDate dataEntrevista) {
        this.dataEntrevista = dataEntrevista;
    }

    public Usuario getCandidato() {
        return candidato;
    }

    public void setCandidato(Usuario candidato) {
        this.candidato = candidato;
    }

    public Usuario getEntrevistador() {
        return entrevistador;
    }

    public void setEntrevistador(Usuario entrevistador) {
        this.entrevistador = entrevistador;
    }

    public Vaga getVaga() {
        return vaga;
    }

    public void setVaga(Vaga vaga) {
        this.vaga = vaga;
    }
}
