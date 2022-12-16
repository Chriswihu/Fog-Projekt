package dat.backend.model.entities;

public class Item
{
    private int id;
    private String name;
    private int length;
    private int quantity;
    private String unit;

    public Item(int id, String name, int length, int quantity, String unit) {
        this.id = id;
        this.name = name;
        this.length = length;
        this.quantity = quantity;
        this.unit = unit;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getLength() {
        return length;
    }

    public int getQuantity() {
        return quantity;
    }

    public String getUnit() {
        return unit;
    }
}
