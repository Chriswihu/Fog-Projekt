package dat.backend.model.persistence;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Cart;
import dat.backend.model.entities.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CarportMapper {
    public static int createOrder(User user, ConnectionPool connectionPool)
    {
        String sql = "INSERT INTO orders (username) VALUES (?)";

        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS))
            {
                ps.setString(1, user.getUsername());
                ps.executeUpdate();
                ResultSet rs = ps.getGeneratedKeys();
                rs.next();
                return rs.getInt(1);

            } catch (SQLException ex) {
                ex.printStackTrace();

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }

    public static void addToOrderLine(int orderId, Cart cart, ConnectionPool connectionPool)
    {
        String sql = "INSERT INTO orderline (idorder, length, width, shedlength, shedwidth) VALUES (?,?,?,?,?)";

        try (Connection connection = connectionPool.getConnection())
        {
            for (Carport carport : cart.getCarportList()) {
                try (PreparedStatement ps = connection.prepareStatement(sql)) {

                    ps.setInt(1, orderId);
                    ps.setInt(2, carport.getLength());
                    ps.setInt(3, carport.getWidth());
                    ps.setInt(4, carport.getShedLenght());
                    ps.setInt(5, carport.getShedWidth());
                    ps.executeUpdate();
                }
            }
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }

    }

//    public static List<Integer> getLengths(ConnectionPool connectionPool)
//    {
////        List<Integer> lengthList = new ArrayList<>();
////        String sql = "SELECT * FROM lengths";
////
////        try (Connection connection = connectionPool.getConnection()) {
////            try (PreparedStatement ps = connection.prepareStatement(sql)) {
////                ResultSet rs = ps.executeQuery();
////                while (rs.next()) {
////
////                    int id = rs.getInt("lengthsid");
////                    int length = rs.getInt("length");
////
////                    Top newTop = new Top(id, name, price);
////
////                    topList.add(newTop);
////                }
////            } catch (SQLException ex) {
////                ex.printStackTrace();
////            }
////        } catch (SQLException throwables) {
////            throwables.printStackTrace();
////        }
////        return lengthList;
//    }
}
