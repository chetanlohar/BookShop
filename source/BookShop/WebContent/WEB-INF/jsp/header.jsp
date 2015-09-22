<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div id="headerDiv">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td width="45%" class="topAlign" align="left">
                <table id="welcome" border="0" width="100%">
                    <tr>
                        <td>
                            <h2>Sharanam & Vaishali's Online Bookshop</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <sec:authorize access="isAuthenticated()">
                                <br/>
                                <h3 class="welcomeMessage">Welcome ${userDetails.firstName} ${userDetails.lastName} (<sec:authentication property="principal.username" />)</h3>
                            </sec:authorize>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="55%">
                <table border="0" width="100%">
                    <tr>
                        <td>
                            <table border="0" class="topAlign" align="right" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <a href="/BookShop/home"><img src="/BookShop/images/home.png" title="Home (End User)"/></a>
                                    </td>
                                    <sec:authorize access="isAnonymous()">
                                        <td>
                                            &nbsp;&nbsp;
                                            <a href="/BookShop/signUp"><img src="/BookShop/images/signup.png" title="Sign Up"/></a>
                                        </td>
                                    </sec:authorize>
                                    <sec:authorize access="isAuthenticated()">
                                        <td>
                                            &nbsp;&nbsp;
                                            <a href="/BookShop/showCart/<sec:authorize access='isAuthenticated()'><sec:authentication property='principal.username' /></sec:authorize>"><img src="/BookShop/images/showCart.png" title="Show Cart"/></a>
                                        </td>
                                    </sec:authorize>
                                    <sec:authorize access="isAuthenticated()">
                                        <td>
                                            &nbsp;&nbsp;
                                            <a href="/BookShop/j_spring_security_logout"><img src="/BookShop/images/logout.png" title="Logout"/></a>
                                        </td>
                                    </sec:authorize>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br/>
                            <table class="rightAlign" border="0" cellspacing="0" cellpadding="0" width="100%">
                                <tr>
                                    <td>
                                        <form:form commandName="search" method="post">
                                            <form:input path="searchCriteria" cssClass="search-text" title="Enter the search criteria" /><input id="button-search" class="search-button" type="button" onclick="document.location.href='${pageContext.request.contextPath}/searchResults/' + document.forms[0].searchCriteria.value" title="Search" name="fulltext" value="" />
                                        </form:form>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
