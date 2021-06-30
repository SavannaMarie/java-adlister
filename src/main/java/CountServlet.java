import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="CountServlet", urlPatterns = "/count")
public class CountServlet extends HttpServlet{
    private int counter = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String reset = req.getParameter("reset");
        if (reset == null) {
            counter++;
        } else {
            counter = 0;
        }
        String title = "Total Number of Hits";
        out.println("<h1 align = \"center\">" + title + "</h1>\n" + "<h2 align = \"center\">" + counter + "</h2>\n");
    }
}
