package com.sharanamvaishali.service;

import com.sharanamvaishali.model.Author;
import com.sharanamvaishali.model.Book;
import java.util.List;

public interface AuthorService {
    public void saveAuthor(Author author);
    public List<Author> listAuthor();
    public void removeAuthor(Integer authorNo);
    public Author getAuthorById(Integer authorNo);
    public List<Author> listOurAuthors();
    public List<Book> getAllBooksByAuthor(Integer authorNo);
}
