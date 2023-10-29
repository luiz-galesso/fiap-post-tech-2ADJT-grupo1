package com.tech.challenge.processoseletivo.gestaoentrevista.service;

import com.tech.challenge.inscricao.gestaousuario.controller.exception.ControllerNotFoundException;
import com.tech.challenge.inscricao.gestaoperfil.entity.Perfil;
import com.tech.challenge.inscricao.gestaoperfil.service.PerfilService;
import com.tech.challenge.inscricao.gestaousuario.entity.Usuario;
import com.tech.challenge.inscricao.gestaousuario.service.UsuarioService;
import com.tech.challenge.processoseletivo.gestaoentrevista.dto.EntrevistaRequestDTO;
import com.tech.challenge.processoseletivo.gestaoentrevista.dto.EntrevistaResponseDTO;
import com.tech.challenge.processoseletivo.gestaoentrevista.entity.Entrevista;
import com.tech.challenge.processoseletivo.gestaoentrevista.repository.EntrevistaRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.stream.Collectors;

@Service
public class EntrevistaService {

    private final EntrevistaRepository entrevistaRepository;
    private final UsuarioService usuarioService;
    private final PerfilService perfilService;

    @Autowired
    public EntrevistaService(EntrevistaRepository entrevistaRepository, UsuarioService usuarioService, PerfilService perfilService) {
        this.entrevistaRepository = entrevistaRepository;
        this.usuarioService = usuarioService;
        this.perfilService = perfilService;
    }

    public Collection<EntrevistaResponseDTO> findAll() {
        var entrevistas = entrevistaRepository.findAll();
        return entrevistas
                .stream()
                .map(this::toEntrevistaResponseDTO)
                .collect(Collectors.toList());
    }

    public EntrevistaResponseDTO findById(Long id) {
        var entrevista = entrevistaRepository.findById(id).orElseThrow(() -> new ControllerNotFoundException("Entrevista não encontrada"));
        return toEntrevistaResponseDTO(entrevista);
    }

    public EntrevistaResponseDTO findByUsuario(String idUsuario, String tipoPerfil) {
        try {
            var entrevista = new Entrevista();
            Usuario usuario = usuarioService.findById(idUsuario);
            Perfil perfil = perfilService.findById(usuario.getPerfil().getId());

            if (perfil.getDescricao().toUpperCase().equals("CANDIDATO") && tipoPerfil.toUpperCase().equals("CANDIDATO")) {
                entrevista = entrevistaRepository.findByCandidato(usuario).orElseThrow(() -> new ControllerNotFoundException("Candidato sem Entrevista"));
            } else if (!perfil.getDescricao().toUpperCase().equals("CANDIDATO") && tipoPerfil.toUpperCase().equals("ENTREVISTADOR")) {
                entrevista = entrevistaRepository.findByEntrevistador(usuario).orElseThrow(() -> new ControllerNotFoundException("Entrevistador sem Entrevista"));
            }

            return toEntrevistaResponseDTO(entrevista);
        } catch (EntityNotFoundException e) {
            throw new ControllerNotFoundException("Usuario não encontrado");
        } catch (NullPointerException e) {
            throw new ControllerNotFoundException("Usuario com perfil Invalido");
        }
    }

    public EntrevistaResponseDTO save(EntrevistaRequestDTO entrevistaDTO) {
        Entrevista entrevista = toEntrevista(entrevistaDTO);
        entrevista = entrevistaRepository.save(entrevista);
        return toEntrevistaResponseDTO(entrevista);
    }

    public EntrevistaResponseDTO update(Long id, EntrevistaRequestDTO entrevistaDTO) {
        try {
            Entrevista entrevista = entrevistaRepository.getReferenceById(id);
            entrevista.setEntrevistador(usuarioService.findById(entrevistaDTO.entrevistador()));
            entrevista.setDataEntrevista(entrevistaDTO.dataEntrevista());
            entrevista.setLocal(entrevistaDTO.local());
            entrevista.setEntrevistador(usuarioService.findById(entrevistaDTO.candidato()));
            entrevista = entrevistaRepository.save(entrevista);

            return toEntrevistaResponseDTO(entrevista);
        } catch (EntityNotFoundException e) {
            throw new ControllerNotFoundException("Entrevista não encontrada");
        }
    }

    public void delete(Long id) {
        entrevistaRepository.deleteById(id);
    }

    private EntrevistaResponseDTO toEntrevistaResponseDTO(Entrevista entrevista) {
        return new EntrevistaResponseDTO(entrevista.getId(),
                entrevista.getEntrevistador().getNome(),
                entrevista.getDataEntrevista(),
                entrevista.getLocal(),
                entrevista.getCandidato().getNome());
    }

    private Entrevista toEntrevista(EntrevistaRequestDTO entrevistaDTO) {
        return new Entrevista(entrevistaDTO.id(),
                entrevistaDTO.local(),
                entrevistaDTO.dataEntrevista(),
                usuarioService.findById(entrevistaDTO.candidato()),
                usuarioService.findById(entrevistaDTO.entrevistador())
        );
    }
}
