<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Home</title>
        </head>
           <body>

            <h1>Login successful Welcome  <% out.println(session.getAttribute("rname")); %> </h1>



             <table border="2" cellspacing="15" cellpadding="15">
             <tr>
             <th colspan="2">User Details </th>

             </tr>


               <tr>

                <th>Name</th>
                <!-- table data -->
                <td>  <% out.println(session.getAttribute("rname")); %></td>
               </tr>

               <tr>
               <th>Email address</th>
               <td><% out.println(session.getAttribute("remail")); %></td>
               </tr>

            <tr>
            <th >Password</th>
            <td><% out.println(session.getAttribute("rpassword")); %></td>
            </tr>

            <tr>
            <th>Interests</th>
                <td><% out.println(session.getAttribute("rinterest")); %></td>
            </tr>



              <tr>
               <th>Peferred size</th>
               <td><% out.println(session.getAttribute("rsize")); %></td>
              </tr>

               <tr>
               <th>Newsletter checkbox</th>
               <td><% out.println(session.getAttribute("rnewscheckbox")); %></td>
               </tr>

               <tr>
               <th>Registration Policy checkbox</th>
               <td><% out.println(session.getAttribute("ragreementcheckbox")); %></td>
               </tr>


            </table>





           </body>
           </html>