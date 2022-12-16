package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.UserFacade;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "createuser", urlPatterns = {"/createuser"})
public class CreateUser extends HttpServlet {
    private final ConnectionPool connectionPool = ApplicationStart.getConnectionPool();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // You shouldn't end up here with a GET-request, thus you get sent back to frontpage
        response.sendRedirect("index.jsp");
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        response.setContentType("text/html");
        HttpSession session = request.getSession();
        session.setAttribute("user", null); // invalidating user object in session scope
        String newusername = request.getParameter("newusername");
        String newpassword = request.getParameter("newpassword");

        try {
            User user = UserFacade.createUser(newusername, newpassword, "user", connectionPool);
            session = request.getSession();
            session.setAttribute("user", user);
            request.getRequestDispatcher("index.jsp").forward(request, response);

        } catch (DatabaseException e) {
            request.setAttribute("errormessage", e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
