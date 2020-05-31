package com.jarod.service;

import com.jarod.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {

    //增加一门书
    int addBook(Books books);

    //删除一门书
    int deleteBookById(int id);

    //更新一本书
    int updateBook(Books books);

    //查询一本书
    Books queryBookById(int id);

    //查询全部的书
    List<Books> queryAllBook();


    List<Books> queryBookByName(String bookName);
}
