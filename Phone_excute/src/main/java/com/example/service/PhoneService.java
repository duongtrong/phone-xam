package com.example.service;

import com.example.entity.Phone;
import com.example.util.HibernateUtil;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PhoneService {

    private static Logger LOGGER = Logger.getLogger(PhoneService.class.getSimpleName());

    public boolean save(Phone phone){
        LOGGER.log(Level.INFO, String.format("Try to save phone"));
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            session.beginTransaction();
            session.save(phone);
            session.getTransaction().commit();
            LOGGER.log(Level.INFO, String.format("Save success..."));
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, String.format("Error when save phone"));
        }
        return false;
    }

    public List<Phone> getAll() {
        List<Phone> phones = new ArrayList<>();
        try(Session session = HibernateUtil.getSessionFactory().openSession()) {
            phones = (List<Phone>) session.createQuery("from Phone", Phone.class).list();
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, String.format("Error when load phone"), ex);
        }
        return phones;
    }
}
