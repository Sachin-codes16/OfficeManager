

<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>DeskSavvy</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
    </head>
    <body>
         <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user2");
        String pass=(String)st.getAttribute("pass2");
         String com_id=(String)st.getAttribute("comp");
        if(user==null||pass==null||com_id==null)
          response.sendRedirect("support.jsp?msg=Please login first!!!!");  
        %>
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="logo">
        <h1><a href="index.html"><span>Virtual</span>Office System</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="empHome.jsp"><span>Home</span></a></li>
          <li><a href="empsal11.jsp"><span>Emp Salary</span></a></li>
          <li><a href="leave.jsp"><span>Leave Apply  </span></a></li>
                   <li><a href="attendance.jsp"><span>Attendance  </span></a></li>

          <li><a href="empchangePass.jsp"><span>Change Password</span></a></li>
       
          <li><a href="emplogout"><span>Logout</span></a></li>
        </ul>
      </div> </div>
      </div>
      </div> 
     
     
     
      <div class="clr"></div>
      <center>
     <%
           
           
            DBconnection db=new DBconnection();
            db.pstmt=db.con.prepareStatement("select * from event where com_id='"+com_id+"' ");
             db.rst= db.pstmt.executeQuery();
             out.println("<table width=400   bgcolor=#66CCCC>");

out.println("<tr height=10 bgcolor=#CCFF99>");
out.println("<td align=center><p style=color:#F66755;>Subject</p></td><td align=center><p style=color:#F66755;>Events</p></td><td align=center><p style=color:#F66755;>Date</p></td></tr>");
out.println("</tr>");
             
             while(db.rst.next())
             {
           String name=db.rst.getString(1);
             String cname=db.rst.getString(2);
             String id=db.rst.getString(3);
             String gender=db.rst.getString(4);
             String phone=db.rst.getString(5);
             
   out.println("<tr bgcolor=#CCFF99 height=30px><td align=center>"+id+"</td><td align=center>"+gender+"</td><td align=center>"+phone+"</td>");
out.println("</tr>");          
            
           }
             
            out.println("</table>");
         
                    %>
               
               
          
      </center>
      
  </body>
</html>
