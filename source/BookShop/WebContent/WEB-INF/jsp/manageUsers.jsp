<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookShop[Sharanam & Vaishali Shah] - Manage Users</title>
        <link rel="stylesheet" href="/BookShop/css/admin.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/adminHeader.jsp" %>
        <br/>
        <form:form method="post" action="${pageContext.request.contextPath}/admin/saveUser" commandName="user">
            <form:hidden path="userNo" />
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="manageForms">Manage Users</td>
                                <td align="center" class="error">${dbError}</td>
                                <td class="information">
                                    It is mandatory to enter information in all information <br>capture boxes which have a <span class="mandatory">*</span> adjacent
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr><td class="hrLine">&nbsp;</td></tr>
                <tr>
                    <td>
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellpadding="4" cellspacing="4">
                                        <tr>
                                            <td class="sectionName" colspan="4">
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
                                            <td class="sectionName" colspan="4">
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
                                            <td class="sectionName" colspan="2">
                                                <br />Email<br /><br />
                                            </td>
                                            <td class="sectionName" colspan="2">
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
                                            <td class="sectionName" colspan="4">
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
                                            <td class="sectionName" colspan="2">
                                                <br />Subscribe To<br /><br />
                                            </td>
                                            <td class="sectionName" colspan="2">
                                                <br />Privileges<br /><br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table width="100%" border="0" cellpadding="4" cellspacing="4">
                                                    <tr>
                                                        <td>New Releases<form:checkbox path="newRelease" title="Select to new releases"/></td>
                                                        <td>Book Updates<form:checkbox path="bookUpdates" title="Select to book updates"/></td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td colspan="2">
                                                <table width="100%" border="0" cellpadding="4" cellspacing="4">
                                                    <tr>
                                                        <td>Account Status (Active):<form:checkbox path="enabled" title="Select the status"/></td>
                                                        <td>Role<span class="mandatory">*</span>:</td>
                                                        <td>
                                                            <form:select path="authority" title="Select the role of the user">
                                                                <form:option value="ROLE_USER" label="User"/>
                                                                <form:option value="ROLE_ADMIN" label="Admin" />
                                                                <form:option value="CUSTOMER" label="Customer" />
                                                            </form:select>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                <td colspan="2" class="centerAlign">
                                    <input type="submit" class="groovybutton" value="Save" />
                                    <input type="reset" value="Clear" class="groovybutton" onclick="javascript:document.location.href='/BookShop/admin/manageUsers'" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr><td>&nbsp;</td></tr>
                <tr><td class="hrLine">&nbsp;</td></tr>
                <tr><td><br></td></tr>
            </table>
        </form:form>
        <c:if test="${!empty userList}">
            <table class="data" width="100%">
                <tr>
                    <th width="24%">Name</th>
                    <th width="23%">Username</th>
                    <th width="24%">Email Address</th>
                    <th width="23">Authority</th>
                    <th width="3%">&nbsp;</th>
                    <th width="3%">&nbsp;</th>
                </tr>
                <c:forEach items="${userList}" var="user">
                    <tr>
                        <td>${user.firstName} ${user.lastName}</td>
                        <td>${user.userName}</td>
                        <td>${user.emailAddress}</td>
                        <td>${user.authority}</td>
                        <td><a href="/BookShop/admin/deleteUser/${user.userNo}"><img title="Click to delete" src="/BookShop/images/delete.jpg"/></a></td>
                        <td><a href="/BookShop/admin/editUser/${user.userNo}"><img title="Click to edit" src="/BookShop/images/edit.jpg"/></a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <%@ include file="/WEB-INF/jsp/adminFooter.jsp" %>
    </body>
</html>
