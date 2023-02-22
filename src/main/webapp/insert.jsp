<%@ include file='menu.jsp'%>
<div style='margin-top:50px' align='center'>
  <form action='save-record.jsp' method='post'>
    <table style='border:2px solid blue;font-size:20px' cellpadding='10px'>
      <tr>
       <td>Enter Student Id:</td>
       <td><input type='text' name='t1'/></td>
      </tr>
      <tr>
       <td>Enter Student firstname:</td>
       <td><input type='text' name='t2'/></td>
      </tr>
      <tr>
       <td>Enter Student lastname:</td>
       <td><input type='text' name='t3'/></td>
      </tr>
      <tr>
       <td>Enter Student address:</td>
       <td><input type='text' name='t4'/></td>
      </tr>
      <tr>
       <td>Enter Student age:</td>
       <td><input type='text' name='t5'/></td>
      </tr>
      <tr>
       <td colspan='2' align='right'><button>Save Record</button></td>
       
      </tr>
    </table>
  </form>
</div>