package dat.backend.model.entities;

public class Item
{
    private int id;
    private String name;
    private int length;
    private int quantity;
    private String unit;
    private String info;

    public Item(int id, String name, int length, int quantity, String unit, String info) {
        this.id = id;
        this.name = name;
        this.length = length;
        this.quantity = quantity;
        this.unit = unit;
        this.info = info;
    }

}
