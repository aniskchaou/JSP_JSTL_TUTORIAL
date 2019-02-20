Working with Cookie in JSP

<%@page import="javax.servlet.http.Cookie"%>
<html>
    <head>
        <title>JSP Set Cookie</title>
    </head>
    <body>
        <%
            Cookie cookie = new Cookie("ClientID","JSP Guru");
cookie.setMaxAge(3600);
                        response.addCookie(cookie);
        %>
    </body>
</html>


Reading cookie
To read a cookie from an HTTP request, you first call the method getCookies() of the request object. 

<%@page import="javax.servlet.http.Cookie"%>
<html>
    <head>
        <title>JSP Read Cookie</title>
    </head>
    <body>
        <%
            Cookie[] list = request.getCookies();
            if(list != null){
                for(int i = 0; i < list.length;i++){
                    out.println(list[i].getName() + ":" + list[i].getPath());
                }
            }
        %>
    </body>
</html>


Removing existing cookie
If you want to remove an existing cookie you’ve sent to the web browser, you can use the method setMaxAge() of that cookie object to set its timeout to zero. This is the sample code to remove all the cookies.
<%@page import="javax.servlet.http.Cookie"%>
<html>
    <head>
        <title>Removing existing cookie</title>
    </head>
    <body>
        <%
            Cookie[] list = request.getCookies();
            if (list != null) {
                for (int i = 0; i < list.length; i++) {
                    list[i].setMaxAge(0);
                    out.println(list[i].getName() + " cookie is removed");
                }
            }
        %>
    </body>
</html>