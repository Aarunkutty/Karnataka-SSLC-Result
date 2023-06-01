package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataAccessObject.StudentMarksDAO;
import dataTransferObject.SSLC_Students;

@WebServlet("/updatepage")
public class KSEEB_UpdatePage extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String register_Number = req.getParameter("register");
		int register_Number_int = Integer.parseInt(register_Number);

		StudentMarksDAO dao = new StudentMarksDAO();
		SSLC_Students dto = dao.fetch(register_Number_int);
		
		req.setAttribute("updatedata", dto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("update.jsp");
		dispatcher.forward(req, resp);
	}
}
