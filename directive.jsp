JSP Directives

JSP directives instruct the JSP container to work with JSP pages. There are three directives in the JSP specification: page, include and taglib. The directives follow the following forms:

<%@ directive attribute1 = "value 1" 
              attribute2 = "value 2"
              ...
              %>

page Directive

<em>import="package.class"</em>
<em>import="package.class1,...,package.classN"</em>

Import option allows you to specify which classes or packages are used on the page. 
<%@ page import="java.util.*" %>


contentType Option

<em>contentType="MIME-Type"</em>
 <em>contentType="MIME-Type; charset=Character-Set".</em>
The contentType option allows you specify the MIME type of the output page. The default istext/html.

<%@ page contentType="text/plain" %>

isThreadSafe Option

isThreadSafe="true|false".
isThreadSafe option allows you to indicate whether the page is processed as thread-safe.


session Option

session="true|false".
By using session option, you are telling JSP compiler that you want to use session or not. 

buffer and autoFlush Options
buffer and autoFlush options let you control the JSP buffering.

<em><%@ page buffer="none" %></em>
<em><%@ page buffer="64kb" %></em>
 

autoFlush option controls whether the buffer is flushed automatically when it is full. 


Info Option
Info option allows you to define the description of the servlet. 

extends Option
In some cases, you need to create your own super class of a JSP page and using this supper class in different JSP pages. 

isELIgnored Option
isELIgnored option is used to disable the evaluation of the expression language (EL). 

errorPage Option
errorPage option allows you to indicate the error page when an error occurs in the current executing JSP page

<%@ page errorPage="error.jsp" %>


isErrorPage Option
isErrorPage option indicates that the current JSP page can be used as an error page for other JSP pages. 
<%@ page isErrorPage="true" %>

<html>
    <head>
        <title>Error Occurred</title>
    </head>
    <body>
        <h1>Error</h1>
        An error occurred while processing your request.
        <p>
            The error message is: <%= exception.getMessage()%>.</p>
        Please contact the System Administrator for advices.
    </body>
</html>

Include Directive
Include directive lets you to include a file (JSP or HTML) when JSP engine translates the JSP page into a servlet. 
<%@ include file="relative url" %>

taglib Directive

<%@ taglib uri="http://localhost/jsptutorial/taglib/mytaglib"
   prefix="jsptutorial" %>
   