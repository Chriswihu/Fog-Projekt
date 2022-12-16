package dat.backend.control;

import dat.backend.model.config.ApplicationStart;
import dat.backend.model.entities.Cart;
import dat.backend.model.entities.MaterialList;
import dat.backend.model.entities.User;
import dat.backend.model.exceptions.DatabaseException;
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
        MaterialList materialList = new MaterialList();

        int orderId = CarportFacade.createOrder(user, connectionPool);
        session.setAttribute("orderId", orderId);
        materialList.CarportMaterials(cart.getCarport());
        session.setAttribute("materialList", materialList);

        try
        {
            CarportFacade.addToOrderLine(orderId, cart, connectionPool);
            ItemFacade.addToItemLine(orderId, materialList, connectionPool);
        } catch (Exception e)
        {
            throw new RuntimeException(e);
        }


        cart.resetCart();
        session.setAttribute("cart", cart);

        request.getRequestDispatcher("WEB-INF/confirmation.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    }
}