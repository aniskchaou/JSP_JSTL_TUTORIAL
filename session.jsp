Working with Session

<html>
    <head>
        <title>JSP Form</title>
    </head>
    <body>
        <form method="post" action="savetosession.jsp">
            <table>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="firstname" /></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="lastName" /></td>
                </tr>
                <tr>
                    <td>Comments</td>
                    <td><textarea name="comments" cols="30" rows="5"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="submit" /></td>
                </tr>
 
            </table>
 
        </form>
    </body>
</html>
In the form above, when the user enters information, clicks submit button, the data goes through the page savetosession.jsp. In the  savetosession.jsp page, we save all the submitted data into the session object and forward the request to another page called  display.jsp page


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
          String firstName = request.getParameter("firstName");
          String lastName = request.getParameter("lastName");
          String comments = request.getParameter("comments");
          // save data into the session
          session.setAttribute("firstName", firstName);
          session.setAttribute("lastName", lastName);
          session.setAttribute("comments", comments);
 
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%-- forward to the display.jsp page--%>
        <jsp:forward page="display.jsp" />
    </body>
</html>

As you see the code above, we use the  setAttribute() method to save data into the session object. 

Here is the page for displaying data in the session object:  display.jsp

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Displaying data in Session</title>
    </head>
    <body>
        <h1>Displaying data in session object</h1>
        <table>
                <tr>
                    <td>First Name</td>
                    <td><%= session.getAttribute("firstName")%></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><%= session.getAttribute("lastName")%></td>
                </tr>
                <tr>
                    <td>Comments</td>
                    <td><td><%= session.getAttribute("comments")%></td>
                </tr>
            </table>
    </body>
</html>
The code is obvious, we used the  getAttribute() method of the  sessionobject to retrieve data which was entered in the form and displayed it on the page by using the expression.

