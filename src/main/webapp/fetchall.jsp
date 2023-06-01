<%@page import="dataTransferObject.SSLC_Students"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Data</title>
<style type="text/css">
#thed {
	position: absolute;
	right: 5%;
}

#marks {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#marks td, #marks th {
	border: 1px solid #ddd;
	padding: 8px;
}

#marks tr:nth-child(even) {
	background-color: #f2f2f2;
}

#marks tr:nth-child(odd) {
	background-color: #ebf5fb;
}

#marks tr:hover {
	background-color: #ddd;
}

#marks th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #566573;
	color: white;
}

#butt {
	color: #333;
	background-color: #fff;
	border-color: #ccc;
	padding: 6px 12px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: normal;
	line-height: 1.42857143;
	text-align: center;
	cursor: pointer;
	border-radius: 4px;
}

body {
	background-color: rgb(254, 249, 231);
}
</style>
</head>
<body>
	<div style="background-color: rgb(180, 180, 180); color: #fff;">
		<div style="text-align: center;">
			<h3 style="color: black; font-weight: normal;">Karnataka School
				Examination and Assessment Board</h3>
			<h4 style="font-weight: normal;">(SSLC Main Examination Results)</h4>
		</div>
	</div>
	<a href="index.jsp"><button id="butt">Home Page</button></a>
	<div>
		<br>
	</div>
	<%
	List<SSLC_Students> dtos = (List<SSLC_Students>) request.getAttribute("studentsmarks");
	%>
	<table id="marks">
		<tr>
			<th colspan="30" style="background-color: #1c2833">Part A</th>
		</tr>
		<tr>
			<th>Register ID</th>
			<th>Name</th>
			<th>Date Of Birth</th>
			<th>Internal Kannada Mark</th>
			<th>Internal English Mark</th>
			<th>Internal Hindi Mark</th>
			<th>Internal Math Mark</th>
			<th>Internal Science Mark</th>
			<th>Internal Social Science Mark</th>
			<th>External Kannada Mark</th>
			<th>External English Mark</th>
			<th>External Hindi Mark</th>
			<th>External Math Mark</th>
			<th>External Science Mark</th>
			<th>External Social Science Mark</th>
			<th>Total Kannada Mark</th>
			<th>Total English Mark</th>
			<th>Total Hindi Mark</th>
			<th>Total Math Mark</th>
			<th>Total Science Mark</th>
			<th>Total Social Science Mark</th>
			<th>Kannada Grade</th>
			<th>English Grade</th>
			<th>Hindi Grade</th>
			<th>Math Grade</th>
			<th>Science Grade</th>
			<th>Social Science Grade</th>
			<th>Total Marks</th>
			<th>Result</th>
			<th>CGA</th>
		</tr>

		<%
		for (SSLC_Students dto : dtos) {
		%>
		<tr>
			<td><%=dto.getRegister_Number()%></td>
			<td><%=dto.getStudent_Name()%></td>
			<td><%=dto.getDateOfBirth()%></td>
			<td><%=dto.getInternalKannadaMark()%></td>
			<td><%=dto.getInternalEnglishMark()%></td>
			<td><%=dto.getInternalHindiMark()%></td>
			<td><%=dto.getInternalMathMark()%></td>
			<td><%=dto.getInternalScienceMark()%></td>
			<td><%=dto.getInternalSocial_ScienceMark()%></td>
			<td><%=dto.getExternalKannadaMark()%></td>
			<td><%=dto.getExternalEnglishMark()%></td>
			<td><%=dto.getExternalHindiMark()%></td>
			<td><%=dto.getExternalMathMark()%></td>
			<td><%=dto.getExternalScienceMark()%></td>
			<td><%=dto.getExternalSocial_ScienceMark()%></td>
			<td><%=dto.getTotalKannadaMark()%></td>
			<td><%=dto.getTotalEnglishMark()%></td>
			<td><%=dto.getTotalHindiMark()%></td>
			<td><%=dto.getTotalMathMark()%></td>
			<td><%=dto.getTotalScienceMark()%></td>
			<td><%=dto.getTotalSocial_ScienceMark()%></td>
			<td><%=dto.getKannadaGrade()%></td>
			<td><%=dto.getEnglishGrade()%></td>
			<td><%=dto.getHindiGrade()%></td>
			<td><%=dto.getMathGrade()%></td>
			<td><%=dto.getScienceGrade()%></td>
			<td><%=dto.getSocial_ScienceGrade()%></td>
			<td><%=dto.getTotal_marks()%></td>
			<td><%=dto.getResult()%></td>
			<td><%=dto.getCGA()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<br>
	<table id="marks">
		<tr>
			<th colspan="6" style="background-color: #1c2833">Part B</th>
		</tr>
		<tr>
			<th>Register ID</th>
			<th>Name</th>
			<th>Physical and Health</th>
			<th>Attitude and Values</th>
			<th>Work Experience</th>
			<th>Art Education</th>

		</tr>

		<%
		for (SSLC_Students dto : dtos) {
		%>
		<tr>
			<td><%=dto.getRegister_Number()%></td>
			<td><%=dto.getStudent_Name()%></td>
			<td><%=dto.getPhysical_health()%></td>
			<td><%=dto.getAttitude_values()%></td>
			<td><%=dto.getWork_experience()%></td>
			<td><%=dto.getArt_education()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<br>
	<div id="thed">
		<a href="kseeb.html"><button id="butt">Back</button></a>
	</div>
	<div>
		<br>
	</div>
	<div>
		<br>
	</div>

	<div>
		<br>
	</div>

	<div class="row col-lg-12"
		style="background-color: #222; color: #ABA9A9; font-size: smaller">
		<div class="col-lg-12" style="background-color: #222;">
			<p></p>
		</div>
		<div style="text-align: right;">
			<div class="col-lg-4" style="background-color: #222;">
				<p>Created by AARUN KUTTY.</p>
			</div>
		</div>
	</div>
</body>
</html>