<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${bookList.bookName}</title>
        <link rel="stylesheet" href="/BookShop/css/frontend.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/header.jsp" %>
        <div id="bodyDiv">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
                <tr>
                    <td colspan="2" align="left" class="topAlign">
                        <br />
                        <span class="spanShowDetails">${bookList.bookName}</span>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="left" class="topAlign">
                        <img src="/BookShop/admin/downloadBookPhotograph/${bookList.bookNo}" height="150px" width="150px"/>
                    </td>
                    <td align="center">
                        <sec:authorize access="isAuthenticated()">
                            <a href="/BookShop/addToCart/<sec:authentication property='principal.username' />/${bookList.bookNo}">
                                <img src="/BookShop/images/addToCart.jpg" width="74px" height="74px" class="imagePointer" border="0"/>
                            </a>&nbsp;
                        </sec:authorize>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="content" colspan="2"><br />${bookList.synopsis}</td>
                </tr>
                <tr><td colspan="2">&nbsp;</td></tr>
                <tr>
                    <td align="left" colspan="2">
                        <table border="0" cellspacing="2" cellpadding="0" width="100%" style="border: 1px dashed #0099ff;">
                            <tr>
                                <td class="label" width="10%" align="left" style="border-right: 1px dashed #0099ff; border-bottom: 1px dashed #0099ff;">ISBN:&nbsp;</td>
                                <td valign="top" class="content" colspan="2" width="80%" style="border-bottom: 1px dashed #0099ff;">${bookList.isbn}</td>
                            </tr>
                            <tr>
                                <td class="label" width="10%" align="left" style="border-right: 1px dashed #0099ff;">Edition:&nbsp;</td>
                                <td valign="top" class="content" colspan="2" width="80%">${bookList.edition}</td>
                            </tr>
                        </table>
                        <br>
                        <sec:authorize access="isAuthenticated()">
                            <table border="0" cellspacing="2" cellpadding="0" width="100%" style="border: 1px dashed #0099ff;">
                                <tr>
                                    <td class="label" colspan="3" width="20%" align="center" style="border-bottom: 1px dashed #0099ff;">Downloads</td>
                                </tr>
                                <tr>
                                    <td valign="top" colspan="2" class="content" width="50%" align="center" style="border-right: 1px dashed #0099ff;">
                                        <a href="/BookShop/admin/downloadBookSampleChapter/${bookList.bookNo}">Sample</a>
                                    </td>
                                    <td valign="top" class="content" width="50%" align="center">
                                        <a href="/BookShop/admin/downloadBookTOC/${bookList.bookNo}">TOC</a>
                                    </td>
                                </tr>
                            </table>
                        </sec:authorize>
                    </td>
                </tr>
                <tr><td colspan="2">&nbsp;</td></tr>
                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                            <tr>
                                <td class="label" align="left">About Author(s)</td>
                            </tr>
                            <tr>
                                <td class="content" align="left">${bookList.aboutAuthors}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr><td colspan="2">&nbsp;</td></tr>
                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                            <tr>
                                <td class="label" align="left">Topics Covered</td>
                            </tr>
                            <tr>
                                <td class="content" align="left">${bookList.topicsCovered}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr><td colspan="2">&nbsp;</td></tr>
                <tr>
                    <td colspan="2">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                            <tr>
                                <td class="label" align="left">Contents Of The CDROM</td>
                            </tr>
                            <tr>
                                <td class="content" align="left">${bookList.contentsCDROM}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <%@ include file="/WEB-INF/jsp/footer.jsp" %>
        </div>
    </body>
</html>
