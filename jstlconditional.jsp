Using JSTL Conditionals
JSTL provides all basic conditionals to make the logic flow of JSP page easier to read and maintain. The conditionals include: if condition and looping condition.

<c:if> action

<c:if test="expression">
<%-- body content listed here --%>
</c:if>


<jsp:useBean id="cal"
             class="java.util.GregorianCalendar" />
 
<c:set var="hour" value="${cal.time.hours}" />
 
<c:if test="${hour >=0 && hour <=11}">
   <c:out value="Good morning" />
</c:if>
 
<c:if test="${hour >=12 && hour <=17}">
   <c:out value="Good Afternoon" />
</c:if>
 
<c:if test="${hour >=18 && hour <=23}">
   <c:out value="Good Evening" />
</c:if>



Multiple choices with <c:choose> <c:when> and <c:otherwise> actions
If you have a set of mutually conditions you can use <c:choose> <c:when> and <c:otherwise> instead of using multiple <c:if>. 

<c:choose>

<c:when test="expression1">
<%-- body content for expression 1  -->
</c:when>

<c:when test="expression2">
<%-- body content for expression 2  -->
</c:when>

<c:otherwise>
<%-- body content for otherwise  -->
</c:otherwise>


</c:choose>



<jsp:useBean id="cal"
             class="java.util.GregorianCalendar" />
 
<c:set var="hour" value="${cal.time.hours}" />
 
<c:choose>
    <c:when test="${hour >=0 && hour <=11}">
<c:out value="Good morning" />
    </c:when>
    <c:when test="${hour >=12 && hour <=17}">
<c:out value="Good Afternoon" />
    </c:when>
    <c:otherwise>
<c:out value="Good Evening" />
    </c:otherwise>
</c:choose>