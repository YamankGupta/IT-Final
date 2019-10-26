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
      <h3>Enter Product Details</h3>
      <form action="input3.jsp" method="post">
      <input type="hidden" name="submitted" value="true">
         <table>
            <tr>
               <td>
                 Product Name:
               </td>
               <td>
                  <input type="text" name="productName" value="<c:out value="${param.productName}"/>" >
               </td>
            </tr>
            <c:if test="${param.submitted && empty param.productName}">
               <tr>
                  <td colspan="2">Please enter product name</td>
               </tr>
            </c:if>
            <c:if test="${param.submitted && !userInfo.productNameIsValid}">
               <tr>
                  <td colspan="2">Product name can contain only letters</td>
               </tr>
            </c:if>
            <tr>
               <td>
                  Expiry Date:
               </td>
               <td>
                  <input type="text" name="expiryDate" value="<c:out value="${param.expiryDate}"/>">
               </td>
               <td>Use format yyyy-mm-dd</td>
            </tr>
            <c:if test="${param.submitted && empty param.expiryDate}">
                  <tr>
                     <td colspan="2">Please enter expiry date</td>
                  </tr>
               </c:if>
               <c:if test="${param.submitted && !userInfo.expiryDateIsValid}">
                     <tr>
                        <td colspan="2">Please enter valid expiry date</td>
                     </tr>
                  </c:if>
            <tr>
               <td>
                  Email:
               </td>
               <td>
                  <input type="text" name="email" value="<c:out value="${param.email}"/>">
               </td>
            </tr>
            <c:if test="${param.submitted && empty param.email}">
                  <tr>
                     <td colspan="2">Please enter your email</td>
                  </tr>
               </c:if>
               <c:if test="${param.submitted && !userInfo.emailIsValid}">
                     <tr>
                        <td colspan="2">Please enter valid email</td>
                     </tr>
                  </c:if>
            <tr>
               <td>
                  Enter four digit id:
               </td>
               <td>
                  <input type="text" name="id" value="<c:out value="${param.id}"/>"
               </td>
            </tr>
            <c:if test="${param.submitted && empty param.id}">
                  <tr>
                     <td colspan="2">Please enter id</td>
                  </tr>
               </c:if>
               <c:if test="${param.submitted && !userInfo.idIsValid}">
                     <tr>
                        <td colspan="2">Please enter valid id</td>
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
   Product name:<c:out value="${userInfo.productName}"/><br>
   Expiry Date:<c:out value="${userInfo.expiryDate}"/><br>
   Product Id:<jsp:getProperty name="userInfo" property="id"/><br>
   </body>
   <c:if test="${userInfo.productNameIsValid && userInfo.expiryDateIsValid && userInfo.idIsValid && param.submitted }">
            <jsp:forward page="final.html"/>
         </c:if>
</html>