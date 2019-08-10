package com.example.controller;

import com.example.entity.Phone;
import com.example.service.PhoneService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ListPhoneController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Phone> phoneList = new PhoneService().getAll();
        req.setAttribute("listPhone", phoneList);
        req.getRequestDispatcher("/phone/listphone.jsp").forward(req, resp);

    }
}
