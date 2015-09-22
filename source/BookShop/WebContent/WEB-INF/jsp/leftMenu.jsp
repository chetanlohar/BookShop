<table width="100%" cellpadding="0" cellspacing="0">
    <tr>
        <td class="topAlign">
            <fieldset>
                <legend>New Releases</legend>
                <table cellspacing="4" cellpadding="0" width="100%">
                    <c:forEach items="${newReleasesList}" var="newReleases">
                        <tr title="Click to view book details">
                            <td class="imagePointer, leftAlign">
                                <a href="showBookDetails/${newReleases.bookNo}">
                                    ${newReleases.bookName}
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </fieldset>
        </td>
    </tr>
</table>
<br>
<table width="100%" cellpadding="0" cellspacing="0">
    <tr>
        <td class="topAlign">
            <fieldset>
                <legend>Our Authors</legend>
                <table cellspacing="4" cellpadding="0" width="100%">
                    <c:forEach items="${ourAuthorsList}" var="ourAuthors">
                        <tr title="Click to view author details">
                            <td class="imagePointer, leftAlign">
                                <a href="showAuthorDetails/${ourAuthors.authorNo}">
                                    ${ourAuthors.firstName} ${ourAuthors.lastName}
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </fieldset>
        </td>
    </tr>
</table>
<br>
<table width="100%" cellpadding="0" cellspacing="0">
    <tr>
        <td class="topAlign">
            <fieldset>
                <legend>Our Publishers</legend>
                <table cellspacing="4" cellpadding="0" width="100%">
                    <c:forEach items="${ourPublishersList}" var="ourPublishers">
                        <tr title="Click to view publisher details">
                            <td class="imagePointer, leftAlign">
                                <a href="showPublisherDetails/${ourPublishers.publisherNo}">
                                    ${ourPublishers.publisherName}
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </fieldset>
        </td>
    </tr>
</table>
<br>
<table width="100%" cellpadding="0" cellspacing="0">
    <tr>
        <td class="topAlign">
            <fieldset>
                <legend>Updated Books</legend>
                <table cellspacing="4" cellpadding="0" width="100%">
                    <c:forEach items="${updatedBooksList}" var="updatedBooks">
                        <tr title="Click to view book details">
                            <td class="imagePointer, leftAlign">
                                <a href="showBookDetails/${updatedBooks.bookNo}">
                                    ${updatedBooks.bookName}
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </fieldset>
        </td>
    </tr>
</table>
<br>
<table width="100%" cellpadding="0" cellspacing="0">
    <tr>
        <td class="topAlign">
            <fieldset>
                <legend>Top Titles</legend>
                <table cellspacing="4" cellpadding="0" width="100%">
                    <c:forEach items="${topTitlesList}" var="topTitles">
                        <tr title="Click to view book details">
                            <td class="imagePointer, leftAlign">
                                <a href="showBookDetails/${topTitles.bookNo}">
                                    ${topTitles.bookName}
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </fieldset>
        </td>
    </tr>
</table>
