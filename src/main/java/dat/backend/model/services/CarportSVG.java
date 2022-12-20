package dat.backend.model.services;

public class CarportSVG {
    public
    static SVG svg = null;

    public static SVG createNewSVG(int x, int y, int width, int heigth, String viewbox) {
        svg = new SVG(x, y, width, heigth, viewbox);

//        svg.addInnerSvg(svg);
        return svg;
    }

    public static void addField(SVG svg, int width, int heigth)
    {
        svg.addRect(60, 60, width, heigth);

    }


    public static SVG addInnerSVG(SVG svg, SVG inner, int width, int heigth)
    {
        svg.addMeasurments(width, heigth);
        svg.innerSvg(inner);
        return svg;
    }



    public static SVG addFrame(SVG svg, int x, int y, int width, int heigth)
    {
        svg.addRect(x, y+35, width, 4.5);
        svg.addRect(x, y+(heigth-35), width, 4.5);
        svg.addRect(x, y, 4.5, heigth);
        svg.addRect(x+width, y, 4.5, heigth);

        svg.addCross(x+40, y+40, x+heigth, y+heigth-35);
        svg.addCross(x+40, y+heigth-35, x+heigth, y+40);
        return svg;
    }

    public static SVG addPillars(SVG svg, double width, double heigth)
    {
        svg.addPillar(60, 32.5);
        svg.addPillar(60, heigth-37.5);
        svg.addPillar(width-35, 32.5);
        svg.addPillar(width-35, heigth-37.5);

        if(width-85>300)
        {
            double mid = (width) / 2;
            svg.addPillar(mid, 32.5);
            svg.addPillar(mid, heigth-37.5);
        }
        return svg;
    }

    public static int numberOfBeams(int width)
    {
        int y = 0;

        while (width > 55) {
            width = width - 55;
            y++;
        }
        return y;

    }
    public static SVG addbeams(SVG svg, int width, int height) {
        int x = (width/55);
        int y = width/numberOfBeams(width);

        for (int i = 0; i < (width-30); i += y) {
            svg.addRect(i, 0, 4.5, height);
        }
        return svg;
    }

}
