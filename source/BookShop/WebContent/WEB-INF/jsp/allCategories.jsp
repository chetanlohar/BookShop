<%! int ctr = 0; %>
<c:forEach items="${allCategoriesList}" var="allCategories">
    <table id="portlets-content-main" align="center" border="0" cellspacing="1" cellpadding="1" width="100%" class="allCategoriesTable">
        <tr>
            <td class="categoriesNames">
                <a href="showCategoryDetails/${allCategories.categoryNo}" title="${allCategories.description}" >
                    ${allCategories.category}
                </a>
                <table align="left" border="0" cellspacing="1" cellpadding="1" width="100%" class="allCategoriesTable">
                    <tr>
                        <% ctr = 0; %>
                        <c:forEach items="${allBooksList}" var="categoryWiseBooks">
                            <c:if test="${categoryWiseBooks.categoryNo == allCategories.categoryNo}">
                                <% ctr++; 
                                if (ctr<4) { %>
                                <td width="33%">
                                    <table align="left" border="0" cellspacing="1" cellpadding="1" width="100%" class="allCategoriesTable">
                                        <tr>
                                            <td width="20%">
                                                <a href="showBookDetails/${categoryWiseBooks.bookNo}" title="${categoryWiseBooks.synopsis}">
                                                    <img alt="Cover Page" src="admin/downloadBookPhotograph/${categoryWiseBooks.bookNo}" height="110px" width="80px"/>
                                                </a>
                                            </td>
                                            <td align="left" class="heading" >
                                                ${categoryWiseBooks.bookName}<br>
                                                Cost: ${categoryWiseBooks.cost}<br>
                                                ISBN: ${categoryWiseBooks.isbn}<br>
                                                Year: ${categoryWiseBooks.year}<br>
                                                <sec:authorize access="isAuthenticated()">
                                                    <a href="addToCart/<sec:authorize access='isAuthenticated()'><sec:authentication property='principal.username' /></sec:authorize>/${categoryWiseBooks.bookNo}">
                                                        <img src="/BookShop/images/cart.jpg" class="imagePointer" border="0"/>
                                                    </a>&nbsp;
                                                    <a href="admin/downloadBookSampleChapter/${categoryWiseBooks.bookNo}">Sample</a> &nbsp;|&nbsp; <a href="admin/downloadBookTOC/${categoryWiseBooks.bookNo}">TOC</a>
                                                </sec:authorize>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <% } %>
                            </c:if>
                        </c:forEach>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</c:forEach>
