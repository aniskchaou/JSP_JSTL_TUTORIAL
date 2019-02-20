<!--
Understanding JSP Life Cycle
JSP never outputs the content directly to the browser. Instead, JSP relies on initial server-side processing process which translates JSP page into the JSP Page class. 

JSP Life Cycle

JSP life cycle can be divided into four phases: Translation, Initialization, execution, and finalization.
-->


<!--
Translation
In the translation phase, JSP engine checks for the JSP syntax and translates JSP page into its page implementation class if the syntax is correct. This class is actually a standard Java servlet. After that, JSP engine compiles the source file into a class file that is ready to use.

-->




<!--
Initialization
After the translation phase, JSP engine loads the class file and create an instance of the servlet to handle processing of the initial request. JSP engines will call a method jspInit() to initialize the servlet. 
-->
<%!
   public void jspInit(){
      // put your custom code here  
   }
%>




<!--
Execution
After the initialization phase, the web container calls the method _jspService() to handle the request and returning a response to the client. Each request is handled is a separated thread. Be noted that all the scriptlets and expressions end up inside this method. 
-->




<!--Finalization
In the finalization phase, the web container calls the method jspDestroy(). This method is used to clean up memory and resources. 
-->
<%!
   public void jspDestroy(){
      // put your custom code here 
      // to clean up resources
   }
%>