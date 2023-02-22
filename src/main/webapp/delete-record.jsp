<%@page import="com.cetpa.StudentDao"%>
<%@page import="com.cetpa.Student"%>
<%
int v1=Integer.parseInt(request.getParameter("t1"));

boolean st=StudentDao.delete(v1);
if(st)
{
	%>
	<%@ include file="menu.jsp" %>
	<div style='margin-top:50px' align="center">
	 <h2>Student record has been deleted successfully</h2>
	</div>
	<%
	return;
}
%>
<jsp:include page="delete.jsp" />
<div style='margin-top:20px' align="center">
 <h2 style='color:red'>Student record not found</h2>
</div>
