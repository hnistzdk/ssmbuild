package com.zdk.dao;

import com.zdk.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author zdk
 * @date 2021/4/11 19:22
 */
public interface BookMapper {
    int addBook(Books books);
    int deleteBookById(@Param("bookID") int id);
    int updateBook(Books books);
    Books queryBookById(int id);
    List<Books> queryAllBook();
}
