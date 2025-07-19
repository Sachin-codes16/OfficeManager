
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="author" content="Aldi Duzha" />
    <meta name="description" content="Free Bulma Login Template, part of Awesome Bulma Templates" />
    <meta name="keywords" content="bulma, login, page, website, template, free, awesome" />
    <link rel="canonical" href="https://aldi.github.io/bulma-login-template/" />
    <title>Desksavvy</title>
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma-social@1/bin/bulma-social.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.13.0/css/all.min.css" />
    <link rel="stylesheet" href="css/styles.css" />
    <style>
        td{
            padding: 10px;
        }
    </style>
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
  <table>
    <tr>
      <td  >  <a href="index.jsp">  <button class="button is-block is-info is-large is-fullwidth">Home Page</button></a>
        
         
          </td>
      
          <td>  <a href="empsal11.jsp">  <button class="button is-block is-info is-large is-fullwidth">Salary</button></a>
            </td>
            <td >  <a href="leave.jsp">  <button class="button is-block is-info is-large is-fullwidth">Apply Leave</button></a>
              </td>
              <td >  <a href="attendance.jsp">  <button class="button is-block is-info is-large is-fullwidth">Attendance</button></a>
               </td>
                <td >  <a href="empchangePass.jsp">  <button class="button is-block is-info is-large is-fullwidth">Change Password</button></a>
                 </td>
                 <td >  <a href="emplogout">  <button class="button is-block is-info is-large is-fullwidth">Logout</button></a>
                 </td>
              
      
    </tr>
  </table>
    <section class="hero is-fullheight">
      <div class="hero-body">
        <div class="container has-text-centered">
          <div class="column is-4 is-offset-4">
           
            
          </div>
        </div>
      </div>
      <div class="hero-foot">
        <div class="container has-text-centered">
          
        </div>
      </div>
    </section>

    <center>
      <%
         
        out.println("<h2 style='color:green;'>Welcome to <span>"+user+"</span></h2>");
         %>
         <br/><br/>
         <h2 style="color: red;"><a href="view_event.jsp">--View Events--Click hear</a></h2>
       </center>
  </body>
</html>
