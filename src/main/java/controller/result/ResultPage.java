package controller.result;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataAccessObject.StudentMarksDAO;
import dataTransferObject.SSLC_Students;

@WebServlet("/result")
public class ResultPage extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String register_Number = req.getParameter("register");
		int register_Number_int = Integer.parseInt(register_Number);

		String date = req.getParameter("ddlyear") + "-" + req.getParameter("ddlmon") + "-" + req.getParameter("ddlday");

		StudentMarksDAO dao = new StudentMarksDAO();
		SSLC_Students sslc_Students = dao.fetch(register_Number_int);
		 if (sslc_Students == null) {
			RequestDispatcher dispatcher4 = req.getRequestDispatcher("worngregisterno.html");
			dispatcher4.forward(req, resp);
		} else if (!(date.equals(sslc_Students.getDateOfBirth()))) {
			RequestDispatcher dispatcher2 = req.getRequestDispatcher("worngdateofbirth.html");
			dispatcher2.forward(req, resp);
		} else {
			req.setAttribute("studentmark", sslc_Students);
			RequestDispatcher dispatcher = req.getRequestDispatcher("markscard.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
