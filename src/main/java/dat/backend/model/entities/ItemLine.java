package dat.backend.model.entities;

import java.util.ArrayList;
import java.util.List;

public class ItemLine
{
    public ArrayList<Item> itemList = new ArrayList<>();

    public ItemLine(){

    }

    public void addItem(Item item){
        itemList.add(item);
    }

    public List<Item> getItemList(){ return itemList;}
}
