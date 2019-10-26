<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
   <head>
      <title>
         User Information entry Form
      </title>
      <link href="style.css" rel="stylesheet"/>
   </head>
   <jsp:useBean id="userInfo" class="mypack.SampleBean">
      <jsp:setProperty name="userInfo" property="*" />
   </jsp:useBean>
   <body>
      <h3>Enter Your details student</h3>
      <form action="input1.jsp" method="post">
      <input type="hidden" name="submitted" value="true">
         <table>
            <tr>
               <td>
                  Name:
               </td>
               <td>
                  <input type="text" name="userName" value="<c:out value="${param.userName}"/>" >
               </td>
            </tr>
            <c:if test="${param.submitted && empty param.userName}">
               <tr>
                  <td colspan="2">Please enter your username</td>
               </tr>
            </c:if>
            <c:if test="${param.submitted && !userInfo.userNameIsValid}">
               <tr>
                  <td colspan="2">Username can contain only letters</td>
               </tr>
            </c:if>
            <tr>
               <td>
                  Birth Date:
               </td>
               <td>
                  <input type="text" name="birthDate" value="<c:out value="${param.birthDate}"/>">
               </td>
               <td>Use format yyyy-mm-dd</td>
            </tr>
            <c:if test="${param.submitted && empty param.birthDate}">
                  <tr>
                     <td colspan="2">Please enter your birth date</td>
                  </tr>
               </c:if>
               <c:if test="${param.submitted && !userInfo.birthDateIsValid}">
                     <tr>
                        <td colspan="2">Please enter valid birth date</td>
                     </tr>
                  </c:if>
            
            <tr>
               <td>
                  Gender:
               </td>
               <td>
                  <c:choose>
                     <c:when test="${param.gender=='m'}">
                           <input type="radio" name="gender" value="m" checked >Male<br>
                           <input type="radio" name="gender" value="f">Female
                     </c:when>
                     <c:otherwise>
                           <input type="radio" name="gender" value="m" >Male<br>
                  <input type="radio" name="gender" value="f"  checked>Female
                     </c:otherwise>
                  </c:choose>
               </td>
            </tr>
            <c:if test="${param.submitted && empty param.gender}">
                  <tr>
                     <td colspan="2">Please choose your gender</td>
                  </tr>
               </c:if>
            <tr>
               <td colspan="2">
                  <input type="submit" value="Send Data">
               </td>
            </tr>
         </table>
      </form>
      
   

   You entered:<br>
   Name:<c:out value="${userInfo.userName}"/><br>
   Birth Date:<c:out value="${userInfo.birthDate}"/><br>
   Gender(M/F):<jsp:getProperty name="userInfo" property="gender"/><br>

   <c:if test="${userInfo.userNameIsValid && userInfo.birthDateIsValid && param.submitted }">
            <jsp:forward page="final.html"/>
         </c:if>

   </body>
</html>