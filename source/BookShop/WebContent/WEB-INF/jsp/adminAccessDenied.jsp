<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access is denied</title>
        <link rel="stylesheet" href="/BookShop/css/admin.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/adminHeader.jsp" %>
        <br/>
        <table border="0" cellspacing="0" cellpadding="2" align="center">
            <tr><td>&nbsp;</td></tr>
            <tr><td class="hrLine">&nbsp;</td></tr>
            <tr><td class="accessDenied">Access is denied</td></tr>
            <tr>
                <td class="errorAccessDenied">
                    You do not have permission to access this page!
                </td>
            </tr>
            <tr><td class="hrLine">&nbsp;</td></tr>
        </table>
        <%@ include file="/WEB-INF/jsp/adminFooter.jsp" %>
    </body>
</html>
