package uni.soscompany.action;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uni.soscompany.bean.Usuario;
import uni.soscompany.bean.Atendimento;
import uni.soscompany.persistence.AtendimentoDao;
import uni.soscompany.persistence.UsuarioDao;
import java.util.Date;


public class AtendimentoAction {
 
    public void execute (HttpServletRequest request, HttpServletResponse response)
              throws ServletException, IOException {
        
        String action = request.getParameter("action");
        switch(action){
            case "novo" :
                request.setAttribute("objAtendimento", new Atendimento());
                request.getRequestDispatcher("atendimento.jsp").forward(request, response);
                break;
        }

    }
    
    private boolean save(HttpServletRequest request){
        Atendimento atendimento = new Atendimento();
        atendimento.setArea(request.getParameter("area"));
        atendimento.setProtocolo(request.getParameter("protocolo"));
        atendimento.setTextoAtendimento(request.getParameter("textoAtendimento"));
        atendimento.setTitulo(request.getParameter("titulo"));
        atendimento.setDate(new Date());
        
        return new AtendimentoDao().incluir (atendimento);
    }
}
