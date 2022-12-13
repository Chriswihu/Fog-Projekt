package dat.backend.model.services;

public class CarportSVG
{
    public
    static SVG svg = null;
    public static SVG createNewSVG(int x, int y, int height, int width, String viewbox)
    {
        svg = new SVG(x, y, height, width);
        svg.addInnerSvg(svg);
        return svg;
    }

//    public static SVG addInnerSVG(SVG svg)
//    {
//        createNewSVG()
//    }

    public static SVG addbeams(SVG svg)
    {
        for (int i = 0; i < 800; i += 50) {
            svg.addRect(i, 0, 600.0, 4.5);
        }

        return svg;
    }

}
