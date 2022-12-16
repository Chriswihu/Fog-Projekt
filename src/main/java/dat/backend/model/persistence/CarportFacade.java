package dat.backend.model.persistence;

import dat.backend.model.entities.Cart;
import dat.backend.model.entities.LengthList;
import dat.backend.model.entities.User;

import java.sql.SQLException;
import java.util.ArrayList;

public class CarportFacade {
    public static LengthList getLengths(ConnectionPool connectionPool) throws SQLException {
        return CarportMapper.getLengths(connectionPool);
    }

    public static int createOrder(User user, ConnectionPool connectionPool)
    {
        return CarportMapper.createOrder(user, connectionPool);
    }

    public static void addToOrderLine(int orderId, Cart cart, ConnectionPool connectionPool)
    {
        CarportMapper.addToOrderLine(orderId, cart, connectionPool);
    }

    public static ArrayList getOrder(int orderId, ConnectionPool connectionPool)
    {
        return CarportMapper.getOrder(orderId, connectionPool);
    }
}