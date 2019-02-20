JSP Standard Actions
JSP actions are special XML tags which control the behavior of servlet engine. 


jsp:include action
JSP include action allows you to include a file at runtime. 

<jsp:include page="Relative URL" flush="true" />

jsp:useBean action
JSP useBean action lets you load a JavaBean component into the page and use it later. JSP useBean action allows you to reuse other Java classes. 
<jsp:useBean id="objectName" class="package.class" />


By using the jsp:useBean action, you create a new object with the object nameobjectName of the class package.class. Later on, you can access the properties of this object by using either jsp:setProperty or jsp:getProperty. 

public class Message {
 
    private String text;
 
    /**
     * @return the text
     */
    public String getText() {
        return text;
    }
 
    /**
     * @param text the text to set
     */
    public void setText(String text) {
        this.text = text;
    }
}
Then we create a JSP page which uses the jsp:useBean action to access JavaBean Message inside that page.

<html>
    <head>
        <title>jsp:useBean Demo</title>
    </head>
    <body>
        <jsp:useBean id="msg"
                     class="com.jsptutorial.Message" />
 
        <jsp:setProperty name="msg" 
                         property="text"
                         value="JSP useBean Demo" />
        <h1>
        <jsp:getProperty name="msg"
                         property="text" />
        </h1>
 
    </body>
</html>



jsp:forward Action
jsp:forward action allows you to forward a request to the other page. 
<jsp:forward page="error.jsp" />
<jsp:forward page="<%= java-expression %>" />


jsp:plugin Action
jsp:plugin action allows you to embedded Java Applet into a page. 
<html>
<head>
<title>jsp:plugin Demo</title>
</head>
<body>
<jsp:plugin type="applet" 
            code="com.jsp.jspapplet" 
            codebase="."    
            width="500" 
            height="400">
    <jsp:fallback>
        <p>Unable to use Java Plugin</p>
    </jsp:fallback>
</jsp:plugin>
 
</body>
</html>