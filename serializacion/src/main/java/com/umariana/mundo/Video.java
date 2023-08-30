
package com.umariana.mundo;

/**
 *
 * @author Juan Goyes
 */
public class Video {
    private int idVideo;
    private String titulo;
    private String autor;
    private String anio;
    private String genero;
    private String url;
    private String letra;

    /**
     * Constructor vacio
     */
    public Video() {
    }
    
    /**
     * Metodo constructor con atributos
     * @param idVideo
     * @param titulo
     * @param autor
     * @param anio
     * @param genero
     * @param url
     * @param letra 
     */
    public Video(int idVideo, String titulo, String autor, String anio, String genero, String url, String letra) {
        this.idVideo = idVideo;
        this.titulo = titulo;
        this.autor = autor;
        this.anio = anio;
        this.genero = genero;
        this.url = url;
        this.letra = letra;
    }

    //geters and setters 
    public int getIdVideo() {
        return idVideo;
    }

    public void setIdVideo(int idVideo) {
        this.idVideo = idVideo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getLetra() {
        return letra;
    }

    public void setLetra(String letra) {
        this.letra = letra;
    }
    
    
    
}
