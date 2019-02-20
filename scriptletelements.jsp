<!--JSP Scripting Elements -->

<%-- This is a JSP comment --%>
 
<%-- 
   This is a JSP comment can span
   in multiple lines
--%>

Expression


<?= expression ?>


<!--It is noticed that there is no space between <% and =. For example, if you want to display the current date and time, you can use an expression as follows -->


<%= new java.util.Date()%>

<jsp:expression>
  
</jsp:expression>



<!--Scriptlet-->

<% // any java source code here %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <title>JSP syntax</title>
    </head>
    <body>
        <%
                // using scriptlet
                java.util.Calendar now = new java.util.GregorianCalendar();
                String tod = "";
 
                if (now.get(now.HOUR_OF_DAY) < 12) {
                    tod = "Morning!";
                } else if (now.get(now.HOUR_OF_DAY) < 18) {
                    tod = "Afternoon!";
                } else {
                    tod = "Evening!";
                }
        %>
 
        Good <%=tod%>
 
    </body>
</html>

<!--The XML syntax of JSP scriptlet is as follows:-->


<jsp:scriptlet>
   // Java code of scriptlet
</jsp:scriptlet>
-->


<!--Declaration-->


<%! int x = 10; %>

<%!


public boolean isInRange(int x,int min,int max){
        return x >= min && x <= max;
}
%>