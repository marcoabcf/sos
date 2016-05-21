
package uni.soscompany.bean;

import java.util.Date;

public class Atendimento {
    private String area;
    private String titulo;
    private String textoAtendimento;
    private String protocolo;
    private Date date;

    public void setDate(Date date) {
        this.date = date;
    }

    public Date getDate() {
        
        return date;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTextoAtendimento() {
        return textoAtendimento;
    }

    public void setTextoAtendimento(String textoAtendimento) {
        this.textoAtendimento = textoAtendimento;
    }

    public String getProtocolo() {
        return protocolo;
    }

    public void setProtocolo(String protocolo) {
        this.protocolo = protocolo;
    }
    
    
}
