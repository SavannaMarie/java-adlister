package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");

        // TODO: ensure the submitted information is valid
        boolean inputHasErrors = username.isEmpty() || email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty();
        boolean userExists = true;
        try {
            DaoFactory.getUsersDao().findByUsername(username);
            userExists = true;
        } catch (Exception e) {
            userExists = false;
        }

        if (inputHasErrors  &&  userExists){
            response.sendRedirect("/login");
            return;
        }



        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);

        DaoFactory.getUsersDao().insert(user);
        user = DaoFactory.getUsersDao().findByUsername(user.getUsername());
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        response.sendRedirect("/profile");
    }
}




//package com.codeup.adlister.controllers;
//
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
//public class RegisterServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
//        // TODO: show the registration form
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
//        // TODO: ensure the submitted information is valid
//        // TODO: create a new user based off of the submitted information
//        // TODO: if a user was successfully created, send them to their profile
//    }
//}