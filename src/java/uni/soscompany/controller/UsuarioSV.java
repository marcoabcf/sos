package uni.soscompany.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import uni.soscompany.action.UsuarioAction;

/**
 *
 * @author aluno
 */
public class UsuarioSV extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        new UsuarioAction().execute(request, response);

    }

}
