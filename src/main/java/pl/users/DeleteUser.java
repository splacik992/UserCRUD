package pl.users;

import pl.utils.User;
import pl.utils.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/users/delete")
public class DeleteUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        UserDao userDao = new UserDao();
        User user = userDao.read(Integer.parseInt(id));

        request.setAttribute("delete", userDao.delete(user.getId()));
        response.sendRedirect("/users/list");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao userDao = new UserDao();
        User user = userDao.read(Integer.parseInt(id));

        request.setAttribute("showUser", user);
        getServletContext().getRequestDispatcher("/users/deleteUser.jsp").forward(request, response);
    }
}


