<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="dataTransferObject.SSLC_Students"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Data Update</title>
<style>
#sub {
	display: flex;
	justify-content: flex-end;
	padding-right: 20px;
}

#sub2 {
	padding-left: 10px;
}

body {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 1.42857143;
	font-weight: bold;
}

body {
	background-color: rgb(232, 248, 245);
}

#tag {
	background-color: field;
	cursor: pointer;
	margin: 0em;
	border-width: 1px;
	border-style: solid;
	border-color: black;
	border-image: initial;
	border-radius: 0px;
}

table {
	margin: auto;
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

#inpt[type="text"] {
	width: 100%;
}

input[type="text"] {
	width: 75%;
}

input {
	font-family: inherit;
	font-size: inherit;
	padding: 10px;
	border-radius: 10px;
	font-size: inherit;
}

.register, .name {
	font-family: inherit;
	font-size: inherit;
	padding: 10px;
	border-radius: 10px;
	font-size: inherit;
	font-family: inherit;
}

table#menu {
	margin-right: 0px;
	margin-left: auto;
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
	<br>
	<%
	SSLC_Students dto = (SSLC_Students) request.getAttribute("updatedata");

	String[] arr = { "A+", "A", "B+", "B", "C+", "C", "D+", "D" };

	String physicalHealth = dto.getPhysical_health();
	String attitudeValues = dto.getAttitude_values();
	String artEducation = dto.getArt_education();
	String workExperience = dto.getWork_experience();
	%>


	<form action="update" id="insertbutton" method="post">

		<table style="width: 40%">
			<tr>
				<td><label>Register Number :</label></td>
			</tr>
			<tr>
				<td><input type="text" name="register" readonly="readonly"
					id="inpt" maxlength="11" value=<%=dto.getRegister_Number()%>
					required="required" placeholder="Enter Register No"
					oninvalid="this.setCustomValidity('Enter Register Number Here')"
					oninput="this.setCustomValidity('')"></td>
			</tr>
			<tr>
				<td><label>Name :</label></td>
			</tr>
			<tr>
				<td><input type="text" name="name" required="required"
					id="inpt" value='<%=dto.getStudent_Name()%>'
					placeholder="Enter Name"
					oninvalid="this.setCustomValidity('Enter Student Name Here')"
					oninput="this.setCustomValidity('')"></td>
			</tr>
		</table>
		<table style="width: 40%">
			<tr>
				<td><label>Date Of Birth :</label></td>

				<td><input type="date" name="dob" required="required"
					value=<%=dto.getDateOfBirth()%>
					oninvalid="this.setCustomValidity('Choose Date of Birth Here')"
					oninput="this.setCustomValidity('')"></td>
			</tr>
			<tr>
				<td><label>Internal Kannada Mark :</label></td>
				<td><label>External Kannada Mark :</label></td>
			</tr>
			<tr>
				<td><table id="menu">
						<tr>
							<td><input type="text" name="internal_kannada_mark"
								maxlength="2" value=<%=dto.getInternalKannadaMark()%>
								required="required" placeholder="Enter Kannada Mark"
								oninvalid="this.setCustomValidity('Enter Internal Kannada Mark Here 0-25')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>
				<td><table id="menu">
						<tr>
							<td><input type="text" name="external_kannada_mark"
								maxlength="3" value=<%=dto.getExternalKannadaMark()%>
								required="required" placeholder="Enter Kannada Mark"
								oninvalid="this.setCustomValidity('Enter External Kannada Mark Here 0-100')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><label>Internal English Mark :</label></td>
				<td><label>External English Mark :</label></td>
			</tr>
			<tr>
				<td><table id="menu">
						<tr>
							<td><input type="text" name="internal_english_mark"
								maxlength="2" value=<%=dto.getInternalEnglishMark()%>
								required="required" placeholder="Enter English Mark"
								oninvalid="this.setCustomValidity('Enter Internal English Mark Here 0-20')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>

				<td><table id="menu">
						<tr>
							<td><input type="text" name="external_english_mark"
								maxlength="3" value=<%=dto.getExternalEnglishMark()%>
								required="required" placeholder="Enter English Mark"
								oninvalid="this.setCustomValidity('Enter External English Mark Here 0-80')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><label>Internal Hindi Mark :</label></td>
				<td><label>External Hindi Mark :</label></td>

			</tr>
			<tr>
				<td><table id="menu">
						<tr>
							<td><input type="text" name="internal_hindi_mark"
								maxlength="2" value=<%=dto.getInternalHindiMark()%>
								required="required" placeholder="Enter Hindi Mark"
								oninvalid="this.setCustomValidity('Enter Internal Hindi Mark Here 0-20')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>
				<td><table id="menu">
						<tr>
							<td><input type="text" name="external_hindi_mark"
								maxlength="3" value=<%=dto.getExternalHindiMark()%>
								required="required" placeholder="Enter Hindi Mark"
								oninvalid="this.setCustomValidity('Enter External Hindi Mark Here 0-80')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><label>Internal Math Mark :</label></td>
				<td><label>External Math Mark :</label></td>

			</tr>
			<tr>
				<td><table id="menu">
						<tr>
							<td><input type="text" name="internal_math_mark"
								maxlength="2" value=<%=dto.getInternalMathMark()%>
								required="required" placeholder="Enter Math Mark"
								oninvalid="this.setCustomValidity('Enter Internal Math Mark Here 0-20')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>
				<td><table id="menu">
						<tr>
							<td><input type="text" name="external_math_mark"
								maxlength="3" value=<%=dto.getExternalMathMark()%>
								required="required" placeholder="Enter Math Mark"
								oninvalid="this.setCustomValidity('Enter External Math Mark Here 0-80')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><label>Internal Science Mark :</label></td>
				<td><label>External Science Mark :</label></td>
			</tr>
			<tr>
				<td><table id="menu">
						<tr>
							<td><input type="text" name="internal_science_mark"
								maxlength="2" value=<%=dto.getInternalScienceMark()%>
								required="required" placeholder="Enter Science Mark"
								oninvalid="this.setCustomValidity('Enter Internal Science Mark Here 0-20')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>

				<td><table id="menu">
						<tr>
							<td><input type="text" name="external_science_mark"
								maxlength="3" value=<%=dto.getExternalScienceMark()%>
								required="required" placeholder="Enter Science Mark"
								oninvalid="this.setCustomValidity('Enter External Science Mark Here 0-80')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>
			</tr>
			<tr>
				<td><label>Internal Social Science Mark :</label></td>
				<td><label>External Social Science Mark :</label></td>

			</tr>
			<tr>
				<td><table id="menu">
						<tr>
							<td><input type="text" name="internal_social_science_mark"
								maxlength="2" value=<%=dto.getInternalSocial_ScienceMark()%>
								required="required" placeholder="Enter Social Science Mark"
								oninvalid="this.setCustomValidity('Enter Internal Social Science Mark Here 0-20')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>
				<td><table id="menu">
						<tr>
							<td><input type="text" name="external_social_science_mark"
								maxlength="3" value=<%=dto.getExternalSocial_ScienceMark()%>
								required="required" placeholder="Enter Social Science Mark"
								oninvalid="this.setCustomValidity('Enter External Social Science Mark Here 0-80')"
								oninput="this.setCustomValidity('')"></td>
						</tr>
					</table></td>
			</tr>

			<tr>
				<td><label>Physical Health &nbsp;&nbsp;&nbsp;: </label>&nbsp;<select
					id="tag" name="physical" required="required"
					oninvalid="this.setCustomValidity('Select Physical Health Grade in the list')"
					oninput="this.setCustomValidity('')">
						<option value=<%=physicalHealth%>><%=physicalHealth%></option>
						<option value="">Grade</option>
						<%
						for (String s : arr) {
							if (s.equals(physicalHealth)) {
								continue;
							}
						%>
						<option value=<%=s%>><%=s%></option>

						<%
						}
						%>
				</select></td>
				<td><label>Attitude Values &nbsp;: </label>&nbsp;<select
					id="tag" name="attitude" required="required"
					oninvalid="this.setCustomValidity('Select Attitude Values Grade in the list')"
					oninput="this.setCustomValidity('')">
						<option value=<%=attitudeValues%>><%=attitudeValues%></option>
						<option value="">Grade</option>
						<%
						for (String s : arr) {
							if (s.equals(attitudeValues)) {
								continue;
							}
						%>
						<option value=<%=s%>><%=s%></option>

						<%
						}
						%>
				</select></td>
			</tr>
			<tr>
				<td><label>Work Experience &nbsp;: </label>&nbsp;<select
					id="tag" name="work" required="required"
					oninvalid="this.setCustomValidity('Select Work Experience Grade in the list')"
					oninput="this.setCustomValidity('')">
						<option value=<%=workExperience%>><%=workExperience%></option>
						<option value="">Grade</option>
						<%
						for (String s : arr) {
							if (s.equals(workExperience)) {
								continue;
							}
						%>
						<option value=<%=s%>><%=s%></option>

						<%
						}
						%>
				</select></td>
				<td><label>Art Education &nbsp;&nbsp;&nbsp;: </label>&nbsp;<select
					id="tag" name="art" required="required"
					oninvalid="this.setCustomValidity('Select Art Education Grade in the list')"
					oninput="this.setCustomValidity('')">
						<option value=<%=artEducation%>><%=artEducation%></option>
						<option value="">Grade</option>

						<%
						for (String s : arr) {
							if (s.equals(artEducation)) {
								continue;
							}
						%>
						<option value=<%=s%>><%=s%></option>

						<%
						}
						%>
				</select></td>
			</tr>
			<tr>
				<td><br></td>
			</tr>
			<tr>
				<td id="sub"><button form="insertbutton" type="submit"
						style="width: 40%" id="butt">Update</button></td>
				<td id="sub2"><a href="updatepage.html"><button
							style="width: 40%" type="button" id="butt" onclick="goBack()">Cancel</button></a></td>
			</tr>
		</table>
	</form>
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