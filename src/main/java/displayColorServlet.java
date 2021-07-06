import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/colorDisplay")
public class displayColorServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String color = request.getParameter("colorpicker");
        request.setAttribute("colorpicker", color);
        request.getRequestDispatcher("/colordisplay.jsp?colorpicker=" + color).forward(request,response);

    }
}