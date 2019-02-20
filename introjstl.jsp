Home / JSP Tutorial / Introducing to JSP Standard Tag Library
Introducing to JSP Standard Tag Library
JSP is designed for the presentation layer in the web applications but it needs to contain the logic or code inside the page to control the way it presents the visual elements.

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>JSP scritlet</title>
        <style type="text/css">
            .odd{background-color:white}
            .even{background-color:gray}
        </style>
    </head>
    <body>
        <table border="1" width="100px">
            <% for (int c = 1; c < 10; c++) {
                    if (c % 2 == 0) {
            %>
 
            <tr class="even">
                <td><%= c%></td>
            </tr>
            <% } else {%>
            <tr class="odd">
                <td><%= c%></td>
            </tr>
 
            <%}
            }%>
        </table>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"
          prefix="c" %>
<html>
    <head>
        <title>JSTL page</title>
        <style type="text/css">
            .odd{background-color:white}
            .even{background-color:gray}
        </style>
    </head>
    <body>
        <table border="1" width="100px">
            <c:forEach begin="1" end="10" step="1" var="c">
                <c:choose>
                    <c:when test = "${c%2 ==0}">
                        <tr class="even">
                            <td><c:out value="${c}" /></td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <tr class="odd">
                            <td><c:out value="${c}" /></td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </table>
    </body>
</html>
As you can see the JSP page with JSTL looks more readable than the JSP page with scriptlet. You’ll those tags in the next tutorials.