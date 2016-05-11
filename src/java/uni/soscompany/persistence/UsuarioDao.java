
package uni.soscompany.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import uni.soscompany.bean.Usuario;
import uni.soscompany.connection.ConnectionFactory;

public class UsuarioDao {

    private String sql;

    public boolean incluir(Usuario usuario) {
        boolean isOk = false;
        PreparedStatement ps = null;
        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return isOk;
        }

        sql = "INSERT INTO usuario(nome, telefone, perfil, "
                + "email, senha, avatar, cpf"
                + "VALUES(?,?,?,?,?,?,?);";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, usuario.getNome());
            ps.setString(2, usuario.getTelefone());
            ps.setShort(3, usuario.getPerfil());
            ps.setString(4, usuario.getEmail());
            ps.setString(5, usuario.getSenha());
            ps.setString(6, usuario.getAvatar());
            ps.setInt(7, usuario.getCpf());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public boolean alterar(Usuario usuario) {
        boolean isOk = false;
        PreparedStatement ps = null;
        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return isOk;
        }

        sql = "UPDATE usuario SET nome=?, telefone=?, "
                + "perfil=?, email=?, senha=?, avatar=?, cpf=? "
                + "WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, usuario.getNome());
            ps.setString(2, usuario.getTelefone());
            ps.setShort(3, usuario.getPerfil());
            ps.setString(4, usuario.getEmail());
            ps.setString(5, usuario.getSenha());
            ps.setString(6, usuario.getAvatar());
            ps.setInt(7, usuario.getCpf());
            ps.setInt(8, usuario.getId());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public boolean excluir(int id) {
        boolean isOk = false;
        PreparedStatement ps = null;
        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return isOk;
        }

        sql = "DELETE FROM usuario WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public Usuario getUsuario(int id) {
        Usuario usuario = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return usuario;
        }

        sql = "SELECT * FROM usuario WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setTelefone(rs.getString("telefone"));
                usuario.setPerfil(rs.getShort("perfil"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setAvatar(rs.getString("avatar"));
                usuario.setCpf(rs.getInt("cpf"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

        return usuario;
    }

    public List<Usuario> getUsuarios() {
        List<Usuario> lstUsuarios = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return lstUsuarios;
        }

        sql = "SELECT * FROM usuario ORDER BY nome;";

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            lstUsuarios = new ArrayList<>();

            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setTelefone(rs.getString("telefone"));
                usuario.setPerfil(rs.getShort("perfil"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setAvatar(rs.getString("avatar"));
                usuario.setCpf(rs.getInt("cpf"));
                lstUsuarios.add(usuario);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

        return lstUsuarios;
    }

}
