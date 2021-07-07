import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/colordisplay")
public class displayColorServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String backgroundColor = request.getParameter("colorpicker");
        request.setAttribute("backgroundColor", backgroundColor);
        request.getRequestDispatcher("/colordisplay.jsp").forward(request,response);

    }
}