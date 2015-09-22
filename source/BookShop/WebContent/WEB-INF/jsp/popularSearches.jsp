<fieldset>
    <legend>Popular Searches</legend>
    <c:forEach items="${popularSearchList}" var="popularSearch">
        <c:if test="${popularSearch[1]>=1 && popularSearch[1]<5}">
            <a href="searchResults/${popularSearch[0]}" class="popularSearch1" title="Click to search for ${popularSearch[0]}">
                ${popularSearch[0]}
            </a>
        </c:if>
        <c:if test="${popularSearch[1]>=5 && popularSearch[1]<10}">
            <a href="searchResults/${popularSearch[0]}" class="popularSearch2" title="Click to search for ${popularSearch[0]}">
                ${popularSearch[0]}
            </a>
        </c:if>
        <c:if test="${popularSearch[1]>=10 && popularSearch[1]<15}">
            <a href="searchResults/${popularSearch[0]}" class="popularSearch3" title="Click to search for ${popularSearch[0]}">
                ${popularSearch[0]}
            </a>
        </c:if>
        <c:if test="${popularSearch[1]>=15 && popularSearch[1]<20}">
            <a href="searchResults/${popularSearch[0]}" class="popularSearch4" title="Click to search for ${popularSearch[0]}">
                ${popularSearch[0]}
            </a>
        </c:if>
        <c:if test="${popularSearch[1]>=20}">
            <a href="searchResults/${popularSearch[0]}" class="popularSearch5" title="Click to search for ${popularSearch[0]}">
                ${popularSearch[0]}
            </a>
        </c:if>                                      
    </c:forEach>
</fieldset>
