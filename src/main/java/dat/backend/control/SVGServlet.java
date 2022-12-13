package dat.backend.control;

import dat.backend.model.services.CarportSVG;
import dat.backend.model.services.SVG;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Locale;

@WebServlet(name = "SVGServlet", value = "/svg")
public class SVGServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Locale.setDefault(new Locale("US"));

        String length = request.getParameter("length");
        String width = request.getParameter("width");
//        String shedlength = request.getParameter("shedlength");
//        String shedwidth = request.getParameter("shedwidth");

        try {
            request.setAttribute("length", length);
            request.setAttribute("width", width);
            String viewbox = "0 0 " + length + " " + width;
            System.out.println(viewbox);

            SVG carport = CarportSVG.createNewSVG(0, 0, 100, 65, viewbox);
            CarportSVG.addbeams(carport);

            request.setAttribute("svg", carport.toString());

            request.getRequestDispatcher("WEB-INF/svgtest.jsp").forward(request, response);

        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
