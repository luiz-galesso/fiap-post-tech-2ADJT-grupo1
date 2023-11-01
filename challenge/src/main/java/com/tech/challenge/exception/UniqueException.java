package com.tech.challenge.exception;

public class UniqueException extends RuntimeException{
    private String campo;

    public UniqueException(String string) {
        super(string);
    }

    public UniqueException(String mensagem, String campo) {
        super(mensagem);
        this.campo = campo;
    }

    public String getCampo() {
        return campo;
    }
}
