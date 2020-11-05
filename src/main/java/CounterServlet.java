import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/counter")
public class CounterServlet {
    private int number = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        number++;
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("number: " + number);
        } catch (IOException e){
            e.printStackTrace();
        }

    }
}
