package dat.backend.model.entities;

public class Carport
{
    private int length;
    private int width;
    private int shedLength;
    private int shedWidth;

    public Carport(int length, int width, int shedLength, int shedWidth) {
        this.length = length;
        this.width = width;
        this.shedLength = shedLength;
        this.shedWidth = shedWidth;
    }

    public int getLength() {
        return length;
    }

    public int getWidth() {
        return width;
    }

    public int getShedLength() {
        return shedLength;
    }

    public int getShedWidth() {
        return shedWidth;
    }
}
