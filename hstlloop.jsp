JSTL Looping and Iteration Actions
One of the most common tasks you have to deal with in JSP is outputting a set of data by using the Java for and while loop. 



The <c:forEach> action


<c:forEach(var = "var" 
        items="collection" 
        varStatus="varStatusName">
<%-- processing of each item here --%>
</c:forEach>



<%@page contentType="text/html"
        pageEncoding="UTF-8"
        import="com.jsptutorial.*,java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"
          prefix="c" %>
 
<html>
    <head>
        <title>Looping with c:forEach</title>
    </head>
    <body>
        <%
            ArrayList<Person> list = new ArrayList<Person>();
            Person p1 = new Person("Abel", "William");
            Person p2 = new Person("Sarah", "Palin");
            Person p3 = new Person("David", "Nguyen");
            list.add(p1);
            list.add(p2);
            list.add(p3);
            request.setAttribute("list", list);
        %>
 
        <table border="1">
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="person" items="${requestScope.list}">
                <tr>
                    <td><c:out value="${person.firstName}"  /></td>
                    <td><c:out value="${person.lastName}" /></td>
                </tr>
                 </c:forEach>
            </tbody>
        </table>
    </body>
</html>
