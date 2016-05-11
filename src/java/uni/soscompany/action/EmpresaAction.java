
package uni.soscompany.action;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uni.soscompany.bean.Empresa;
import uni.soscompany.persistence.EmpresaDao;

public class EmpresaAction {
     public void execute(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        switch (action) {
            case "novo":
                request.setAttribute("objEmpresa", new Empresa());
                request.getRequestDispatcher("frmempresa.jsp").forward(request, response);
                break;
            case "salvar":
                if (save(request)) {
                    request.setAttribute("msg", "Operação realizada com sucesso!");
                } else {
                    request.setAttribute("msg", "Erro ao realizar a operação!");
                }
                request.setAttribute("objEmpresa", new Empresa());
                request.getRequestDispatcher("frmempresa.jsp").forward(request, response);
                break;
            case "editar": {
                int id = Integer.parseInt(request.getParameter("id"));
                request.setAttribute("objEmpresa", new EmpresaDao().getEmpresa(id));
                request.getRequestDispatcher("frmempresa.jsp").forward(request, response);
                break;
            }
            default: {
                int id = Integer.parseInt(request.getParameter("id"));
                new EmpresaDao().excluir(id);
                request.setAttribute("lstEmpresas", new EmpresaDao().getEmpresas());
                request.getRequestDispatcher("lstempresas.jsp").forward(request, response);
                break;
            }
        }

    }
    
      private boolean save(HttpServletRequest request) {
        Empresa empresa = new Empresa();
        empresa.setId(Integer.parseInt(request.getParameter("id")));
        empresa.setNome(request.getParameter("nome"));
        empresa.setTelefone(request.getParameter("telefone"));
        empresa.setPerfil(Short.parseShort(request.getParameter("perfil")));
        empresa.setEmail(request.getParameter("email"));
        empresa.setSenha(request.getParameter("senha"));
        empresa.setAvatar(request.getParameter("avatar"));
        empresa.setCnpj(Integer.parseInt(request.getParameter("cnpj")));
        empresa.setDescricao(request.getParameter("descricao"));
        if (empresa.getId() == 0) {
            return new EmpresaDao().incluir(empresa);
        } else {
            return new EmpresaDao().alterar(empresa);
        }
    }

}
