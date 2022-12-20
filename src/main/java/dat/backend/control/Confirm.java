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

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        response.setContentType("text/html");
        HttpSession session = request.getSession();
        int orderId = (int) session.getAttribute("orderId");
        Cart cart = (Cart) session.getAttribute("cart");
        Materials materials = (Materials) session.getAttribute("materials");


        session.setAttribute("orderId", orderId);
//        session.setAttribute("materials", materials);
//
//        materials.addMaterials(cart.getCarport());
//        session.setAttribute("materials", materials);

        try
        {

//            ItemFacade.addToItemLine(orderId, itemLine, connectionPool);
//            CarportFacade.addToOrderLine(orderId, cart, connectionPool);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        cart.resetCart();


        request.getRequestDispatcher("WEB-INF/confirmation.jsp").forward(request, response);


        //        ArrayList carportList;
//        carportList = CarportFacade.getOrder(orderId, connectionPool);
//        session.setAttribute("carportList", carportList);



    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    }

}