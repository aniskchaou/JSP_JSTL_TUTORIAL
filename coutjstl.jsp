Outputting with c:out Action

<c:out> action is used to evaluate a variable or expression and output it. <c:out> is similar to the expression <%=  expression%>. 

<c:out value="variable" default="default value"/>
<c:out value="expression" default="default value" />


There are two attributes:

Value:  You can put a variable or expression here
default value: if the variable or expression is evaluated as null, the default value will be used for output.


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"
          prefix="c" %>
<html>
    <head>
        <title>c:out Action Demo</title>
    </head>
    <body>
        <c:out value="${x}" default="This is default value" />
        <c:set var="i" value="10" />
        <c:out value="${i}" />
        <c:out value="${i + 10}" />
    </body>
</html>
