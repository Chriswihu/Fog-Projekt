package dat.backend.model.entities;

public class Item
{
    private int id;
    private String name;
    private int length;
    private int quantity;
    private String unit;
    private String des;

    public Item(int id, String name, int length, int quantity, String unit, String des) {
        this.id = id;
        this.name = name;
        this.length = length;
        this.quantity = quantity;
        this.unit = unit;
        this.des = des;
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

    public String getDes() {
        return des;
    }

    @Override
    public String toString() {
        return "Item{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", length=" + length +
                ", quantity=" + quantity +
                ", unit='" + unit + '\'' +
                ", des=" + des +
                '}';
    }
}
