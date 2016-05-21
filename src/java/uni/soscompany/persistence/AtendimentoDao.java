
package uni.soscompany.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import uni.soscompany.bean.Usuario;
import uni.soscompany.bean.Atendimento;
import uni.soscompany.connection.ConnectionFactory;


public class AtendimentoDao {
       
    private String sql;
      
    public boolean incluir(Atendimento atendimento){
        boolean isOk = false;
        PreparedStatement ps = null;
        Connection conn = ConnectionFactory.getConnection();
        
        if (conn == null) {
            return isOk;
        }
        
            sql = "INSERT INTO atendimento(area, titulo, textoAtendimento, protocolo, date) +"
                    + "VALUES(?,?,?,?,?);";
        
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, atendimento.getArea());
            ps.setString(2, atendimento.getProtocolo());
            ps.setString(3, atendimento.getTextoAtendimento());
            ps.setString(4, atendimento.getTitulo());
            ps.setDate(5,new java.sql.Date(atendimento.getDate().getTime()));
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(AtendimentoDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
            
        }
    
    public boolean alterar(Atendimento atendimento) {
        boolean isOk = false;
        PreparedStatement ps = null;
        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return isOk;
        }

        sql = "UPDATE atendimento SET area=?, titulo=?, "
                + "textoAtendimento=?, protocolo=? "
                + "WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, atendimento.getArea());
            ps.setString(2, atendimento.getProtocolo());
            ps.setString(3, atendimento.getTextoAtendimento());
            ps.setString(4, atendimento.getTitulo());
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(AtendimentoDao.class.getName()).log(Level.SEVERE, null, ex);
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

        sql = "DELETE FROM atendimento WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            isOk = true;
        } catch (SQLException ex) {
            Logger.getLogger(Atendimento.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps);
        }

        return isOk;
    }

    public Atendimento getAtendimento(int id) {
        Atendimento atendimento = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return atendimento;
        }

        sql = "SELECT * FROM atendimento WHERE id=?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                atendimento = new Atendimento();
                atendimento.setId(rs.getInt("id"));
                atendimento.setArea(rs.getString("area"));
                atendimento.setProtocolo(rs.getString("protocolo"));
                atendimento.setTextoAtendimento(rs.getString("textoAtendimento"));
                atendimento.setTitulo(rs.getString("titulo"));
                
            
            }

        } catch (SQLException ex) {
            Logger.getLogger(AtendimentoDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

        return atendimento;
    }
    
    public List<Atendimento> getAtendimentos() {
        List<Atendimento> lstAtendimentos = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        Connection conn = ConnectionFactory.getConnection();

        if (conn == null) {
            return lstAtendimentos;
        }

        sql = "SELECT * FROM atendimento ORDER BY id;";

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            lstAtendimentos = new ArrayList<>();

            while (rs.next()) {
                Atendimento atendimento = new Atendimento();
                atendimento.setId(rs.getInt("id"));
                atendimento.setArea(rs.getString("area"));
                atendimento.setProtocolo(rs.getString("protocolo"));
                atendimento.setTextoAtendimento(rs.getString("textoAtendimento"));
                atendimento.setTitulo(rs.getString("titulo"));
                atendimento.setDate(rs.getDate("date"));
                lstAtendimentos.add(atendimento);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AtendimentoDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionFactory.closeConnection(conn, ps, rs);
        }

        return lstAtendimentos;
    }

}


