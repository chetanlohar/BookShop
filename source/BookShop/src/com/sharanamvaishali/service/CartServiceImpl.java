package com.sharanamvaishali.service;

import com.sharanamvaishali.dao.TransactionDAO;
import com.sharanamvaishali.model.Book;
import com.sharanamvaishali.model.CartItem;
import com.sharanamvaishali.model.Transaction;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
    private BookService bookService;
    
    @Autowired
    private TransactionService transactionService;
    
    @Autowired
    private TransactionDAO transactionDAO;
    
    @Transactional
    @Override
    public void addBookToCart(Integer bookNo, String userName, HttpSession session) {
        List<CartItem> cartList;
        if((List<CartItem>) session.getAttribute(userName)!=null) {
            cartList = (List<CartItem>) session.getAttribute(userName);
        }
        else {
            cartList = new ArrayList();
        }
        Book book = bookService.getBookById(bookNo);
        boolean itemExists = false;
        for (CartItem item : cartList) {
            if (item.getBookNo().equals(bookNo)) {
                item.setQty(item.getQty()+1);
                item.setCost(item.getCost() * item.getQty());
                itemExists = true;
            }
        }
        if (!itemExists) {
            CartItem cartItem = new CartItem(userName, book.getBookNo(), book.getBookName(), book.getSynopsis(), book.getCost(), 1);        
            cartList.add(cartItem);
        }
        session.setAttribute(userName, cartList);
    }

    @Transactional
    @Override
    public void saveCart(String userName, HttpSession session) {
        List<CartItem> cartList = (List<CartItem>) session.getAttribute(userName);
        Integer nextTransactionNo = transactionDAO.getNextTransactionNo();
        for (CartItem cartItem : cartList) {
            if (cartItem.getUserName().equals(userName)) {
                Transaction transaction = new Transaction();
                transaction.setTransactionNo(nextTransactionNo);
                transaction.setBookName(cartItem.getBookName());
                transaction.setCost(cartItem.getCost());
                transaction.setQty(cartItem.getQty());
                transaction.setUserName(userName);
                transactionService.saveTransaction(transaction);
            }
        }        
    }

    @Override
    public void removeBookFromCart(Integer bookNo, String userName, HttpSession session) {
        List<CartItem> cartList;
        if((List<CartItem>) session.getAttribute(userName)!=null) {
            cartList = (List<CartItem>) session.getAttribute(userName);
        }
        else {
            cartList = new ArrayList();
        }
        for (int i=0; i<cartList.size(); i++) {
            if (cartList.get(i).getBookNo().equals(bookNo)) {
                cartList.remove(i);
            }
        }
        session.setAttribute(userName, cartList);
    }
}
    
