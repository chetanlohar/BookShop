<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BookShop[Sharanam & Vaishali Shah] - Manage Transactions</title>
        <link rel="stylesheet" href="/BookShop/css/admin.css" type="text/css">
    </head>
    <body>
        <%@ include file="/WEB-INF/jsp/adminHeader.jsp" %>
        <br/>        
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td class="manageForms">Manage Transactions</td>
                            <td class="information">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr><td class="hrLine">&nbsp;</td></tr>
            <tr>
                <td>
                    <form method="post">
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="50%">
                                    <fieldset class="fieldsetHieght">
                                        <legend><b>By Username</b></legend>
                                        <table width="100%" border="0" cellpadding="4" cellspacing="4">
                                            <tr>
                                                <td width="10%">Username<span class="mandatory">*</span>:</td>
                                                <td width="42%">
                                                    <input name="userName" title="Enter the username" maxlength="25" size="30"/>
                                                </td>
                                                <td>
                                                    <input type="button" onclick="document.location.href='${pageContext.request.contextPath}/admin/searchTransactionsByUsername/' + document.forms[0].userName.value" class="groovybutton" value="Search" />
                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset>
                                </td>
                                <td>
                                    <fieldset class="fieldsetHieght">
                                        <legend><b>By Date</b></legend>
                                        <table width="100%" border="0" cellpadding="4" cellspacing="4">
                                            <tr>
                                                <td width="10%">Date<span class="mandatory">*</span>:</td>
                                                <td width="42%">
                                                    <select title="Select the month" name="month">
                                                        <option value="1">January</option>
                                                        <option value="2">February</option>
                                                        <option value="3">March</option>
                                                        <option value="4">April</option>
                                                        <option value="5">May</option>
                                                        <option value="6">June</option>
                                                        <option value="7">July</option>
                                                        <option value="8">August</option>
                                                        <option value="9">September</option>
                                                        <option value="10">October</option>
                                                        <option value="11">November</option>
                                                        <option value="12">December</option>
                                                    </select>
                                                    <select title="Select the day" name="day">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                        <option value="13">13</option>
                                                        <option value="14">14</option>
                                                        <option value="15">15</option>
                                                        <option value="16">16</option>
                                                        <option value="17">17</option>
                                                        <option value="18">18</option>
                                                        <option value="19">19</option>
                                                        <option value="20">20</option>
                                                        <option value="21">21</option>
                                                        <option value="22">22</option>
                                                        <option value="23">23</option>
                                                        <option value="24">24</option>
                                                        <option value="25">25</option>
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                        <option value="31">31</option>
                                                    </select>
                                                    <select title="Select the year" name="year">
                                                        <%
                                                            for(int i = (year-100); i <= year; i++) {
                                                                if(String.valueOf(i).equals(request.getParameter("year"))) {
                                                                    out.println("<option selected value=" + i + ">" + i + "</option>");
                                                                }
                                                                out.println("<option value=" + i + ">" + i + "</option>");
                                                            }
                                                        %>
                                                    </select>
                                                </td>
                                                <td>
                                                    <input type="button" onclick="document.location.href='${pageContext.request.contextPath}/admin/searchTransactionsByDate/' + document.forms[0].year.value + '/' + + document.forms[0].month.value + '/' + document.forms[0].day.value" class="groovybutton" value="Search" />
                                                </td>
                                            </tr>
                                        </table>
                                    </fieldset>                                    
                                </td>
                            </tr>
                            <tr><td colspan="2">&nbsp;</td></tr>
                        </table>
                    </form>
                </td>
            </tr>
            <tr><td class="hrLine">&nbsp;</td></tr>
            <tr>
                <td>
                    <br>
                    <c:if test="${!empty transactionGroupedList}">
                        <c:forEach items="${transactionGroupedList}" var="transaction">
                            <table cellspacing="1" cellpadding="2" width="20%" style="float:left;">
                                <tr>
                                    <td width="50%" class="transactionGroupHeading">
                                        Transaction No.:
                                    </td>
                                    <td class="transactionGroupContent">
                                        ${transaction[0]}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="transactionGroupHeading">
                                        Transaction Date:
                                    </td>
                                    <td class="transactionGroupContent">
                                        ${transaction[1]}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="transactionGroup">
                                        Username:
                                    </td>
                                    <td>
                                        ${transaction[2]}
                                    </td>
                                </tr>
                            </table>
                            <fieldset class="transactionFieldset">
                                <legend><b>Google Order No.</b></legend>
                                <c:choose>
                                    <c:when test="${empty transaction[5]}">
                                        <form method="post">
                                            <input name="googleOrderNo" title="Enter the google order number here" maxlength="25" size="30"/>
                                            <input type="button" onclick="document.location.href='${pageContext.request.contextPath}/admin/updateGoogleOrderNo/' + ${transaction[0]} + '/' + document.forms[1].googleOrderNo.value" class="groovybutton" value="Update" />
                                        </form>
                                    </c:when>                                    
                                    <c:otherwise>
                                        <span class="transactionGoogleOrder">${transaction[5]}</span>
                                    </c:otherwise>
                                </c:choose>
                            </fieldset>
                            <br/>
                            <table class="data" width="100%">
                                <tr>
                                    <th width="10%">Detail No.</th>
                                    <th width="60%">Book Name</th>
                                    <th width="15%">Cost</th>
                                    <th width="15%">Qty.</th>
                                </tr>
                                <c:forEach items="${transactionList}" var="transactionDetail">
                                    <c:if test="${transactionDetail.transactionNo == transaction[0]}">
                                        <tr>
                                            <td>${transactionDetail.transactionDetailNo}</td>
                                            <td>${transactionDetail.bookName}</td>
                                            <td>${transactionDetail.qty}</td>
                                            <td>${transactionDetail.cost}</td>
                                        </tr>
                                    </c:if>
                                </c:forEach>
                                <tr>
                                    <th colspan="2" class="rightAlign">Total:</th>
                                    <th class="leftAlign">${transaction[4]}</th>
                                    <th class="leftAlign">${transaction[3]}</th>
                                </tr>
                            </table>
                            <br/><hr/><br/>
                        </c:forEach>
                    </c:if>
                </td>
            </tr>
        </table>        
        <%@ include file="/WEB-INF/jsp/adminFooter.jsp" %>
    </body>
</html>
