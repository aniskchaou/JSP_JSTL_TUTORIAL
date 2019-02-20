Working with HTML Form
 Once users submit the form from the client side, on the server side, you need to capture those data for further processing such as business logic validation, saving the data into the database and so on.


<html>
    <head>
        <title>JSP Form Demo</title>
        <style type="text/css">
            label{ margin-right:20px;}
            input{ margin-top:5px;}
        </style>
    </head>
    <body>
        <form action="handleUserInfo.jsp" method="post">
            <fieldset>
                <legend>User Information</legend>
                <label for="fistName">First Name</label>
                <input type="text" name="firstName" /> <br/>
                <label for="lastName">Last Name</label>
                <input type="text" name="lastName" /> <br/>
                <label for="email">Email</label>
                <input type="text" name="email" /> <br/>
                <input type="submit" value="submit">
            </fieldset>
        </form>
    </body>
</html>
<html>
    <head>
        <title>JSP Form Demo</title>
    </head>
    <body>
        <%
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
        %>
        <p>Hi <%=firstName%> <%=lastName%>!, 
your submitted email is <%=email%>.</p>
    </body>
</html>

We use the request object to get the form data. The getParameter() method of request object accepts the name of the form field and return field value. The returned value of the getParameter() method is always string type therefore if you have a form field that accepts the numerical value, you have to convert it.
