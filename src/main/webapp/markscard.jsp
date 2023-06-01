<%@page import="dataTransferObject.SSLC_Students"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Marks Card</title>
<style type="text/css">
.grade {
	margin-top: 5%;
	margin-left: 73%;
}

label, input, button {
	display: block;
	width: 100%;
	padding: 0;
	border: none;
	outline: none;
	box-sizing: border-box;
}

#marks {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
}

#marks td, #marks th {
	border: 1px solid #ddd;
	padding: 8px;
}

#marks tr:nth-child(even) {
	background-color: #f2f2f2;
}

#marks tr:hover {
	background-color: #ddd;
}

#marks th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	color: black;
}

#name {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 80%;
	margin-left: 10%;
}

#name td, #name th {
	border: 1px solid #ddd;
	padding: 8px;
	color: white;
}

#name tr:nth-child(even) {
	background-color: #59b75a;
}

#name tr:nth-child(odd) {
	background-color: #59b75a;
}

#name th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #59b75a;
	color: white;
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
	<div>
		<br>
	</div>

	<%
	SSLC_Students dto = (SSLC_Students) request.getAttribute("studentmark");
	%>

	<table id="name">
		<tr>
			<th style="width: 30%;">Register ID</th>
			<td><%=dto.getRegister_Number()%></td>
		</tr>
		<tr>
			<th>Name</th>
			<td><%=dto.getStudent_Name()%></td>
		</tr>
	</table>
	<br>

	<table id="marks" style="position: absolute;" class="grade">
		<tr>
			<th colspan="2" style="background-color: #3379b5; color: white;"
				height="30px">Part B</th>
		</tr>
		<tr>
			<th>SUBJECT</th>
			<th>GRADE</th>
		</tr>
		<tr>
			<th>Physical and Health</th>
			<td><%=dto.getPhysical_health()%></td>
		</tr>
		<tr>
			<th>Attitude and Values</th>
			<td><%=dto.getAttitude_values()%></td>
		</tr>
		<tr>
			<th>Work Experience</th>
			<td><%=dto.getWork_experience()%></td>
		</tr>
		<tr>
			<th>Art Education</th>
			<td><%=dto.getArt_education()%></td>

		</tr>

	</table>
	<br>
	<table id="marks" style="position: relative; margin-left: 10%">
		<tr>
			<th colspan="5" style="background-color: #3379b5; color: white;"
				height="30px">Part A</th>
		</tr>
		<tr>
			<th>Subject</th>
			<th>Internal Marks</th>
			<th>External Marks</th>
			<th>Total Marks</th>
			<th>Grade</th>
		</tr>
		<tr>
			<th width="100px">Kannada</th>
			<td width="150px"><%=dto.getInternalKannadaMark()%></td>
			<td width="150px"><%=dto.getExternalKannadaMark()%></td>
			<td width="150px"><%=dto.getTotalKannadaMark()%></td>
			<td><%=dto.getKannadaGrade()%></td>
		</tr>
		<tr>
			<th>English</th>
			<td><%=dto.getInternalEnglishMark()%></td>
			<td><%=dto.getExternalEnglishMark()%></td>
			<td><%=dto.getTotalEnglishMark()%></td>
			<td><%=dto.getEnglishGrade()%></td>
		</tr>
		<tr>
			<th>Hindi</th>
			<td><%=dto.getInternalHindiMark()%></td>
			<td><%=dto.getExternalHindiMark()%></td>
			<td><%=dto.getTotalHindiMark()%></td>
			<td><%=dto.getHindiGrade()%></td>
		</tr>
		<tr>
			<th>Math</th>
			<td><%=dto.getInternalMathMark()%></td>
			<td><%=dto.getExternalMathMark()%></td>
			<td><%=dto.getTotalMathMark()%></td>
			<td><%=dto.getMathGrade()%></td>
		</tr>
		<tr>
			<th>Science</th>
			<td><%=dto.getInternalScienceMark()%></td>
			<td><%=dto.getExternalScienceMark()%></td>
			<td><%=dto.getTotalScienceMark()%></td>
			<td><%=dto.getScienceGrade()%></td>
		</tr>
		<tr>
			<th>S Science</th>
			<td><%=dto.getInternalSocial_ScienceMark()%></td>
			<td><%=dto.getExternalSocial_ScienceMark()%></td>
			<td><%=dto.getTotalSocial_ScienceMark()%></td>
			<td><%=dto.getSocial_ScienceGrade()%></td>
		</tr>
		<tr>
			<th colspan="3">Total Marks</th>
			<td colspan="2"><%=dto.getTotal_marks()%></td>
		</tr>


	</table>
	<br>
	<table id="name">
		<tr>
			<th>Result</th>
			<td><%=dto.getResult()%></td>
		</tr>
		<tr>
			<th>CGA</th>
			<td><%=dto.getCGA()%></td>
		</tr>

	</table>
	<br>

</body>
</html>