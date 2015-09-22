<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookShop[Sharanam & Vaishali Shah] - Manage Authors</title>
        <link rel="stylesheet" href="/BookShop/css/admin.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/adminHeader.jsp" %>
        <br/>
        <form:form method="post" action="${pageContext.request.contextPath}/admin/saveAuthor" commandName="author" enctype="multipart/form-data">
            <form:hidden path="authorNo" />
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="manageForms">Manage Authors</td>
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
                                            <td width="15%">First Name<span class="mandatory">*</span>:</td>
                                            <td width="40%">
                                                <form:input path="firstName" title="Enter the first name" maxlength="25" size="55"/><br>
                                                <form:errors path="firstName" cssClass="error" />
                                            </td>
                                            <td width="15%">Last Name<span class="mandatory">*</span>:</td>
                                            <td width="40%">
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
                                            <td width="15%">Address Line 1:</td>
                                            <td width="40%">
                                                <form:input path="address1" title="Enter the street address" maxlength="50" size="55"/>
                                            </td>
                                            <td width="15%">State:</td>
                                            <td width="40%">
                                                <form:select path="stateNo">
                                                    <form:option value="" label="--- Select ---"/>
                                                    <form:options title="Select the state" items="${stateList}" itemValue="stateNo" itemLabel="state" />
                                                </form:select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="15%">Address Line 2:</td>
                                            <td width="40%">
                                                <form:input path="address2" title="Enter the street address" maxlength="50" size="55"/>
                                            </td>
                                            <td width="15%">Country:</td>
                                            <td width="40%">
                                                <form:select path="countryNo">
                                                    <form:option value="" label="--- Select ---"/>
                                                    <form:options title="Select the country" items="${countryList}" itemValue="countryNo" itemLabel="country" />
                                                </form:select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="15%">City:</td>
                                            <td width="40%">
                                                <form:input path="city" title="Enter the city" maxlength="50" size="55"/>
                                            </td>
                                            <td width="15%">Pincode:</td>
                                            <td width="40%">
                                                <form:input path="pincode" title="Enter the pincode" maxlength="15" size="20"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="sectionName" colspan="4">
                                                <br />Author Details<br /><br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="15%">Birthdate:</td>
                                            <td width="40%">
                                                <form:input path="dob" title="Enter the birthdate" maxlength="25" size="55"/>
                                            </td>
                                            <td width="15%">Photograph:</td>
                                            <td width="40%">
                                                <input type="file" id="file" name="file" title="Select a photograph for this author" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="15%">Degree:</td>
                                            <td width="40%">
                                                <form:input path="degree" title="Enter the degree" maxlength="25" size="55"/>
                                            </td>
                                            <td width="15%" rowspan="2" valign="top">Speciality:</td>
                                            <td width="40%" rowspan="2">
                                                <form:textarea path="speciality" title="Enter the speciality" cols="55" rows="5"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="15%">Email Address<span class="mandatory">*</span>:</td>
                                            <td width="40%">
                                                <form:input path="emailAddress" title="Enter the email address" maxlength="50" size="55"/><br>
                                                <form:errors path="emailAddress" cssClass="error" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                <td colspan="2" class="centerAlign">
                                    <input type="submit" class="groovybutton" value="Save" />
                                    <input type="reset" value="Clear" class="groovybutton" onclick="javascript:document.location.href='/BookShop/admin/manageAuthors'" />
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
        <c:if test="${!empty authorList}">
            <table class="data" width="100%">
                <tr>
                    <th width="10%">Name</th>
                    <th width="74%">Specialty</th>
                    <th width="10%">Photograph</th>
                    <th width="3%">&nbsp;</th>
                    <th width="3%">&nbsp;</th>
                </tr>
                <c:forEach items="${authorList}" var="author">
                    <tr>
                        <td>${author.firstName} ${author.lastName}</td>
                        <td>${author.speciality}</td>
                        <td><a href="/BookShop/admin/downloadAuthorPhotograph/${author.authorNo}"><img src="/BookShop/admin/downloadAuthorPhotograph/${author.authorNo}" width="150px"/></a></td>
                        <td><a href="/BookShop/admin/deleteAuthor/${author.authorNo}"><img title="Click to delete" src="/BookShop/images/delete.jpg"/></a></td>
                        <td><a href="/BookShop/admin/editAuthor/${author.authorNo}"><img title="Click to edit" src="/BookShop/images/edit.jpg"/></a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <%@ include file="/WEB-INF/jsp/adminFooter.jsp" %>
    </body>
</html>
