package dat.backend.model.entities;

public class Item
{
    private String name;
    private int length;
    private int quantity;
    private String info;

    public Item(String name, int length, int quantity, String info) {
        this.name = name;
        this.length = length;
        this.quantity = quantity;
        this.info = info;
    }

}
