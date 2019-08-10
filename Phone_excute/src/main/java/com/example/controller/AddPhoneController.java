package com.example.controller;

import com.example.entity.Phone;
import com.example.service.PhoneService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddPhoneController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/phone/addphones.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String brand = req.getParameter("brand");
        String price = req.getParameter("price");
        String description = req.getParameter("description");

        Phone phone = new Phone();
        phone.setId(id);
        phone.setName(name);
        phone.setBrand(brand);
        phone.setPrice(price);
        phone.setDescription(description);

        PhoneService phoneService = new PhoneService();
        phoneService.save(phone);
        resp.sendRedirect("/phone/listphone.jsp");
    }
}
