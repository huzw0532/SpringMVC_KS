package com.jarod.service;

import com.jarod.dao.BookMapper;
import com.jarod.pojo.Books;

import java.util.List;

public class BookServiceImpl implements BookService{

    //service 调 dao层：组合Dao
    //调用dao层的操作，设置一个set接口，方便Spring管理
    private BookMapper bookMapper;
    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    public List<Books> queryBookByName(String bookName) {
        return bookMapper.queryBookByName(bookName);
    }
}