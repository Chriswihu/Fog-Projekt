package dat.backend.model.persistence;

import dat.backend.model.entities.Cart;
import dat.backend.model.entities.Item;
import dat.backend.model.entities.LengthList;
import dat.backend.model.entities.MaterialList;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ItemMapper {
    public static List<Item> getList(ConnectionPool connectionPool) {
        List<Item> itemList = new ArrayList<>();

        String sql = "SELECT * FROM inventar";

        try (Connection connection = connectionPool.getConnection()) {
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    int id = rs.getInt("inventarid");
                    String name = rs.getString("name");
                    String unit = rs.getString("unit");

                    Item newItem = new Item(id, name, 0, 0, unit);
                    itemList.add(newItem);
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return itemList;
    }

    public static void createOrderItem(int orderId, MaterialList materialList, ConnectionPool connectionPool) {


    }

    public static void addToItemLine(int orderId, MaterialList materialList, ConnectionPool connectionPool) {
        String sql = "INSERT INTO itemline (idorder, inventarid, name, length, quantity, unit) VALUES (?,?,?,?,?,?)";

        try (Connection connection = connectionPool.getConnection())
        {
            for (Item item : materialList.getMaterialList())
            {
                try (PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS))
                {
                    ps.setInt(1, orderId);
                    ps.setInt(2, item.getId());
                    ps.setString(3, item.getName());
                    ps.setInt(4, item.getLength());
                    ps.setInt(5, item.getQuantity());
                    ps.setString(6, item.getUnit());

                    ps.executeUpdate();
                }
            }
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
}
