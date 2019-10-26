<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>

    </head>
    <body style="margin: auto; text-align: center; margin-top: 20px;">
        <h3>SELECT USER TYPE</h3>
        <form action="index.jsp" method="post">
                <input type="hidden" name="first" value="true">
                <input type="submit"  value="Student">
        </form>
        <form  action="index.jsp" method="post">  
                <input type="hidden" name="second" value="true">
                <input type="submit" value="Customer">
        </form>
        <form  action="index.jsp" method="post">
                <input type="hidden" name="third" value="true">
                <input type="submit"  value="Product">
        </form>
        <c:if test="${param.first}" >
            <jsp:forward page="input1.jsp"/>
        </c:if>
        <c:if test="${param.second}">
            <jsp:forward page="input2.jsp"/>
        </c:if>
        <c:if test="${param.third}">
            <jsp:forward page="input3.jsp"/>
         </c:if>
         <c:out value="${param.first}"/>
    </body>
</html>