package pl.admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "login", urlPatterns = "/admin/login")
public class Login extends HttpServlet {

    private final static String USER = "admin";
    private final static String PASSWORD = "admin";


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        if(name.equals(USER) && password.equals(password)){
            HttpSession session = request.getSession();
            session.setAttribute("adminSession", name);
            response.sendRedirect("/users/list");

        }else {

            response.sendRedirect("/admin/wrongPassword.jsp");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/admin/login.jsp").forward(request, response);
    }
}
