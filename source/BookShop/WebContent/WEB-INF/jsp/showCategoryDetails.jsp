<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${categoryList.category}</title>
        <link rel="stylesheet" href="/BookShop/css/frontend.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/header.jsp" %>
        <div id="bodyDiv">
            <table width="100%" border="0" cellspacing="4" cellpadding="1">
                <tr>
                    <td align="left" class="topAlign">
                        <br />
                        <span class="spanShowDetails">${categoryList.category}</span>
                    </td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr>
                    <td align="left" valign="top" class="content">
                        ${categoryList.description}
                    </td>
                </tr>
                <tr>
                    <td>
                        <br><br>
                        <table class="view" align="center" cellspacing="0" cellpadding="6" width="100%">
                            <tr>
                                <th width="20%" class="label" align="left">Book</th>
                                <th width="60%" class="label" align="left">Synopsis</th>
                                <th width="10%" class="label" align="left">Cover Page</th>
                                <th width="10%" class="label" align="left">&nbsp;</th>
                            </tr>
                            <c:forEach items="${bookList}" var="book">
                                <tr title="Click to view">
                                    <td width="20%" class="showBookList" onclick="javascript:location.href='/BookShop/showBookDetails/${book.bookNo}'">
                                        ${book.bookName}
                                    </td>
                                    <td width="60%" class="showBookList" onclick="javascript:location.href='/BookShop/showBookDetails/${book.bookNo}'">
                                        ${book.synopsis}
                                    </td>
                                    <td width="10%" class="showBookList" onclick="javascript:location.href='/BookShop/showBookDetails/${book.bookNo}'">
                                        <img src="/BookShop/admin/downloadBookPhotograph/${book.bookNo}" height="80px" width="80px"/>
                                    </td>
                                    <td width="10%" class="showBookList">
                                        <sec:authorize access="isAuthenticated()">
                                            <a href="/BookShop/addToCart/<sec:authentication property='principal.username' />/${book.bookNo}">
                                                <img src="/BookShop/images/addToCart.jpg" width="74px" height="74px" style="cursor:pointer;" border="0"/>
                                            </a>&nbsp;
                                        </sec:authorize>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </td>
                </tr>
            </table>
            <%@ include file="/WEB-INF/jsp/footer.jsp" %>
        </div>
    </body>
</html>
