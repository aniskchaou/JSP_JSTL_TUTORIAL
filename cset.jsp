Working with variables by using c:set and c:remove actions

Let’s take a look at an example of using  c:set action.


<c:set var = "userid"
       value = "10"
       scope = "session" />
 
<c:out value="${userid}" />
In the example, we set the variable userid to 10 with the session scope. Then we print it out using c:out action.

The other usage of  c:set action is to set the value of a property of an object:

<c:set target= "object"
       property = "property name"
       value = "value of property" />

You assign an object to the target attribute, property name to the property attribute and value of that property in the value attribute.


package com.jsptutorial;
 
public class Person {
 
    private String firstName;
    private String lastName;
 
    public Person() {
        this.firstName = "";
        this.lastName = "";
    }
 
    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }
 
    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
 
    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }
 
    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}

In the above code, we have a person class. We will use this person class as a JavaBean in a JSP page.

<%@page contentType="text/html" 
        pageEncoding="UTF-8"
        import="com.jsptutorial.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"
          prefix="c" %>
<html>
    <head>
        <title>JSTL demo</title>
    </head>
    <body>
        <jsp:useBean id="person"
                     class="com.jsptutorial.Person" />
 
        <c:set target="${person}"
               property="firstName"
               value="Jack" />
        <c:set target="${person}"
               property="lastName"
               value="Daniel" />
 
        <c:out value="${person.fullName}" />
    </body>
</html>
In the code above, we use the standard action useBean to initialize an object person. Then we use  c:set to set the firstName and lastName property of that object. We display the fullName of  the person object to the web browser.

Beside c:set action, JSTL also provides c:remove action that allows you to remove a variable from a particular scope. The syntax of c:remove is action is as follows:

<c:remove var = "variable name"
          scope = "scope" />

For example, if you want to remove the userid session variable you can use c:remove as follows:

<c:remove var="userid" scope="variable" />