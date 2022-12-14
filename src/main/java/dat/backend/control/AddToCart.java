package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Cart;
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
import java.util.ArrayList;

@WebServlet(name = "addtocart", urlPatterns = {"/addtocart"})
public class AddToCart extends HttpServlet {
    private ConnectionPool connectionPool = ApplicationStart.getConnectionPool();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // You shouldn't end up here with a GET-request, thus you get sent back to frontpage

        HttpSession session = request.getSession();
        Cart cart = (Cart) request.getSession(Boolean.parseBoolean("cart"));
        cart.resetCart();

        session.setAttribute("cart", cart);

        request.getRequestDispatcher("ordre.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");


        int lenght = Integer.parseInt(request.getParameter("lenght"));
        int width = Integer.parseInt(request.getParameter("width"));
        int shedLenght = Integer.parseInt(request.getParameter("shedLenght"));
        int shedWidth = Integer.parseInt(request.getParameter("shedWidth"));

        Carport carport = new Carport(lenght, width, shedLenght, shedWidth);
        cart.add(carport);
        session.setAttribute("cart", cart);

        request.getRequestDispatcher("ordre.jsp").forward(request, response);
    }

}