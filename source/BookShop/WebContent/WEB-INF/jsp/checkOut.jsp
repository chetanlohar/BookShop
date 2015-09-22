<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookShop - Performing Transaction - Please wait....</title>
    </head>
    <body class="checkoutBody">
        <form method="POST" action="https://sandbox.google.com/checkout/cws/v2/Merchant/${googleMerchantID}/checkoutForm" accept-charset="utf-8">
            <c:if test="${!empty cartList}">
                <c:forEach items="${cartList}" var="cartItem" varStatus="loop">
                    <input type="hidden" name="item_name_${loop.index+1}" value="${cartItem.bookName}">
                    <input type="hidden" name="item_description_${loop.index+1}" value="${cartItem.synopsis}">
                    <input type="hidden" name="item_quantity_${loop.index+1}" value="${cartItem.qty}">
                    <input type="hidden" name="item_price_${loop.index+1}" value="${cartItem.cost}">
                </c:forEach>
            </c:if>
            <input type="hidden" name="checkout-flow-support.merchant-checkout-flow-support.continue-shopping-url" value="http://localhost:8080/BookShop/home"/>
            <input type="hidden" name="_charset_"/>
        </form>
        <script>
            <!--
                document.forms[0].submit();
            -->
        </script>
    </body>
</html>
