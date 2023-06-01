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

@WebServlet("/update")
public class KSEEB_Update extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		SSLC_Students sslc_Students = new SSLC_Students();

		String register_Number = req.getParameter("register");
		int register_Number_int = Integer.parseInt(register_Number);
		String student_Name = req.getParameter("name");

		String dateOfBirth = req.getParameter("dob");

		int internalKannadaMark = Integer.parseInt(req.getParameter("internal_kannada_mark"));
		int internalEnglishMark = Integer.parseInt(req.getParameter("internal_english_mark"));
		int internalHindiMark = Integer.parseInt(req.getParameter("internal_hindi_mark"));
		int internalMathMark = Integer.parseInt(req.getParameter("internal_math_mark"));
		int internalScienceMark = Integer.parseInt(req.getParameter("internal_science_mark"));
		int internalSocial_ScienceMark = Integer.parseInt(req.getParameter("internal_social_science_mark"));

		int externalKannadaMark = Integer.parseInt(req.getParameter("external_kannada_mark"));
		int externalEnglishMark = Integer.parseInt(req.getParameter("external_english_mark"));
		int externalHindiMark = Integer.parseInt(req.getParameter("external_hindi_mark"));
		int externalMathMark = Integer.parseInt(req.getParameter("external_math_mark"));
		int externalScienceMark = Integer.parseInt(req.getParameter("external_science_mark"));
		int externalSocial_ScienceMark = Integer.parseInt(req.getParameter("external_social_science_mark"));

		int totalKannadaMark = internalKannadaMark + externalKannadaMark;
		int totalEnglishMark = internalEnglishMark + externalEnglishMark;
		int totalHindiMark = internalHindiMark + externalHindiMark;
		int totalMathMark = internalMathMark + externalMathMark;
		int totalScienceMark = internalScienceMark + externalScienceMark;
		int totalSocial_ScienceMark = internalSocial_ScienceMark + externalSocial_ScienceMark;

		int total_marks = totalKannadaMark + totalEnglishMark + totalHindiMark + totalMathMark + totalScienceMark
				+ totalSocial_ScienceMark;

		int total_external_marks = externalKannadaMark + externalEnglishMark + externalHindiMark + externalMathMark
				+ externalScienceMark + externalSocial_ScienceMark;

		if (total_external_marks >= 175) {
			if (totalKannadaMark >= 44 && totalEnglishMark >= 35 && totalHindiMark >= 35 && totalMathMark >= 35
					&& totalScienceMark >= 35 && totalSocial_ScienceMark >= 35) {
				String result = "PASS";
				sslc_Students.setResult(result);
			}
		}

		if (total_marks >= 219) {
			String cga = "";
			if (total_marks >= 563 && total_marks <= 625) {
				cga = "A+";
			} else if (total_marks >= 500 && total_marks <= 562) {
				cga = "A";
			} else if (total_marks >= 438 && total_marks <= 499) {
				cga = "B+";
			} else if (total_marks >= 375 && total_marks <= 437) {
				cga = "B";
			} else if (total_marks >= 313 && total_marks <= 374) {
				cga = "C+";
			} else if (total_marks >= 219 && total_marks <= 312) {
				cga = "C";
			} else {
				cga = "-";
			}
			sslc_Students.setCGA(cga);

		}

		String physical_health = req.getParameter("physical");
		String attitude_values = req.getParameter("attitude");
		String work_experience = req.getParameter("work");
		String art_education = req.getParameter("art");

		sslc_Students.setRegister_Number(register_Number_int);
		sslc_Students.setStudent_Name(student_Name);
		sslc_Students.setDateOfBirth(dateOfBirth);

		sslc_Students.setInternalKannadaMark(internalKannadaMark);
		sslc_Students.setInternalEnglishMark(internalEnglishMark);
		sslc_Students.setInternalHindiMark(internalHindiMark);
		sslc_Students.setInternalMathMark(internalMathMark);
		sslc_Students.setInternalScienceMark(internalScienceMark);
		sslc_Students.setInternalSocial_ScienceMark(internalSocial_ScienceMark);

		sslc_Students.setExternalKannadaMark(externalKannadaMark);
		sslc_Students.setExternalEnglishMark(externalEnglishMark);
		sslc_Students.setExternalHindiMark(externalHindiMark);
		sslc_Students.setExternalMathMark(externalMathMark);
		sslc_Students.setExternalScienceMark(externalScienceMark);
		sslc_Students.setExternalSocial_ScienceMark(externalSocial_ScienceMark);

		sslc_Students.setTotalKannadaMark(totalKannadaMark);
		sslc_Students.setTotalEnglishMark(totalEnglishMark);
		sslc_Students.setTotalHindiMark(totalHindiMark);
		sslc_Students.setTotalMathMark(totalMathMark);
		sslc_Students.setTotalScienceMark(totalScienceMark);
		sslc_Students.setTotalSocial_ScienceMark(totalSocial_ScienceMark);

		sslc_Students.setTotal_marks(total_marks);

		sslc_Students.setGrade();

		sslc_Students.setPhysical_health(physical_health);
		sslc_Students.setAttitude_values(attitude_values);
		sslc_Students.setWork_experience(work_experience);
		sslc_Students.setArt_education(art_education);

		StudentMarksDAO dao = new StudentMarksDAO();
		dao.update(sslc_Students);

		resp.getWriter().print("<h1> Updated Successful </h1>");
		
		RequestDispatcher dispatcher= req.getRequestDispatcher("back.html");
		
		dispatcher.include(req, resp);
	}
	
}
