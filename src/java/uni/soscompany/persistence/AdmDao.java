
package uni.soscompany.persistence;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import uni.soscompany.bean.Adm;
import uni.soscompany.bean.Adm;
import uni.soscompany.connection.ConnectionFactory;


public class AdmDao {
    
    private String sql;
    
    public boolean incluir(Adm adm) {
        boolean isOk = false;
        PreparedStatement ps = null;
        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return isOk;
        }

        sql = "INSERT INTO adm(nome, telefone, perfil, "
                + "email, senha, avatar"
                + "VALUES(?,?,?,?,?,?);";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, adm.getNome());
            ps.setString(2, adm.getTelefone());
            ps.setShort(3, adm.getPerfil());
            ps.setString(4, adm.getEmail());
            ps.setString(5, adm.getSenha());
            ps.setString(6, adm.getAvatar());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(AdmDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public boolean alterar(Adm adm) {
        boolean isOk = false;
        PreparedStatement ps = null;
        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return isOk;
        }

        sql = "UPDATE adm SET nome=?, telefone=?, "
                + "perfil=?, email=?, senha=?, avatar=?"
                + "WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, adm.getNome());
            ps.setString(2, adm.getTelefone());
            ps.setShort(3, adm.getPerfil());
            ps.setString(4, adm.getEmail());
            ps.setString(5, adm.getSenha());
            ps.setString(6, adm.getAvatar());
            ps.setInt(7, adm.getId());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(AdmDao.class.getName()).log(Level.SEVERE, null, ex);
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

        sql = "DELETE FROM adm WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(AdmDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public Adm getAdm(int id) {
        Adm adm = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return adm;
        }

        sql = "SELECT * FROM adm WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                adm = new Adm();
                adm.setId(rs.getInt("id"));
                adm.setNome(rs.getString("nome"));
                adm.setTelefone(rs.getString("telefone"));
                adm.setPerfil(rs.getShort("perfil"));
                adm.setEmail(rs.getString("email"));
                adm.setSenha(rs.getString("senha"));
                adm.setAvatar(rs.getString("avatar"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(AdmDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

        return adm;
    }

    public List<Adm> getAdms() {
        List<Adm> lstAdms = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return lstAdms;
        }

        sql = "SELECT * FROM adm ORDER BY nome;";

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            lstAdms = new ArrayList<>();

            while (rs.next()) {
                Adm adm = new Adm();
                adm.setId(rs.getInt("id"));
                adm.setNome(rs.getString("nome"));
                adm.setTelefone(rs.getString("telefone"));
                adm.setPerfil(rs.getShort("perfil"));
                adm.setEmail(rs.getString("email"));
                adm.setSenha(rs.getString("senha"));
                adm.setAvatar(rs.getString("avatar"));
                lstAdms.add(adm);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AdmDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

        return lstAdms;
    }

    
}
