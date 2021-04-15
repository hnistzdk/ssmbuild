package com.zdk.controller;

import com.zdk.pojo.Books;
import com.zdk.service.BookService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author zdk
 * @date 2021/4/13 19:50
 */

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //查询全部的书籍 并且返回到一个书籍展示页面

    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list", list);
        return "allBook";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPage(){
        return "addBook";
    }

    //添加书籍的请求
    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println("books:"+books);
        bookService.addBook(books);
        //重定向到展示全部书籍的请求的页面
        return "redirect:/book/allBook";
    }

    //跳转到修改书籍页面
    @RequestMapping("/toModifyBook")
    public String toModifyBook(int id,Model model){
        model.addAttribute("qBook", bookService.queryBookById(id));
        return "modifyBook";
    }

    //修改书籍请求
    @RequestMapping("/modifyBook")
    public String modifyBook(Books books){
        int i = bookService.updateBook(books);
        if(i>0){
            return "redirect:/book/allBook";
        }
        else {
            return "modifyBook";
        }
    }

    //删除书籍请求
    @RequestMapping("/deleteBook")
    public String deleteBook(int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/queryBookByName")
    public String queryBookByName(String bookName,Model model){
        Books queryBookByName = bookService.queryBookByName(bookName);
        model.addAttribute("queryBookByName",queryBookByName);
        return null;
    }
}
