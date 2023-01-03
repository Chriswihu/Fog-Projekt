package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Cart;
import dat.backend.model.entities.ItemLine;
import dat.backend.model.entities.Materials;
import dat.backend.model.entities.User;
import dat.backend.model.persistence.CarportFacade;
import dat.backend.model.persistence.ConnectionPool;
import dat.backend.model.persistence.ItemFacade;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "order", urlPatterns = {"/order"})
public class Order extends HttpServlet {
    private static final ConnectionPool connectionPool = ApplicationStart.getConnectionPool();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        User user = (User) session.getAttribute("user");
        int orderId = CarportFacade.createOrder(user, connectionPool);
        session.setAttribute("orderId", orderId);



        try {
            CarportFacade.addToOrderLine(orderId, cart, connectionPool);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("WEB-INF/confirmation.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    }
}