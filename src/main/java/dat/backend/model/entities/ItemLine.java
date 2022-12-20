package dat.backend.model.entities;

import java.util.ArrayList;
import java.util.List;

public class ItemLine
{
    private final ArrayList<Item> itemList = new ArrayList<>();

    public ItemLine(){
    }


    public void addItem(Item item){
        itemList.add(item);
    }

    public int getid(Item item) {return item.getId();}
    public String getname(Item item) {return item.getName();}
    public String getunit(Item item) {return item.getUnit();}
    public List<Item> getItemList()
    {
        return itemList;}
}
