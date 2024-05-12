package com.myservlets.java;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.myclasses.java.Products; 

@WebServlet("/ProductDeleteServletPath")
public class ProductDeleteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    private SessionFactory factory;

    public ProductDeleteServlet() {
        super();
    }

    @Override
    public void init() throws ServletException {
        super.init();
        factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Products.class)
                .buildSessionFactory();
    }

    @Override
    public void destroy() {
        super.destroy();
        factory.close(); // Close the session factory when servlet is destroyed
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));

        try (Session session = factory.openSession()) {
            session.beginTransaction();

            // Retrieve the product by its ID
            Products product = session.get(Products.class, productId);

            // Delete the product if found
            if (product != null) {
                session.delete(product);
                session.getTransaction().commit();
                response.getWriter().write("Product with ID " + productId + " deleted successfully.");
            } else {
                response.getWriter().write("Product with ID " + productId + " not found.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error deleting product: " + e.getMessage());
        }
    }
}
