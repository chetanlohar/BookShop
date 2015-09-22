<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookShop[Sharanam & Vaishali Shah] - Forgot Password</title>
        <link rel="stylesheet" href="/BookShop/css/frontend.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/header.jsp" %>
        <div id="bodyDiv">
            <form name="forgotPassword" method="post">
                <table width="100%" border="0" cellspacing="0" cellpadding="2" align="center">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td class="spanHeader">Forgot Password</td>
                                    <td class="information">
                                        It is mandatory to enter information in all information <br>capture boxes which have a <span class="mandatory">*</span> adjacent
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr><td>&nbsp;</td></tr>
                    <tr>
                        <td>
                            <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="10%">Username<span class="mandatory">*</span>:</td>
                                                <td>
                                                    <input name="userName" maxlength="55" title="Enter the username" size="55"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="10%">&nbsp;</td>
                                                <td>
                                                    <br/><br/><strong class="error">${message}</strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="centerAlign">
                                                    <br /><br />
                                                    <input class="groovybutton" type="button" onclick="if(document.forgotPassword.userName.value!='') {document.location.href='${pageContext.request.contextPath}/admin/retrievePassword/' + document.forgotPassword.userName.value}" title="Retrieve Password" value="Fetch" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </form>
            <%@ include file="/WEB-INF/jsp/footer.jsp" %>
        </div>
    </body>
</html>
