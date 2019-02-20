Working with URL-Related Actions

The <c:param> Action
The <c:param> action is used to define a parameter. The <c:param> is often used inside another action such as <c:import>. <c:url> or <c:redirect> actions. To use the <c:param> action, you use the following syntax:

<c:param name="paramName" value="value" />

Name: is where you put the parameter’s name.
Value: is where you specify the parameter’s value.


The <c:import> Action
The <c:import> action allows you to retrieve the content of another URL to process it within the JSP page.
<c:import url = "url" 
         [context = "context "] 
         [var = "varName"
         [scope="{page|request|session|application}"] 
         [charEncoding="charEncoding"]> 
<%-- optional body content for <c:param> subtags --%>
</c:import>




<%@page contentType="text/html"
        pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"
          prefix="c" %>
<html>
    <head>
        <title>The c:import Action</title>
    </head>
    <body>
        <c:import url="person.xml" var="person">
        </c:import>
 
        <textarea cols="40" rows="15">
            <c:out value="${person}" />
        </textarea>
    </body>
</html>


The <c:redirect> Action
The <c:redirect> simply redirects users from the current URL to another URL.

The syntax of the <c:redirect> is as follows:

<c:redirect url="newurlhere" />
<%@page contentType="text/html"
        pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"
          prefix="c" %>
<html>
    <head>
        <title>The c:redirect Action</title>
    </head>
    <body>
        <c:if test="${param.postback == 1}">
            <c:redirect url="${param.urls}" />
        </c:if>
 
        <form action="urlredirection.jsp" method="post">
            <label for="urls">Search Engine</label>
            <select name="urls">
                <option value="http://google.com">Google</option>
                <option value="http://yahoo.com">Yahoo</option>
                <option value="http://bing.com">Microsoft</option>
            </select>
            <input type="hidden"  name="postback" value="1" />
            <input type ="submit" value="Go" />
        </form>
    </body>
</html>

The <c:url> Action
The <c:url> action enables you to format a URL correctly. Inside the <c:url> action, you can put multiple <c:param> to construct URL. 

<%@page contentType="text/html"
        pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"
          prefix="c" %>
<html>
    <head>
        <title>The c:url Action</title>
    </head>
    <body>
        <a href="<c:url value="http://localhost/JSTLDemo/curl.jsp">
                   <c:param name="mode" value="demo" />
                  </c:url>">The c:url Action Demo</a>
    </body>
</html>
