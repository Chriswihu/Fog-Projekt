package dat.backend.model.services;

public class SVG {
    private int x;
    private int y;
    private int heigth;
    private int width;
    private StringBuilder svgString = new StringBuilder();
    private String viewbox;

    private final static String HEADERTEMP =
            "<svg x=\"%d\" y=\"%d\" width=\"%d\" height=\"%d\" viewBox=\"%s\" preserveAspectRatio=\"xMinYMin\">";
    private final static String RECTTEMP =
            "<rect x=\"%d\" y=\"%d\" width=\"%f\" height=\"%f\" style=\"stroke:#000000; fill: #ffffff\"/>";
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
    private final static String ARROWTEMP = "<line x1=\"%d\" y1=\"%d\" x2=\"%d\" y2=\"%d\"\n" +
            "          style=\"stroke: #006600;marker-start: url(#beginArrow);marker-end: url(#endArrow);\"/>";

    private final static String CROSSTEMP = "<line x1=\"%f\" y1=\"%f\" x2=\"%f\" y2=\"%f\" style=\"stroke:#000000; stroke-dasharray: 5 5;\"/>>";

    public final static String VIEWBOX = "%s %s %s %s";

    public String viewBox(int x, int y, int width, int heigth)
    {
        viewbox = x + " " + y + " " + width + " " + heigth;
        return viewbox;
    }

    public SVG(int x, int y, int width, int heigth, String  viewbox) {
        svgString.append(String.format(HEADERTEMP, x, y, width, heigth, viewbox));
        this.x = x;
        this.y = y;
        this.width = width;
        this.heigth = heigth;
        this.viewbox = viewbox;

    }

//    <rect x="0" y="0" width="4.5" height="600" style="fill:rgb(255,255,255);stroke-width:1;stroke:rgb(0,0,0)"/>
//     <rect x="0" y="35" width="780" height="4.5" style="stroke:#000000; fill: #ffffff"/>
//        <rect x="0" y="565" width="780" height="4.5" style="stroke:#000000; fill: #ffffff"/>

    public void addRect(int x, int y, double width, double heigth) {
        svgString.append(String.format(RECTTEMP, x, y, width, heigth));

    }

    public void addCross(double x1, double y1, double x2, double y2){
        svgString.append(String.format(CROSSTEMP, x1, y1, x2, y2));
    }

    public void  addPillar(double x, double y)
    {
        svgString.append(String.format(PILLARTEMP, x, y));

    }

    public void addMeasurments(int width, int heigth) {

        svgString.append(String.format(ARROWHEADTEMP));
        svgString.append(String.format(ARROWTEMP, 50, 25, 50, heigth+25));
        svgString.append(String.format(ARROWTEMP, 75, (heigth+50), width+75, (heigth+50)));
//        svgString.append("<g><svg>");
//        svgString.append(new SVG(0, 0, width, heigth, viewBox(0, 0, width, heigth)));



    }

    public void innerSvg(SVG innerSVG) {
        svgString.append(innerSVG);
        svgString.append("</svg>");
    }

    @Override
    public String toString() {
        return svgString + "</svg>";
    }
}
