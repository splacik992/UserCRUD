package pl.users;

import pl.utils.User;
import pl.utils.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/users/edit")
public class EditUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDao userDao = new UserDao();
        String userName = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String id = request.getParameter("id");

        User user = new User();
        user.setId(Integer.parseInt(id));
        user.setEmail(email);
        user.setPassword(password);
        user.setUserName(userName);

        userDao.update(user);

        response.sendRedirect("/users/list");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        UserDao userDao = new UserDao();

        User user = userDao.read(Integer.parseInt(id));

        request.setAttribute("editUser", user);
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request,response);


    }
}
