<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
    <%--    用bootstrap美化--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="/statics/js/jquery-3.4.1.js">

    </script>
</head>
<body>
<%--栅格--%>
<div class="container">
    <%--    清除浮动--%>
    <div class="row clearfix">
        <%--        把屏幕分成12分,12为占满 中等屏幕--%>
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>书籍列表 ———— 显示所有书籍</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
<%--                新增书籍--%>
                <a href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                <a href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
            </div>
            <div class="col-md-4 column">
<%--                查询书籍--%>
                <form class="line" action="${pageContext.request.contextPath}/book/queryBookByName" method="post" style="float: right">
                    <span style="color: red;font-weight: bold">${error}</span>
                    <input type="text" name="bookName" placeholder="请输入要查询的书籍名称" class="form-select-button">
                    <input type="submit" value="查询" class="button">
                </form>
            </div>
        </div>
    </div>
</div>

<div class="row clearfix">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toModifyBook?id=${book.bookID}">修改</a>
                            <a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.bookID}" class="deleteBook">删除</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
<script type="text/javascript">
    $('.deleteBook').click(function () {
        let res = confirm('您确定要删除这本书吗');
        if(res){
            return true;
        }else {
            return false;
        }
    })
</script>
</html>

