package dat.backend.model.persistence;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Cart;
import dat.backend.model.entities.LengthList;
import dat.backend.model.entities.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CarportMapper {
    public static int createOrder(User user, ConnectionPool connectionPool) {
        String sql = "INSERT INTO orders (username) VALUES (?)";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
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

    public static void addToOrderLine(int orderId, Cart cart, ConnectionPool connectionPool) {
        String sql = "INSERT INTO orderline (idorder, length, width, shedlength, shedwidth) VALUES (?,?,?,?,?)";

        try (Connection connection = connectionPool.getConnection()) {
            for (Carport carport : cart.getCarportList()) {
                try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

                    ps.setInt(1, orderId);
                    ps.setInt(2, carport.getLength());
                    ps.setInt(3, carport.getWidth());
                    ps.setInt(4, carport.getShedLength());
                    ps.setInt(5, carport.getShedWidth());

                    ps.executeUpdate();
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public static LengthList getLengths(ConnectionPool connectionPool) {
        String sql = "SELECT * FROM lengths";

        LengthList lengthList = null;
        List<Integer> length = new ArrayList<>();
        List<Integer> width = new ArrayList<>();
        List<Integer> shedlength = new ArrayList<>();
        List<Integer> shedwidth = new ArrayList<>();

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    length.add(rs.getInt("length"));
                    width.add(rs.getInt("width"));
                    shedlength.add(rs.getInt("shedlength"));
                    shedwidth.add(rs.getInt("shedwidth"));

                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        width.removeIf(n -> n == 0);
        shedwidth.removeIf(n -> n == 0);

        lengthList = new LengthList(length, width, shedlength, shedwidth);
        return lengthList;
    }

    public static ArrayList getOrder(int orderId, ConnectionPool connectionPool) {
        String sql = "SELECT * FROM orderline WHERE idorder = ?";

        ArrayList order = new ArrayList<>();

        try (Connection connection = connectionPool.getConnection())
        {
            try (PreparedStatement ps = connection.prepareStatement(sql))
            {
                ps.setInt(1, orderId );
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    int length = rs.getInt("length");
                    int width = rs.getInt("width");
                    int shedlength = rs.getInt("shedlength");
                    int shedwidth = rs.getInt("shedwidth");


                    order.add(length);
                    order.add(width);
                    order.add(shedlength);
                    order.add(shedwidth);

                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return order;
    }
}
