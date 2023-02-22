<%@page import="com.cetpa.StudentDao"%>
<%@page import="com.cetpa.Student"%>
<%@ include file="menu.jsp"%>
<%
	int v1 = Integer.parseInt(request.getParameter("t1"));
	String v2 = request.getParameter("t2");
	String v3 = request.getParameter("t3");
	String v4 = request.getParameter("t4");
	int v5 = Integer.parseInt(request.getParameter("t5"));
	Student st = new Student(v1, v2, v3, v4, v5);
	StudentDao.updateRecord(st);
%>
<div style='margin-top: 50px' align="center">
	<h2>Student record has been update successfully</h2>
</div>
