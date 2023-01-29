package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.*;
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

@WebServlet(name = "confirm", urlPatterns = {"/confirm"})
public class Confirm extends HttpServlet {
    private final ConnectionPool connectionPool = ApplicationStart.getConnectionPool();

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        int orderId = (int) session.getAttribute("orderId");

        Materials materials = (Materials) session.getAttribute("materials");
        materials.addMaterials(cart.getCarport());

        session.setAttribute("materials", materials);

        try
        {
            ItemFacade.addToItemLine(orderId, materials, connectionPool);

        } catch (Exception e)
        {
            throw new RuntimeException(e);
        }
        cart.resetCart();
        session.setAttribute("cart", cart);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);

    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    }

}