<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookShop[Sharanam & Vaishali Shah] - Manage Books</title>
        <link rel="stylesheet" href="/BookShop/css/admin.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/adminHeader.jsp" %>
        <br/>
        <form:form method="post" action="${pageContext.request.contextPath}/admin/saveBook" commandName="book" enctype="multipart/form-data">
            <form:hidden path="bookNo" />
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td class="manageForms">Manage Books</td>
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
                                                <br />Book Details<br /><br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="10%">Book Name<span class="mandatory">*</span>:</td>
                                            <td width="45%">
                                                <form:input path="bookName" title="Enter the book name" maxlength="25" size="55"/><br>
                                                <form:errors path="bookName" cssClass="error" />
                                            </td>
                                            <td width="10%">Publisher<span class="mandatory">*</span>:</td>
                                            <td width="45%">
                                                <form:select path="publisherNo">
                                                    <form:option value="" label="--- Select ---"/>
                                                    <form:options title="Select the publisher" items="${publisherList}" itemValue="publisherNo" itemLabel="publisherName" />
                                                </form:select><br>
                                                <form:errors path="publisherNo" cssClass="error" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="10%">Category<span class="mandatory">*</span>:</td>
                                            <td width="45%">
                                                <form:select path="categoryNo">
                                                    <form:option value="" label="--- Select ---"/>
                                                    <form:options title="Select the category" items="${categoryList}" itemValue="categoryNo" itemLabel="category" />
                                                </form:select><br>
                                                <form:errors path="categoryNo" cssClass="error" />
                                            </td>
                                            <td width="10%">Cover Page:</td>
                                            <td width="45%">
                                                <input type="file" id="coverPageFile" name="coverPageFile" title="Select a cover page for this book" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="10%">ISBN<span class="mandatory">*</span>:</td>
                                            <td width="45%">
                                                <form:input path="isbn" title="Enter the isbn" maxlength="15" size="30"/><br>
                                                <form:errors path="isbn" cssClass="error" />
                                            </td>
                                            <td width="10%">Edition<span class="mandatory">*</span>:</td>
                                            <td width="45%">
                                                <form:input path="edition" title="Enter the edition" maxlength="25" size="55"/><br>
                                                <form:errors path="edition" cssClass="error" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="10%">Year<span class="mandatory">*</span>:</td>
                                            <td width="45%">
                                                <form:input path="year" title="Enter the year" maxlength="4" size="4"/><br>
                                                <form:errors path="year" cssClass="error" />
                                            </td>
                                            <td width="10%">Cost<span class="mandatory">*</span>:</td>
                                            <td width="45%">
                                                <form:input path="cost" title="Enter the cost of the book" maxlength="8" size="8"/><br>
                                                <form:errors path="cost" cssClass="error" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="sectionName" colspan="4">
                                                <br />Author Details<br /><br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="10%">First Author<span class="mandatory">*</span>:</td>
                                            <td width="45%">
                                                <form:select path="author1No">
                                                    <form:option value="" label="--- Select ---"/>
                                                    <form:options title="Select the author" items="${authorList}" itemValue="authorNo" itemLabel="firstName" />
                                                </form:select><br>
                                                <form:errors path="author1No" cssClass="error" />
                                            </td>
                                            <td width="10%">Second Author:</td>
                                            <td width="45%">
                                                <form:select path="author2No">
                                                    <form:option value="" label="--- Select ---"/>
                                                    <form:options title="Select the author" items="${authorList}" itemValue="authorNo" itemLabel="firstName" />
                                                </form:select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="10%">Third Author:</td>
                                            <td width="45%">
                                                <form:select path="author3No">
                                                    <form:option value="" label="--- Select ---"/>
                                                    <form:options title="Select the author" items="${authorList}" itemValue="authorNo" itemLabel="firstName" />
                                                </form:select>
                                            </td>
                                            <td width="10%">Fourth Author:</td>
                                            <td width="45%">
                                                <form:select path="author4No">
                                                    <form:option value="" label="--- Select ---"/>
                                                    <form:options title="Select the author" items="${authorList}" itemValue="authorNo" itemLabel="firstName" />
                                                </form:select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="sectionName" colspan="4">
                                                <br />Description<br /><br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="10%">Synopsis<span class="mandatory">*</span>:</td>
                                            <td width="45%">
                                                <form:textarea path="synopsis" title="Enter the synopsis" cols="55" rows="5"/><br>
                                                <form:errors path="synopsis" cssClass="error" />
                                            </td>
                                            <td width="10%">About Authors<span class="mandatory">*</span>:</td>
                                            <td width="45%">
                                                <form:textarea path="aboutAuthors" title="Enter the about the authors" cols="55" rows="5"/><br>
                                                <form:errors path="aboutAuthors" cssClass="error" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="10%">Topics Covered:</td>
                                            <td width="45%">
                                                <form:textarea path="topicsCovered" title="Enter the topics covered in the book" cols="55" rows="5"/>
                                            </td>
                                            <td width="10%">CDROM:</td>
                                            <td width="45%">
                                                <form:textarea path="contentsCDROM" title="Enter the contents CDROM" cols="55" rows="5"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="sectionName" colspan="4">
                                                <br />Downloads<br /><br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="10%">TOC:</td>
                                            <td width="45%">
                                                <input type="file" id="tocFile" name="tocFile" title="Select the TOC" />
                                            </td>
                                            <td width="10%">Sample Chapter:</td>
                                            <td width="45%">
                                                <input type="file" id="sampleChapterFile" name="sampleChapterFile" title="Select the Sample Chapter" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr><td>&nbsp;</td></tr>
                            <tr>
                                <td colspan="2" class="centerAlign">
                                    <input type="submit" class="groovybutton" value="Save" />
                                    <input type="reset" value="Clear" class="groovybutton" onclick="javascript:document.location.href='/BookShop/admin/manageBooks'" />
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
        <c:if test="${!empty bookList}">
            <table class="data" width="100%">
                <tr>
                    <th width="10%">Book</th>
                    <th width="10%">ISBN</th>
                    <th width="54%">Synopsis</th>
                    <th width="10%">Cover Page</th>
                    <th>Downloads</th>
                    <th width="3%">&nbsp;</th>
                    <th width="3%">&nbsp;</th>
                </tr>
                <c:forEach items="${bookList}" var="book">
                    <tr>
                        <td>${book.bookName}</td>
                        <td>${book.isbn}</td>
                        <td>${book.synopsis}</td>
                        <td><a href="/BookShop/admin/downloadBookPhotograph/${book.bookNo}"><img src="/BookShop/admin/downloadBookPhotograph/${book.bookNo}" width="100px"/></a></td>
                        <td><a href="/BookShop/admin/downloadBookSampleChapter/${book.bookNo}">Sample</a><br><a href="/BookShop/admin/downloadBookTOC/${book.bookNo}">TOC</a></td>
                        <td><a href="/BookShop/admin/deleteBook/${book.bookNo}"><img title="Click to delete" src="/BookShop/images/delete.jpg"/></a></td>
                        <td><a href="/BookShop/admin/editBook/${book.bookNo}"><img title="Click to edit" src="/BookShop/images/edit.jpg"/></a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <%@ include file="/WEB-INF/jsp/adminFooter.jsp" %>
    </body>
</html>
