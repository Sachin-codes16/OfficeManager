<%@page import="DB.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
        String user=(String)st.getAttribute("user3");
        String pass=(String)st.getAttribute("pass3");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="logo">
        <h1><a href="index.html"><span>DeskSavvy-</span>Employee Details</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="adminHome.jsp"><span>Home</span></a></li>
          <li><a href="viewemp11.jsp"><span>View Company Data</span></a></li>
          <li><a href="empsal12.jsp"><span>Emp Details </span></a></li>
          <li><a href="CompanyChanPass11.jsp"><span>Change Password</span></a></li>
          <li><a href="logout11"><span>Logout</span></a></li>
        </ul>
      </div> </div>
      </div>
      </div> 
     
     
     
      <div class="clr"></div>
       <center>
           
          


         
         
             <%
           
           
            DBconnection db=new DBconnection();
            String ab=request.getParameter("t1");
            db.pstmt=db.con.prepareStatement("SELECT COUNT(empid) FROM addemp");

             db.rst= db.pstmt.executeQuery();
             db.rst.next();
             String count=db.rst.getString(1);
             
 out.println("<h4>Employee: Details</h4>");
 out.println("<table border='0' width=700px height=150px style='border-color:#66FF33;background-color:#FFFFFF;'>");
out.println("<tr style='background-color:#F8F5B1;'><td width=150px><span >Total Employee </span></td><td><span style='color:red;'>"+count+"</span></td></tr>");
	       	       
            
           
             
            out.println("</table>");
                
              
                    %>
              
                    
                <%
             String m=request.getParameter("msg");
             if(m!=null)
                 out.println("<p style='color:green'>"+m+"</p>");
             %>         
        </center>
 
      
</body>
</html>