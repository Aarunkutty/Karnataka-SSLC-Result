package dataTransferObject;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class SSLC_Students {

	@Id
	int register_Number;
	String student_Name;

	String dateOfBirth;

	int internalKannadaMark;
	int internalEnglishMark;
	int internalHindiMark;
	int internalMathMark;
	int internalScienceMark;
	int internalSocial_ScienceMark;

	int externalKannadaMark;
	int externalEnglishMark;
	int externalHindiMark;
	int externalMathMark;
	int externalScienceMark;
	int externalSocial_ScienceMark;

	int totalKannadaMark;
	int totalEnglishMark;
	int totalHindiMark;
	int totalMathMark;
	int totalScienceMark;
	int totalSocial_ScienceMark;

	int total_marks;

	String kannadaGrade;
	String englishGrade;
	String hindiGrade;
	String mathGrade;
	String scienceGrade;
	String social_ScienceGrade;

	String result = "FAIL";
	String CGA ="-";

	String physical_health;
	String attitude_values;
	String work_experience;
	String art_education;

	public void setGrade() {
		kannadaGrade = subjectGradeOutOf125(totalKannadaMark);
		englishGrade = subjectGradeOutOf100(totalEnglishMark);
		hindiGrade = subjectGradeOutOf100(totalHindiMark);
		mathGrade = subjectGradeOutOf100(totalMathMark);
		scienceGrade = subjectGradeOutOf100(totalScienceMark);
		social_ScienceGrade = subjectGradeOutOf100(totalSocial_ScienceMark);
	}

	public String subjectGradeOutOf125(int mark) {
		if (mark >= 44) {
			String grade = "";
			if (mark >= 113 && mark <= 125) {
				grade = "A+";
			} else if (mark >= 100 && mark <= 112) {
				grade = "A";
			} else if (mark >= 88 && mark <= 99) {
				grade = "B+";
			} else if (mark >= 75 && mark <= 87) {
				grade = "B";
			} else if (mark >= 63 && mark <= 74) {
				grade = "C+";
			} else if (mark >= 44 && mark <= 62) {
				grade = "C";
			}
			return grade;
		}
		return "-";
	}

	public String subjectGradeOutOf100(int mark) {
		if (mark >= 35) {
			String grade = "";
			if (mark >= 91 && mark <= 100) {
				grade = "A+";
			} else if (mark >= 81 && mark <= 90) {
				grade = "A";
			} else if (mark >= 71 && mark <= 80) {
				grade = "B+";
			} else if (mark >= 61 && mark <= 70) {
				grade = "B";
			} else if (mark >= 51 && mark <= 60) {
				grade = "C+";
			} else if (mark >= 35 && mark <= 50) {
				grade = "C";
			}
			return grade;
		}
		return "-";
	}

	public int getRegister_Number() {
		return register_Number;
	}

	public void setRegister_Number(int register_Number) {
		this.register_Number = register_Number;
	}

	public String getStudent_Name() {
		return student_Name;
	}

	public void setStudent_Name(String student_Name) {
		this.student_Name = student_Name;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public int getInternalKannadaMark() {
		return internalKannadaMark;
	}

	public void setInternalKannadaMark(int internalKannadaMark) {
		this.internalKannadaMark = internalKannadaMark;
	}

	public int getInternalEnglishMark() {
		return internalEnglishMark;
	}

	public void setInternalEnglishMark(int internalEnglishMark) {
		this.internalEnglishMark = internalEnglishMark;
	}

	public int getInternalHindiMark() {
		return internalHindiMark;
	}

	public void setInternalHindiMark(int internalHindiMark) {
		this.internalHindiMark = internalHindiMark;
	}

	public int getInternalMathMark() {
		return internalMathMark;
	}

	public void setInternalMathMark(int internalMathMark) {
		this.internalMathMark = internalMathMark;
	}

	public int getInternalScienceMark() {
		return internalScienceMark;
	}

	public void setInternalScienceMark(int internalScienceMark) {
		this.internalScienceMark = internalScienceMark;
	}

	public int getInternalSocial_ScienceMark() {
		return internalSocial_ScienceMark;
	}

	public void setInternalSocial_ScienceMark(int internalSocial_ScienceMark) {
		this.internalSocial_ScienceMark = internalSocial_ScienceMark;
	}

	public int getExternalKannadaMark() {
		return externalKannadaMark;
	}

	public void setExternalKannadaMark(int externalKannadaMark) {
		this.externalKannadaMark = externalKannadaMark;
	}

	public int getExternalEnglishMark() {
		return externalEnglishMark;
	}

	public void setExternalEnglishMark(int externalEnglishMark) {
		this.externalEnglishMark = externalEnglishMark;
	}

	public int getExternalHindiMark() {
		return externalHindiMark;
	}

	public void setExternalHindiMark(int externalHindiMark) {
		this.externalHindiMark = externalHindiMark;
	}

	public int getExternalMathMark() {
		return externalMathMark;
	}

	public void setExternalMathMark(int externalMathMark) {
		this.externalMathMark = externalMathMark;
	}

	public int getExternalScienceMark() {
		return externalScienceMark;
	}

	public void setExternalScienceMark(int externalScienceMark) {
		this.externalScienceMark = externalScienceMark;
	}

	public int getExternalSocial_ScienceMark() {
		return externalSocial_ScienceMark;
	}

	public void setExternalSocial_ScienceMark(int externalSocial_ScienceMark) {
		this.externalSocial_ScienceMark = externalSocial_ScienceMark;
	}

	public int getTotalKannadaMark() {
		return totalKannadaMark;
	}

	public void setTotalKannadaMark(int totalKannadaMark) {
		this.totalKannadaMark = totalKannadaMark;
	}

	public int getTotalEnglishMark() {
		return totalEnglishMark;
	}

	public void setTotalEnglishMark(int totalEnglishMark) {
		this.totalEnglishMark = totalEnglishMark;
	}

	public int getTotalHindiMark() {
		return totalHindiMark;
	}

	public void setTotalHindiMark(int totalHindiMark) {
		this.totalHindiMark = totalHindiMark;
	}

	public int getTotalMathMark() {
		return totalMathMark;
	}

	public void setTotalMathMark(int totalMathMark) {
		this.totalMathMark = totalMathMark;
	}

	public int getTotalScienceMark() {
		return totalScienceMark;
	}

	public void setTotalScienceMark(int totalScienceMark) {
		this.totalScienceMark = totalScienceMark;
	}

	public int getTotalSocial_ScienceMark() {
		return totalSocial_ScienceMark;
	}

	public void setTotalSocial_ScienceMark(int totalSocial_ScienceMark) {
		this.totalSocial_ScienceMark = totalSocial_ScienceMark;
	}

	public int getTotal_marks() {
		return total_marks;
	}

	public void setTotal_marks(int total_marks) {
		this.total_marks = total_marks;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getCGA() {
		return CGA;
	}

	public void setCGA(String cGA) {
		CGA = cGA;
	}

	public String getPhysical_health() {
		return physical_health;
	}

	public void setPhysical_health(String physical_health) {
		this.physical_health = physical_health;
	}

	public String getAttitude_values() {
		return attitude_values;
	}

	public void setAttitude_values(String attitude_values) {
		this.attitude_values = attitude_values;
	}

	public String getWork_experience() {
		return work_experience;
	}

	public void setWork_experience(String work_experience) {
		this.work_experience = work_experience;
	}

	public String getArt_education() {
		return art_education;
	}

	public void setArt_education(String art_education) {
		this.art_education = art_education;
	}

	public String getKannadaGrade() {
		return kannadaGrade;
	}

	public String getEnglishGrade() {
		return englishGrade;
	}

	public String getHindiGrade() {
		return hindiGrade;
	}

	public String getMathGrade() {
		return mathGrade;
	}

	public String getScienceGrade() {
		return scienceGrade;
	}

	public String getSocial_ScienceGrade() {
		return social_ScienceGrade;
	}

	@Override
	public String toString() {
		return "SSLC_Students [register_Number=" + register_Number + ", student_Name=" + student_Name + ", dateOfBirth="
				+ dateOfBirth + ", internalKannadaMark=" + internalKannadaMark + ", internalEnglishMark="
				+ internalEnglishMark + ", internalHindiMark=" + internalHindiMark + ", internalMathMark="
				+ internalMathMark + ", internalScienceMark=" + internalScienceMark + ", internalSocial_ScienceMark="
				+ internalSocial_ScienceMark + ", externalKannadaMark=" + externalKannadaMark + ", externalEnglishMark="
				+ externalEnglishMark + ", externalHindiMark=" + externalHindiMark + ", externalMathMark="
				+ externalMathMark + ", externalScienceMark=" + externalScienceMark + ", externalSocial_ScienceMark="
				+ externalSocial_ScienceMark + ", totalKannadaMark=" + totalKannadaMark + ", totalEnglishMark="
				+ totalEnglishMark + ", totalHindiMark=" + totalHindiMark + ", totalMathMark=" + totalMathMark
				+ ", totalScienceMark=" + totalScienceMark + ", totalSocial_ScienceMark=" + totalSocial_ScienceMark
				+ ", total_marks=" + total_marks + ", kannadaGrade=" + kannadaGrade + ", englishGrade=" + englishGrade
				+ ", hindiGrade=" + hindiGrade + ", mathGrade=" + mathGrade + ", scienceGrade=" + scienceGrade
				+ ", social_ScienceGrade=" + social_ScienceGrade + ", result=" + result + ", CGA=" + CGA
				+ ", physical_health=" + physical_health + ", attitude_values=" + attitude_values + ", work_experience="
				+ work_experience + ", art_education=" + art_education + "]";
	}
}
