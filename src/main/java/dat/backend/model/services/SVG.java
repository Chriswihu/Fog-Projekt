package dat.backend.model.services;

public class SVG {
    private int x;
    private int y;
    private int height;
    private int width;
    private StringBuilder svgString = new StringBuilder();
    private String viewbox;

    private final static String HEADERTEMP =
            "<svg x=\"%d\" y=\"%d\" height=\"%d\" width=\"%d\" viewBox=\"%s\" preserveAspectRatio=\"xMinYMin\">";
    private final static String RECTTEMP =
            "<rect x=\"%d\" y=\"%d\" height=\"%f\" width=\"%f\" style=\"stroke:#000000; fill: #ffffff\"/>";
    private final static String PILLARTEMP =
            "<rect x=\"%f\" y=\"%f\" width=\"10\" height=\"10\" style=\"stroke:#000000; fill: #ffffff\"/>";
    private final static String ARROWHEADTEMP = "<defs>\n" +
            "<marker\n" + "id=\"beginArrow\"\n" + "markerWidth=\"10\"\n" + "markerHeight=\"10\"\n" + "refX=\"0\"\n" +
            "refY=\"5\"\n" + "orient=\"auto\">\n" + "<path d=\"M0,5 L10,0 L10,10 L0,5\" style=\"fill: #000000;\"/>\n" +
            "</marker>\n" +
            "<marker\n" + "id=\"endArrow\"\n" + "markerWidth=\"10\"\n" + "markerHeight=\"10\"\n" + "refX=\"10\"\n" +
            "refY=\"5\"\n" + "orient=\"auto\">\n" + "<path d=\"M0,0 L10,5 L0,10 L0,0 \" style=\"fill: #000000;\"/>\n" +
            "</marker>\n" +
            "</defs>";
    private final static String ARROWTEMP = "<line x1=\"%f\" y1=\"%f\" x2=\"%f\" y2=\"%f\"\n" +
            "          style=\"stroke: #006600;marker-start: url(#beginArrow);marker-end: url(#endArrow);\"/>";

    private final static String VIEWBOX = "%s %s %s %s";

    public String viewBox(int x, int y, int height, int width)
    {
        viewbox = String.format(VIEWBOX, x, y, height, width);
        return viewbox;
    }

    public SVG(int x, int y, int height, int width, String  viewbox) {
        svgString.append(String.format(HEADERTEMP, x, y, height, width, viewbox));
        this.x = x;
        this.y = y;
        this.height = height;
        this.width = width;
        this.viewbox = viewbox;
    }

//    <rect x="0" y="0" width="4.5" height="600" style="fill:rgb(255,255,255);stroke-width:1;stroke:rgb(0,0,0)"/>
//     <rect x="0" y="35" width="780" height="4.5" style="stroke:#000000; fill: #ffffff"/>
//        <rect x="0" y="565" width="780" height="4.5" style="stroke:#000000; fill: #ffffff"/>

    public void addRect(int x, int y, double height, double width) {
        svgString.append(String.format(RECTTEMP, x, y, height, width));

    }

    public void  addPillar(double height, double width)
    {
        svgString.append(String.format(PILLARTEMP, height, width));

    }

//    public void addLine(int x1, int y1, int x2, int y2) {
//
//    }

    public void addInnerSvg(SVG innerSVG) {
        svgString.append(innerSVG);
        svgString.append(String.format(ARROWHEADTEMP));
        svgString.append(String.format(ARROWTEMP, x+50.0, y+25.0, 50.0, height+25.0));
        System.out.println(svgString);

    }

    @Override
    public String toString() {
        return svgString + "</svg>";
    }
}
