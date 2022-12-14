package dat.backend.model.entities;

import java.util.List;

public class LengthList {
    private List<Integer> length;
    private List<Integer> width;
    private List<Integer> shedLength;
    private List<Integer> shedWidth;

    public LengthList(List<Integer> length, List<Integer> width, List<Integer> shedLength, List<Integer> shedWidth) {
        this.length = length;
        this.width = width;
        this.shedLength = shedLength;
        this.shedWidth = shedWidth;
    }

    public List<Integer> getLength() {
        return length;
    }

    public List<Integer> getWidth() {
        return width;
    }

    public List<Integer> getShedLength() {
        return shedLength;
    }

    public List<Integer> getShedWidth() {
        return shedWidth;
    }
}
