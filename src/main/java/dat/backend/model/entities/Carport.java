package dat.backend.model.entities;

public class Carport
{
    private int length;
    private int width;
    private int shedLenght;
    private int shedWidth;

    public Carport(int length, int width, int shedLenght, int shedWidth) {
        this.length = length;
        this.width = width;
        this.shedLenght = shedLenght;
        this.shedWidth = shedWidth;
    }

    public int getLength() {
        return length;
    }

    public int getWidth() {
        return width;
    }

    public int getShedLenght() {
        return shedLenght;
    }

    public int getShedWidth() {
        return shedWidth;
    }
}
