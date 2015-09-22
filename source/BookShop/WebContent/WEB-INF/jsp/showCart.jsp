<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookShop[Sharanam & Vaishali Shah] - <sec:authorize access='isAuthenticated()'><sec:authentication property='principal.username' /></sec:authorize>'s Cart</title>
        <link rel="stylesheet" href="/BookShop/css/frontend.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/header.jsp" %>
        <div id="bodyDiv">
        <c:choose>
            <c:when test="${!empty cartList}">
                <table width="100%" border="0" cellspacing="4" cellpadding="1" style="font-size:18px;">
                    <tr>
                        <td colspan="2" align="left" class="topAlign">
                            <span class="spanShowDetails">${userDetails.firstName} ${userDetails.lastName}'s Cart</span><br/><br/>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="topAlign" width="5%">&nbsp;</td>
                        <td align="left" class="showCartList">
                            <strong>Book</strong>
                        </td>
                        <td align="center" class="showCartList" width="10%">
                            <strong>Quantity</strong>
                        </td>
                        <td align="center" class="showCartList" width="10%">
                            <strong>Cost</strong>
                        </td>
                    </tr>
                    <c:forEach items="${cartList}" var="cart">
                        <c:set var="totalCost" value="${totalCost+(cart.qty*cart.cost)}"/>
                            <tr>
                                <td align="center" class="topAlign">
                                    <a href="/BookShop/removeFromCart/<sec:authorize access='isAuthenticated()'><sec:authentication property='principal.username' /></sec:authorize>/${cart.bookNo}">
                                        <img src="/BookShop/images/delete.jpg" alt="Click to remove the Book from the cart">
                                    </a>
                                </td>
                                <td align="left" class="topAlign" style="border:1px dashed #990033;">
                                    <a href="/BookShop/showBookDetails/${cart.bookNo}">
                                        <img src="/BookShop/admin/downloadBookPhotograph/${cart.bookNo}" height="80px" width="80px"/>
                                    </a>
                                    ${cart.bookName}
                                </td>
                                <td align="center" style="border:1px dashed #990033;">
                                    ${cart.qty}
                                </td>
                                <td align="center" style="border:1px dashed #990033;">
                                    ${cart.cost}
                                </td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2" align="right" style="border:1px solid #990033; background-color:#FFFF99;">
                                <b>Total Cost:</b>
                            </td>
                            <td align="center" style="border:1px solid #990033; background-color:#FFFF99;">
                                <b>${totalCost}</b>
                            </td>
                        </tr>
                    </table>
                    <br/>
                    <c:if test='${!googleMerchantID.equals("")}'>
                        <a href="/BookShop/saveCart/<sec:authorize access='isAuthenticated()'><sec:authentication property='principal.username' /></sec:authorize>">
                            <img align="right" src="/BookShop/images/checkOut.jpg" title="Check out using Google Wallet" />
                        </a>
                    </c:if>
                </c:when>
                <c:otherwise>
                    <span style="font:16px/18px Georgia, serif; width:300px; color:#990000; height:37px;"><br/>Your Shopping Cart is empty.<br>Your Shopping Cart lives to serve. Give it purpose by filling it with books.<br>To put something in your Shopping Cart, start by searching or browsing through any of our books.<br>When an item interests you, click the Add to Cart button.</span>
                </c:otherwise>
            </c:choose>
            <%@ include file="/WEB-INF/jsp/footer.jsp" %>
        </div>
    </body>
</html>
