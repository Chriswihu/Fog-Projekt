package dat.backend.model.services;

public class CarportSVG {
    public
    static SVG svg = null;

    public static SVG createNewSVG(int x, int y, int height, int width, String viewbox) {
        svg = new SVG(x, y, height, width, viewbox);

//        svg.addInnerSvg(svg);
        return svg;
    }

//    public static SVG addInnerSVG(SVG svg)
//    {
//        createNewSVG()
//    }
    public static SVG addFrame(SVG svg, int height, int width)
    {

        svg.addRect(0, 35, 4.5, width);
        svg.addRect(0, height-35, 4.5, width);
        svg.addRect(0, 0, height, 4.5);
        svg.addRect(width-5, 0, height, 4.5);

        return svg;
    }

    public static SVG addPillars(SVG svg, double height, double width)
    {
        svg.addPillar(60, 32.5);
        svg.addPillar(60, height-37.5);
        svg.addPillar(width-35, 32.5);
        svg.addPillar(width-35, height-37.5);

        if(width-85>300)
        {
            double mid = (width) / 2;
            svg.addPillar(mid, 32.5);
            svg.addPillar(mid, height-37.5);
        }
        return svg;
    }

    public static int numberOfBeams(int width)
    {
        int y = -1;

        while (width > 55) {
            width = width - 55;
            y++;
        }
        return y;

    }
    public static SVG addbeams(SVG svg, int height, int width) {
        int y = width/numberOfBeams(width);

        for (int i = y; i < width; i += y) {
            svg.addRect(i, 0, height, 4.5);
        }
        return svg;
    }

}
