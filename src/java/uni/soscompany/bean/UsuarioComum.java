package uni.soscompany.bean;

public class UsuarioComum {
    
    private int Id;
    private String nome;
    private String telefone;
    private Short perfil;
    private String email;
    private String senha;
    private String avatar;

    
    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public Short getPerfil() {
        return perfil;
    }

    public void setPerfil(Short perfil) {
        this.perfil = perfil;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }


}
