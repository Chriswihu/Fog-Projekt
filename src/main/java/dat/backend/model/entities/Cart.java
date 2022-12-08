package dat.backend.model.entities;

import java.util.ArrayList;
import java.util.List;

public class Cart
{
    private List<Carport> carportList = new ArrayList<>();

    public Cart()
    {

    }

    public void add(Carport carport)
    {
        carportList.add(carport);
    }

//    public double price(Carport carport)
//    {
//        return carport.getTotalPrice();
//    }

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

    public void resetCart()
    {
        carportList.clear();
    }
}