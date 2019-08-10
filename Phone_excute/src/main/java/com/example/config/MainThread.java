package com.example.config;

import com.example.entity.Phone;
import com.example.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class MainThread {
    public static void main(String[] args) {
        Transaction transaction = null;
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            session.save(Phone.Builder.aPhone()
                    .withId("GC00986")
                    .withName("iPhone 7 Lus")
                    .withBrand("Ha Noi")
                    .withPrice("9.000.000")
                    .withDescription("Ai phon 7")
                    .build());
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null){
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}
