package com.web;

public class Classreport {

		private int student_id;
		private String student_name;
		private String subject_name;
		private String teacher_name;
		@Override
		public String toString() {
			return "ClassReportData [student_id=" + student_id + ", student_name=" + student_name + ", subject_name="
					+ subject_name + ", teacher_name=" + teacher_name + "]";
		}
		public int getStudent_id() {
			return student_id;
		}
		public void setStudent_id(int student_id) {
			this.student_id = student_id;
		}
		public Classreport(int student_id, String student_name, String subject_name, String teacher_name) {
			super();
			this.student_id = student_id;
			this.student_name = student_name;
			this.subject_name = subject_name;
			this.teacher_name = teacher_name;
		}
		public String getStudent_name() {
			return student_name;
		}
		public void setStudent_name(String student_name) {
			this.student_name = student_name;
		}
		public String getSubject_name() {
			return subject_name;
		}
		public void setSubject_name(String subject_name) {
			this.subject_name = subject_name;
		}
		public String getTeacher_name() {
			return teacher_name;
		}
		public void setTeacher_name(String teacher_name) {
			this.teacher_name = teacher_name;
		}
	}


