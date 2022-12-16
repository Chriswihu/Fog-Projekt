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
        while (s > 60) {
            s = s - 60;
            t++;
        }
        return t;
    }

    public int antalStolper(Carport carport) {
        int s = carport.getLength() - 75;
        int t = 2;

        if (carport.getShedWidth() > 0 && carport.getShedLenght() > 0) {
            t = t + 4;
        }

        while (s > 300) {
            s = s - 300;
            t++;
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

