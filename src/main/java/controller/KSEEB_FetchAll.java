package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataAccessObject.StudentMarksDAO;
import dataTransferObject.SSLC_Students;

@WebServlet("/fetchall")
public class KSEEB_FetchAll extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentMarksDAO dao = new StudentMarksDAO();
		List<SSLC_Students> dtos=dao.fetchall();
		
		req.setAttribute("studentsmarks", dtos);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("fetchall.jsp");
		dispatcher.forward(req, resp);
	}
	 
}
