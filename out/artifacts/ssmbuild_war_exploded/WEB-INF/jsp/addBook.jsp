<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <%--    清除浮动--%>
    <div class="row clearfix">
        <%--        把屏幕分成12分,12为占满 中等屏幕--%>
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<form action="${pageContext.request.contextPath}/book/addBook" method="post" >
    <div class="form-group">
        <label for="bookName">书籍名称:</label>
        <input type="text" class="form-control" id="bookName" name="bookName" required="required">
    </div>
    <div class="form-group">
        <label for="bookCounts">书籍数量:</label>
        <input type="text" class="form-control" id="bookCounts" name="bookCounts" required="required">
    </div>
    <div class="form-group">
        <label for="detail">书籍描述:</label>
        <input type="text" class="form-control" id="detail" name="detail" required="required">
    </div>
    <button type="submit" class="btn btn-default">添加</button>
</form>

</body>
</html>
