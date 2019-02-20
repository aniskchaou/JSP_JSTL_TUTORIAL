<!--JSP Implicit Objects
JSP container provides a list of objects that allow you to access various kinds of data in a web application. 


The request object
Each time a client requests a JSP page, the JSP engine creates a new object that represents the that called request object. The request object is an instance of the class javax.servlet.http.HttpServletRequest. 

The response object
JSP also creates the response object which is an instance of class javax.servlet.http.HttpServletResponse. The response object that represents the response to the client.


The session object
The session object is used to track information of a particular client between multiple requests.  The session object is an instance of the class javax.servlet.http.HttpSession.

The out object
The output stream is exposed to the JSP through the out object. the out object is an instance of the class javax.servlet.jsp.JspWriter. 

The pageContext object
The pageContext object represents the entire JSP page. You can use the pageContext object to get attributes of a page. the pageContext object is an instance of the class javax.servlet.jsp.pagecontext.

The application object
The application object is a representation of JSP page through its life cycle. 


The config object
The config object allows you to access the initialization parameters of the Servlet and JSP engine. The config object is an instance of the class javax.servlet.ServletConfig.

The page object
The page object is an instance of a JSP page. By using the page object, you can call any method of the page’s servlet.

The exception object
The exception object contains the exception which is thrown from the previous JSP page. 
-->