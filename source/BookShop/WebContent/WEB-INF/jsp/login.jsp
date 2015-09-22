<form name='loginForm' action="<c:url value='j_spring_security_check'/>" method='POST'>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
                <c:if test="${not empty error}">
                    <div class="error">
                        Your login attempt was not successful, try again.<br />
                        Invalid username or password
                    </div>
                </c:if>
            </td>
        </tr>
        <tr>
            <td class="leftAlign, content">Username:</td>
        </tr>
        <tr>
            <td class="leftAlign">
                <input type='text' name='j_username' value='' maxlength="8">
            </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td class="leftAlign, content">Password:</td>
        </tr>
        <tr>
            <td class="leftAlign">
                <input type='password' name='j_password' maxlength="8"/>
            </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td class="centerAlign">
                <input type="submit" name="submit" class="loginButton" value="" />
            </td>
        </tr>
        <tr>
            <td class="leftAlign">
                <a href="/BookShop/admin/forgotPassword">Forgot Password</a>
            </td>
        </tr>
    </table>
</form>
