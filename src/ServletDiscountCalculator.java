import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletDiscountCalculator",urlPatterns = "/calculationDiscount")
public class ServletDiscountCalculator extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int price = Integer.parseInt(request.getParameter("price"));
        int discount = Integer.parseInt(request.getParameter("discount"));
        String des = request.getParameter("des");
        double amount = (double) price*discount*0.1;
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Product description: " + des+ "</h1>");
        writer.println("<h2>Price: " + price+ "</h2>");
        writer.println("<h2>Discount Percent: " + discount + "</h2>");
        writer.println("<h2>Amount discount: " + amount + "</h2>");
        writer.println("</html>");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
