package dat.backend.model.entities;

import java.util.ArrayList;
import java.util.List;

public class Cart
{
    private final ArrayList<Carport> carportList = new ArrayList<>();

    public Cart()
    {
    }

    public void add(Carport carport)
    {
        carportList.add(carport);
    }

    public int length(Carport carport){
        return carport.getLength();
    }

    public int width(Carport carport){
        return carport.getWidth();
    }

    public List<Carport> getCarportList()
    {
        return carportList;
    }

    public Carport getCarport()
    {
        return getCarportList().get(0);
    }

    public void resetCart()
    {
        carportList.clear();
    }

//    public void updateCart(Carport carport)
//    {
//        carportList.clear();
//        carportList.add(carport);
//    }
}