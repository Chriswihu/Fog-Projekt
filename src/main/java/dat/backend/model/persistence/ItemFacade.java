package dat.backend.model.persistence;

import dat.backend.model.entities.Item;
import dat.backend.model.entities.ItemLine;
import dat.backend.model.entities.Materials;

import java.util.List;

public class ItemFacade {
    public static List<Item> getMaterialsList(ConnectionPool connectionPool)
    {
        return ItemMapper.getMaterialsList(connectionPool);
    }

//    public static List<Item> createOrder(int orderId, MaterialList materialList, ConnectionPool connectionPool)
//    {
//        return ItemMapper.createOrderItem(orderId, materialList, connectionPool);
//    }

    public static void addToItemLine(int orderId, Materials materials, ConnectionPool connectionPool)
    {
        ItemMapper.addToItemLine(orderId, materials, connectionPool);
    }

}
