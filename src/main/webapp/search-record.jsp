<%@page import='com.cetpa.Student'%>
<%@page import='com.cetpa.StudentDao'%>
<%@ include file='menu.jsp'%>
<%
  int v1=Integer.parseInt(request.getParameter("t1"));
 Student st=StudentDao.getRecord(v1);
 if(st!=null)
 {
	 %>
	   <table border='2' align="center" style='border-collapse:collapse;width:40%'>
	      <tr style='background-color:orange;color:white'>
	       <th colspan='2' align="center">Student details</th>
	       
	     </tr>
	     <tr>
	       <th>Student Id:</th>
	       <td><%=st.getSid() %></td>
	     </tr>
	     <tr>
	       <th>Student firstname:</th>
	       <td align="left"><%=st.getFirstname() %></td>
	     </tr>
	     <tr>
	       <th>Student lastname:</th>
	       <td><%=st.getLastname() %></td>
	     </tr>
	     <tr>
	       <th>Student age</th>
	       <td><%=st.getAge() %></td>
	     </tr>
	     <tr>
	       <th>Student Address:</th>
	       <td><%=st.getAddress() %></td>
	     </tr>
	      
	   </table>
	 <%
	 return;
 }
%>
<jsp:include page='search.jsp'/>
<div style='margin-top:20px' align="center">
  <h2 style="color:red;font-size:30px;" >Record not found in databases</h2>
</div>