<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${authorList.firstName} ${authorList.lastName}'s Profile</title>
        <link rel="stylesheet" href="/BookShop/css/frontend.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/header.jsp" %>
        <div id="bodyDiv">
            <table width="100%" border="0" cellspacing="4" cellpadding="1">
                <tr>
                    <td colspan="2" align="left" class="topAlign">
                        <br />
                        <span class="spanShowDetails">${authorList.firstName} ${authorList.lastName}</span>
                    </td>
                </tr>
                <tr><td colspan="2">&nbsp;</td></tr>
                <tr>
                    <td align="left" class="topAlign">
                        <img src="/BookShop/admin/downloadAuthorPhotograph/${authorList.authorNo}" height="200px" width="200px"/>
                    </td>
                    <td align="left" class="topAlign">
                        <table cellspacing="0" border="0" cellpadding="4" width="100%" style="border:1px dashed #0099ff;">
                            <tr>
                                <td class="label" width="20%" align="left" style="border-right:1px dashed #0099ff; border-bottom:1px dashed #0099ff;">
                                    Degree:&nbsp;
                                </td>
                                <td class="content" valign="top" width="80%" style="border-bottom:1px dashed #0099ff;">
                                    ${authorList.degree}
                                </td>
                            </tr>
                            <tr>
                                <td class="label" width="20%" align="left" style="border-right:1px dashed #0099ff; border-bottom:1px dashed #0099ff;">
                                    Email Address:&nbsp;
                                </td>
                                <td class="content" valign="top" width="80%" style="border-bottom:1px dashed #0099ff;">
                                    <a href='mailto:${authorList.emailAddress}'>
                                        ${authorList.emailAddress}
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="label" width="20%" valign="top" align="left" style="border-right:1px dashed #0099ff;">
                                    Speciality:&nbsp;
                                </td>
                                <td class="content" valign="top" width="80%">
                                    ${authorList.speciality}
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <br><center>
                        <span style="font:20px/22px Georgia, serif; text-align:center; width:300px; color:#990000; height:37px;">Books written by ${authorList.firstName} ${authorList.lastName}</span>
                        </center><br>
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
                                        <img src="../admin/downloadBookPhotograph/${book.bookNo}" height="80px" width="80px"/>
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
