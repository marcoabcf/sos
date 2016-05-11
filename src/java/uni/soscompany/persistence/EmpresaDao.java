
package uni.soscompany.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import uni.soscompany.bean.Empresa;
import uni.soscompany.connection.ConnectionFactory;


public class EmpresaDao {
      private String sql;

    public boolean incluir(Empresa empresa) {
        boolean isOk = false;
        PreparedStatement ps = null;
        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return isOk;
        }

        sql = "INSERT INTO empresa(nome, telefone, perfil, "
                + "email, senha, avatar, cnpj, descricao"
                + "VALUES(?,?,?,?,?,?,?,?);";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, empresa.getNome());
            ps.setString(2, empresa.getTelefone());
            ps.setShort(3, empresa.getPerfil());
            ps.setString(4, empresa.getEmail());
            ps.setString(5, empresa.getSenha());
            ps.setString(6, empresa.getAvatar());
            ps.setInt(7, empresa.getCnpj());
            ps.setString(8, empresa.getDescricao());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public boolean alterar(Empresa empresa) {
        boolean isOk = false;
        PreparedStatement ps = null;
        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return isOk;
        }

        sql = "UPDATE empresa SET nome=?, telefone=?, "
                + "perfil=?, email=?, senha=?, avatar=?, cnpj=?, descricao=?"
                + "WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, empresa.getNome());
            ps.setString(2, empresa.getTelefone());
            ps.setShort(3, empresa.getPerfil());
            ps.setString(4, empresa.getEmail());
            ps.setString(5, empresa.getSenha());
            ps.setString(6, empresa.getAvatar());
            ps.setInt(7, empresa.getCnpj());
            ps.setString(8, empresa.getDescricao());
            ps.setInt(9, empresa.getId());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaDao.class.getName()).log(Level.SEVERE, null, ex);
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

        sql = "DELETE FROM empresa WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public Empresa getEmpresa(int id) {
        Empresa empresa = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return empresa;
        }

        sql = "SELECT * FROM empresa WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                empresa = new Empresa();
                empresa.setId(rs.getInt("id"));
                empresa.setNome(rs.getString("nome"));
                empresa.setTelefone(rs.getString("telefone"));
                empresa.setPerfil(rs.getShort("perfil"));
                empresa.setEmail(rs.getString("email"));
                empresa.setSenha(rs.getString("senha"));
                empresa.setAvatar(rs.getString("avatar"));
                empresa.setCnpj(rs.getInt("cnpj"));
                empresa.setDescricao(rs.getString("descricao"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(EmpresaDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

        return empresa;
    }

    public List<Empresa> getEmpresas() {
        List<Empresa> lstEmpresas = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return lstEmpresas;
        }

        sql = "SELECT * FROM empresa ORDER BY nome;";

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            lstEmpresas = new ArrayList<>();

            while (rs.next()) {
                Empresa empresa = new Empresa();
                empresa.setId(rs.getInt("id"));
                empresa.setNome(rs.getString("nome"));
                empresa.setTelefone(rs.getString("telefone"));
                empresa.setPerfil(rs.getShort("perfil"));
                empresa.setEmail(rs.getString("email"));
                empresa.setSenha(rs.getString("senha"));
                empresa.setAvatar(rs.getString("avatar"));
                empresa.setCnpj(rs.getInt("cnpj"));
                empresa.setDescricao(rs.getString("descricao"));
                lstEmpresas.add(empresa);
            }

        } catch (SQLException ex) {
            Logger.getLogger(EmpresaDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

        return lstEmpresas;
    }

}
