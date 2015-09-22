<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookShop[Sharanam & Vaishali Shah] - Sign Up</title>
        <link rel="stylesheet" href="/BookShop/css/frontend.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/header.jsp" %>
        <div id="bodyDiv">
            <form:form method="post" action="${pageContext.request.contextPath}/saveSignUp" commandName="user">
                <form:hidden path="userNo" />
                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td class="spanHeader">Sign-Up</td>
                                    <td align="center" class="error">${dbError}</td>
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
                                                <td class="label" colspan="4">
                                                    <br />Name<br /><br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="10%">First Name<span class="mandatory">*</span>:</td>
                                                <td width="45%">
                                                    <form:input path="firstName" title="Enter the first name" maxlength="25" size="55"/><br>
                                                    <form:errors path="firstName" cssClass="error" />
                                                </td>
                                                <td width="10%">Last Name<span class="mandatory">*</span>:</td>
                                                <td width="45%">
                                                    <form:input path="lastName" title="Enter the last name" maxlength="25" size="55"/><br>
                                                    <form:errors path="lastName" cssClass="error" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label" colspan="4">
                                                    <br />Mailing Address<br /><br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="10%">Address Line 1:</td>
                                                <td width="45%">
                                                    <form:input path="address1" title="Enter the street address" maxlength="50" size="55"/>
                                                </td>
                                                <td width="10%">State:</td>
                                                <td width="45%">
                                                    <form:select path="stateNo">
                                                        <form:option value="" label="--- Select ---"/>
                                                        <form:options title="Select the state" items="${stateList}" itemValue="stateNo" itemLabel="state" />
                                                    </form:select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="10%">Address Line 2:</td>
                                                <td width="45%">
                                                    <form:input path="address2" title="Enter the street address" maxlength="50" size="55"/>
                                                </td>
                                                <td width="10%">Country:</td>
                                                <td width="45%">
                                                    <form:select path="countryNo">
                                                        <form:option value="" label="--- Select ---"/>
                                                        <form:options title="Select the country" items="${countryList}" itemValue="countryNo" itemLabel="country" />
                                                    </form:select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="10%">City:</td>
                                                <td width="45%">
                                                    <form:input path="city" title="Enter the city" maxlength="50" size="55"/>
                                                </td>
                                                <td width="10%">Pincode:</td>
                                                <td width="45%">
                                                    <form:input path="pincode" title="Enter the pincode" maxlength="15" size="20"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label" colspan="2">
                                                    <br />Email<br /><br />
                                                </td>
                                                <td class="label" colspan="2">
                                                    <br />Special Occassion<br /><br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="10%">Email Address<span class="mandatory">*</span>:</td>
                                                <td width="45%">
                                                    <form:input path="emailAddress" title="Enter the email address" maxlength="50" size="55"/><br>
                                                    <form:errors path="emailAddress" cssClass="error" />
                                                </td>
                                                <td width="10%">Birthdate:</td>
                                                <td width="45%">
                                                    <form:input path="dob" title="Enter the birthdate" maxlength="25" size="55"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label" colspan="4">
                                                    <br />Login Details<br /><br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="10%">Username<span class="mandatory">*</span>:</td>
                                                <td width="45%">
                                                    <form:input path="userName" title="Enter the username" maxlength="25" size="55"/><br>
                                                    <form:errors path="userName" cssClass="error" />
                                                </td>
                                                <td width="10%">Password<span class="mandatory">*</span>:</td>
                                                <td width="45%">
                                                    <form:password path="password" title="Enter the password" maxlength="8" size="55"/><br>
                                                    <form:errors path="password" cssClass="error" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label" colspan="4">
                                                    <br />Subscribe To<br /><br />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">New Releases<form:checkbox path="newRelease" title="Select to new releases"/></td>
                                                <td colspan="2">Book Updates<form:checkbox path="bookUpdates" title="Select to book updates"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="centerAlign">
                                        <br /><br />
                                        <input type="submit" class="groovybutton" value="Save" />
                                        <input type="reset" value="Clear" class="groovybutton" onclick="javascript:document.location.href='/BookShop/signUp'" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </form:form>
            <%@ include file="/WEB-INF/jsp/footer.jsp" %>
        </div>
    </body>
</html>
