<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookShop[Sharanam & Vaishali Shah] - Home Page</title>
        <link rel="stylesheet" href="/BookShop/css/frontend.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/header.jsp" %>
        <div id="bodyDiv">
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="15%" class="topAlign">
                        <br>
                        <%@ include file="/WEB-INF/jsp/leftMenu.jsp" %>
                    </td>
                    <td width="70%" class="topAlign, centerAlign">
                        <table width="100%" cellpadding="10" cellspacing="0">
                            <tr>
                                <td>
                                    <%@ include file="/WEB-INF/jsp/allCategories.jsp" %>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="15%" class="topAlign">
                        <table border="0" width="100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <br>
                                    <sec:authorize access="isAnonymous()">
                                        <%@ include file="/WEB-INF/jsp/login.jsp" %>
                                    </sec:authorize>
                                </td>
                            </tr>
                        </table>
                        <br/>
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="topAlign">
                                    <%@ include file="/WEB-INF/jsp/popularSearches.jsp" %>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <%@ include file="/WEB-INF/jsp/footer.jsp" %>
        </div>
    </body>
</html>
