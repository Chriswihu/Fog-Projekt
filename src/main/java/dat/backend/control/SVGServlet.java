package dat.backend.control;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SVGServlet", value = "/svg")
public class SVGServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        String svg = "<svg width=\"127\" height=\"105\" viewBox=\"0 0 255 210\">\n" +
                "            <rect x=\"0\" y=\"0\" height=\"90\" width=\"90\"\n" +
                "                  style=\"stroke:#000000; fill: #ff0000\"></rect>\n" +
                "            <rect x=\"120\" y=\"0\" height=\"90\" width=\"135\"\n" +
                "                  style=\"stroke:#000000; fill: #ff0000\"></rect>\n" +
                "            <rect x=\"0\" y=\"120\" height=\"90\" width=\"90\"\n" +
                "                  style=\"stroke:#000000; fill: #ff0000\"></rect>\n" +
                "            <rect x=\"120\" y=\"120\" height=\"90\" width=\"135\"\n" +
                "                  style=\"stroke:#000000; fill: #ff0000\"></rect>\n" +
                "        </svg>";

        String navn = "john";
        String alder = "42";
        String  test = String.format("Hej med %s. Du er %d", navn, alder);


        request.setAttribute("svg", svg);
        request.getRequestDispatcher("WEB-INF/svgdrawing.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }
}
