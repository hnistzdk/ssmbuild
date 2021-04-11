package com.zdk.service;

import com.zdk.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author zdk
 * @date 2021/4/11 19:32
 */
public interface BookService {
    int addBook(Books books);
    int deleteBookById(int id);
    int updateBook(Books books);
    Books queryBookById(int id);
    List<Books> queryAllBook();
}
