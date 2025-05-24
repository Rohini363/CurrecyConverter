package com.currency;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import com.google.gson.*;

public class ConverterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String API_KEY = "bee06779aeabc4fd3a7eb4ec";

    // Handles POST requests from the form
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        double amount = Double.parseDouble(request.getParameter("amount"));

        try {
            double rate = getExchangeRate(from, to);
            double convertedAmount = amount * rate;

            request.setAttribute("converted", String.format("%.2f", convertedAmount));
            request.setAttribute("to", to);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    // Handles GET requests (e.g., direct access to /convert)
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect to the form page if someone accesses /convert directly
        response.sendRedirect("index.jsp");
    }

    private double getExchangeRate(String from, String to) throws Exception {
        String urlStr = "https://v6.exchangerate-api.com/v6/" + API_KEY + "/latest/" + from;
        URL url = new URL(urlStr);
        HttpURLConnection request = (HttpURLConnection) url.openConnection();
        request.connect();

        JsonObject json = JsonParser.parseReader(new InputStreamReader(request.getInputStream())).getAsJsonObject();
        JsonObject rates = json.getAsJsonObject("conversion_rates");
        return rates.get(to).getAsDouble();
    }
}
