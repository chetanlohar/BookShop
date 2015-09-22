package com.sharanamvaishali.service;

import com.sharanamvaishali.model.Book;
import com.sharanamvaishali.model.Category;
import java.util.List;

public interface CategoryService {
    public void saveCategory(Category category);
    public List<Category> listCategory();
    public void removeCategory(Integer categoryNo);
    public Category getCategoryById(Integer categoryNo);
    public List<Book> getAllBooksByCategory(Integer categoryNo);
}
