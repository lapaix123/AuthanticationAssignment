package rw.ac.auca.authentication;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/AuthanticationSarvlet")
public class AuthanticationSarvlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email= req.getParameter("email");
        String passwrd=req.getParameter("password");
        if("lapaix@gmail.com".equals(email) && "lapaix@123".equals(passwrd)){
            req.setAttribute("email",email);
            req.getRequestDispatcher("welcome.jsp").forward(req,resp);
        }else {
            String message="Incollect Username Or Password";
            req.setAttribute("message",message);
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }

    }
}
