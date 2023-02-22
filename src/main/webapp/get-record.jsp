<%@page import="com.cetpa.StudentDao"%>
<%@page import="com.cetpa.Student"%>
<%
int v1=Integer.parseInt(request.getParameter("t1"));
Student st=StudentDao.getRecord(v1);
if(st!=null)
{
	%>
	<%@ include file="menu.jsp" %>
	<form action='update-record.jsp' method='post'>
	<table border='1' align='center' style='border-collapse:collapse;font-size:20px;width:40%;margin-top:50px'>
	 <tr style='background-color:orange;color:white'>
	  <td colspan="2" align="center">Student Details</td>
	 </tr>
	 <tr>
	  <th align='left'>Student id</th>
	  <td><input type='text' name='t1' readonly value='<%=st.getSid()%>' style='width:100%'></td>
	 </tr>
	 <tr>
	  <th align='left'>First name</th>
	  <td><input type='text' name='t2' value='<%=st.getFirstname()%>' style='width:100%'></td>
	 </tr>
	 <tr>
	  <th align='left'>Last name</th>
	  <td><input type='text' name='t3' value='<%=st.getLastname()%>' style='width:100%'></td>
	 </tr>
	 <tr>
	  <th align='left'>Address</th>
	  <td><input type='text' name='t4' value='<%=st.getAddress()%>' style='width:100%'></td>
	 </tr>
	 <tr>
	  <th align='left'>Age</th>
	  <td><input type='text' name='t5' value='<%=st.getAge()%>' style='width:100%'></td>
	 </tr>
	 <tr>
	  <td colspan="2" align="right">
	   <button>Update Record</button>
	  </td>
	 </tr>
	</table>
	</form>
	<%
	return;
}
%>
<jsp:include page="search.jsp" />
<div style='margin-top:20px' align="center">
 <h2 style='color:red'>Student record not found</h2>
</div>
