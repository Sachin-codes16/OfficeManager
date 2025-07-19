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

<style>
    /* Basic styles for demo purposes */
    body {

      font-family: Arial, sans-serif;
      line-height: 1.6;
      background-color: #f0f0f0;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 600px;
      margin: 20px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
    }

    .form-group {
      margin-bottom: 15px;
    }

    label {
      display: block;
      margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    button {
      background-color: #4CAF50;
      color: #fff;
      padding: 12px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
    }

    button:hover {
      background-color: #45a049;
    }

    @media screen and (max-width: 768px) {
      .container {
        width: 90%;
        margin: 10px auto;
      }
    }
  </style>


</head>
<body>
    <%
        HttpSession st=request.getSession();
        String user=(String)st.getAttribute("user1");
        String pass=(String)st.getAttribute("pass1");
        if(user==null||pass==null)
          response.sendRedirect("index.jsp?msg=Please login first!!!!");  
        %>
<div class="main">
  <div class="header">
    <div class="header_resize">
     
      <div class="logo">
        <h1><a href="index.html"><span>DeskSavvy-</span>Add Employee Portal</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="office_home.jsp"><span>Home</span></a></li>
          <li><a href="addEmp.jsp"><span>Add Employee</span></a></li>
          <li><a href="viewemp.jsp"><span>View Employee</span></a></li>
          <li><a href="empsal.jsp"><span>Emp Salary</span></a></li>
         <li><a href="attendance_data.jsp"><span>Attendance Data</span></a></li>
        <li><a href="leave_data.jsp"><span>View Leave</span></a></li>
       </ul>
      </div> </div>
      </div>
      </div> 
     
     
     
      <div class="clr"></div>
      
 <div class="container">
    <h2>Employee Registration</h2>
    <form method="post" action="addemp" name="frm" onsubmit="return abc();">
      <div class="form-group">
        <label for="srno">Name</label>
        <input type="text" name="t1" required>
      </div>
      <div class="form-group">
        <label for="email">Department <label>
          <input type="text" name="t2" required>
      </div>
      <div class="form-group">
        <label for="Course">City</label>
        <input type="text" name="t3" required>
      </div>
      <div class="form-group">
        <label for="Branch">State</label>
        <input type="text" name="t4" required>
      </div>
      <div class="form-group">
        <label for="contact">Address</label>
        <input type="text" name="t5" required>
      </div>
      <div class="form-group">
        <label for="email">Pin</label>
        <input type="text" name="t6" required>
      </div>
      <div class="form-group">
        <label for="Address">Phone no</label>
        <input type="text" name="t7" required>
      </div>
      <div class="form-group">
        <label for="Address">E-mail</label>
        <input type="email" name="t8" required>
      </div>



      <button type="submit">Register</button>
<% 
                            String m=request.getParameter("msg");
                            if(m!=null)
                                out.println("<p style='color:red';>"+m+"</p>");
                            %>  

    </form>

  </div>

       </body>
</html>