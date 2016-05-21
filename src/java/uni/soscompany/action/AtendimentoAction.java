package uni.soscompany.action;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
                request.getRequestDispatcher("admin/atendimentos/cadastrar.jsp").forward(request, response);
                break;
            case "salvar":
                if (save(request)) {
                    request.setAttribute("msg", "Operação realizada com sucesso!");
                } else {
                    request.setAttribute("msg", "Erro ao realizar a operação!");
                }
                request.setAttribute("objAtendimento", new Atendimento());
                request.getRequestDispatcher("admin/atendimentos/cadastrar.jsp").forward(request, response);
                break;
            case "editar": {
                int id = Integer.parseInt(request.getParameter("id"));
                request.setAttribute("objAtendimento", new AtendimentoDao().getAtendimento(id));
                request.getRequestDispatcher("admin/atendimentos/cadastrar.jsp").forward(request, response);
                break;
            }
            default: {
                int id = Integer.parseInt(request.getParameter("id"));
                new UsuarioDao().excluir(id);
                request.setAttribute("lstAtendimento", new AtendimentoDao().getAtendimentos());
                request.getRequestDispatcher("admin/atendimentos/cadastrar.jsp").forward(request, response);
                break;
            }    
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
