package com.example.demo;

import java.io.*;
import java.util.concurrent.atomic.AtomicInteger;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.*;

public class ResultsSole extends HttpServlet {

    private AtomicInteger Question1option1 = new AtomicInteger(0);
    private AtomicInteger Question1option2 = new AtomicInteger(0);
    private AtomicInteger Question2option1 = new AtomicInteger(0);
    private AtomicInteger Question2option2 = new AtomicInteger(0);
    private String PreviousPage="";

    public String printHTML() {
        String HTMLformat = "<html><head><title>Results</title></head>" +
                "<body><h1>Questions have been answered the following number ot times:</h1>" +
                "<p>Question 1:</p>" +
                "<p>- option 1: " + Question1option1 + " time(s)</p>" +
                "<p>- option 2: " + Question1option2 + " time(s)</p>" +
                "<p>Question 2:</p>" +
                "<p>- option 1: " + Question2option1 + " time(s)</p>" +
                "<p>- option 2: " + Question2option2 + " time(s)</p>" +
                "<form action='/results' method='GET'><a href='/SolePageSurvey.jsp'><button type=submit name = reset>Reset the results</button></a></form>" +
                "<a href='"+PreviousPage+"'><button>Return to previous page</button></a><br><br></body></html>";
        return HTMLformat;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Question1option1.set(0);
        Question1option2.set(0);
        Question2option1.set(0);
        Question2option2.set(0);
        response.setContentType("text/html");
        response.getWriter().print(printHTML());
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id1 = request.getParameter("question1_group");
        String id2 = request.getParameter("question2_group");
        PreviousPage=request.getHeader("referer");


        if (id1 != null && id1.equals("question1option1")) {
            Question1option1.getAndIncrement();
        }
        if (id1 != null && id1.equals("question1option2")) {
            Question1option2.getAndIncrement();
        }
        if (id2 != null && id2.equals("question2option1")) {
            Question2option1.getAndIncrement();
        }
        if (id2 != null && id2.equals("question2option2")) {
            Question2option2.getAndIncrement();
        }

        PrintWriter pw = response.getWriter();
        if(!request.getHeader("Referer").contains("MultiPageSurvey1")){
            response.setContentType("text/html");
            pw.println(printHTML());}
        else {response.sendRedirect("MultiPageSurvey2.jsp");}
    }
}