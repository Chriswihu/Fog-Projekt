package dat.backend.model.services;

import dat.backend.model.entities.Carport;

public class Calculator
{
    public Calculator()
    {

    }
    public int antalTagBredt(Carport carport) {
        int s = carport.getLength();
        int t = 0;
        while (s > 55) {
            s = s - 55;
            t++;
        }
        return t;
    }

    public int antalStolper(Carport carport) {
        int s = carport.getLength() - 75;
        int t = 4;

        if (carport.getShedWidth() > 0 && carport.getShedLength() > 0) {
            t = t + 3;
        }

        while (s > 300) {
            s = s - 300;
            t = t + 2;
        }
        return t;
    }
    public int stolpeBolt(Carport carport)
    {
        return antalStolper(carport) * 3;
    }

    public int stolpeSkiver(Carport carport)
    {
        return antalStolper(carport) * 2;
    }

    public int pladsMellemStolper(Carport carport) {
        int s = antalStolper(carport);
        int t = carport.getLength() - 75;

        if (s > 2) {
            s = s - 1;
            t = t / s;
        }
        return t;
    }

    public int hulbaand(Carport carport) {
        int s = carport.getLength() - 75;
        int k = carport.getWidth() - 70;
        int s2 = s * s;
        int k2 = k * k;
        int j = s2 + k2;
        int t = (int) Math.sqrt(j);
        return t;
    }

}

