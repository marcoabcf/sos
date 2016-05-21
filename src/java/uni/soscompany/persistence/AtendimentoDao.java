
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
        
            sql = "INSERT INTO atendimento(area, protocolo, textoAtendimento, titulo) "
                    + "VALUES(?,?,?,?);";
        
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
}

