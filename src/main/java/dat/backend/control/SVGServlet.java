package dat.backend.control;

import dat.backend.model.entities.Carport;
import dat.backend.model.entities.Cart;
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

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        Locale.setDefault(new Locale("US"));
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        //NOTER!!!
        //CPwidth = længden af Carporten, går --> som X
        //CPheight = bredden af Carporten, går v-v som Y
        int CPwidth = Integer.parseInt(request.getParameter("CPwidth"));
        int CPheight = Integer.parseInt(request.getParameter("CPheight"));
        int SHwidth = Integer.parseInt(request.getParameter("SHwidth"));
        int SHheight = Integer.parseInt(request.getParameter("SHheight"));
        String frameviewbox = "0 0 " + (CPwidth+120) + " " + (CPheight+120);
        String innerviewbox = "0 0 " + (CPwidth+10) + " " + (CPheight+10);

        try {
            SVG frame = CarportSVG.createNewSVG(0, 0, CPwidth, CPheight, frameviewbox);
            SVG carport = CarportSVG.createNewSVG(75, 25, CPwidth, CPheight,innerviewbox);

            CarportSVG.addFrame(carport, 0, 0, CPwidth, CPheight);
            CarportSVG.addPillars(carport,CPwidth, CPheight);
            CarportSVG.addbeams(carport, CPwidth, CPheight);
            CarportSVG.addInnerSVG(frame, carport, (CPwidth), (CPheight));


            Carport carportOrder = new Carport(CPwidth, CPheight, SHwidth, SHheight);
            cart.add(carportOrder);
            session.setAttribute("cart", cart);

            request.setAttribute("svg", frame.toString());
            request.getRequestDispatcher("ordre.jsp").forward(request, response);

        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }

    }
}
