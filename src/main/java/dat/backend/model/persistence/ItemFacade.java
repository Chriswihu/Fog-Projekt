package dat.backend.model.persistence;

import dat.backend.model.entities.Item;
import dat.backend.model.entities.MaterialList;

import java.util.List;

public class ItemFacade {
    public static List<Item> getItemList(ConnectionPool connectionPool)
    {
        return ItemMapper.getList(connectionPool);
    }

//    public static List<Item> createOrder(int orderId, MaterialList materialList, ConnectionPool connectionPool)
//    {
//        return ItemMapper.createOrderItem(orderId, materialList, connectionPool);
//    }

    public static void addToItemLine(int orderId, MaterialList materialList, ConnectionPool connectionPool)
    {
        ItemMapper.addToItemLine(orderId, materialList, connectionPool);
    }

}
