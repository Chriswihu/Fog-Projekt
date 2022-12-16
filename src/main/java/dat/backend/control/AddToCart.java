package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Cart;
import dat.backend.model.persistence.ConnectionPool;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addtocart", urlPatterns = {"/addtocart"})
public class AddToCart extends HttpServlet {
    private ConnectionPool connectionPool = ApplicationStart.getConnectionPool();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // You shouldn't end up here with a GET-request, thus you get sent back to frontpage

        HttpSession session = request.getSession();
        Cart cart = (Cart) request.getSession(false);
        cart.resetCart();

        session.setAttribute("cart", cart);

        request.getRequestDispatcher("ordre.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");


        int CPlenght = Integer.parseInt(request.getParameter("CPlenght"));
        int CPwidth = Integer.parseInt(request.getParameter("CPwidth"));
        int SHlenght = Integer.parseInt(request.getParameter("SHlenght"));
        int SHwidth = Integer.parseInt(request.getParameter("SHwidth"));

        try {

            Carport carport = new Carport(CPlenght, CPwidth, SHlenght, SHwidth);
            cart.updateCart(carport);

            session.setAttribute("cart", cart);

            request.getRequestDispatcher("ordre.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }

    }

}