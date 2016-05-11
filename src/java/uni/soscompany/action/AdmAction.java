
package uni.soscompany.action;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uni.soscompany.bean.Adm;
import uni.soscompany.persistence.AdmDao;



public class AdmAction {
    
     public void execute(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        switch (action) {
            case "novo":
                request.setAttribute("objAdm", new Adm());
                request.getRequestDispatcher("frmadm.jsp").forward(request, response);
                break;
            case "salvar":
                if (save(request)) {
                    request.setAttribute("msg", "Operação realizada com sucesso!");
                } else {
                    request.setAttribute("msg", "Erro ao realizar a operação!");
                }
                request.setAttribute("objAdm", new Adm());
                request.getRequestDispatcher("frmadm.jsp").forward(request, response);
                break;
            case "editar": {
                int id = Integer.parseInt(request.getParameter("id"));
                request.setAttribute("objAdm", new AdmDao().getAdm(id));
                request.getRequestDispatcher("frmadm.jsp").forward(request, response);
                break;
            }
            default: {
                int id = Integer.parseInt(request.getParameter("id"));
                new AdmDao().excluir(id);
                request.setAttribute("lstAdms", new AdmDao().getAdms());
                request.getRequestDispatcher("lstadms.jsp").forward(request, response);
                break;
            }
        }

    }

     private boolean save(HttpServletRequest request) {
        Adm adm = new Adm();
        adm.setId(Integer.parseInt(request.getParameter("id")));
        adm.setNome(request.getParameter("nome"));
        adm.setTelefone(request.getParameter("telefone"));
        adm.setPerfil(Short.parseShort(request.getParameter("perfil")));
        adm.setEmail(request.getParameter("email"));
        adm.setSenha(request.getParameter("senha"));
        adm.setAvatar(request.getParameter("avatar"));

        if (adm.getId() == 0) {
            return new AdmDao().incluir(adm);
        } else {
            return new AdmDao().alterar(adm);
        }
    }

}
