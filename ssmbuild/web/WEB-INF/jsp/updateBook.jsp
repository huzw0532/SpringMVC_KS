<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <%-- 引入 Bootstrap --%>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>修改书籍</small>
                    </h1>
                </div>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
            <%-- 出现的问题：我们提交了修改的SQL请求，但是修改失败，初次考虑是事务问题，配置完毕事务依旧失败 --%>
            <%-- 看一下SQL语句，能否执行成功：SQL执行失败，修改未完成 --%>
            <%-- 前端传递隐藏域 --%>
            <input type="hidden" name="bookID" value="${books.bookID}"/>

            <%-- required表示表单不能为空 --%>
            书籍名称：<input type="text" name="bookName" required value="${books.bookName}"><br><br><br>
            书籍数量：<input type="text" name="bookCounts" required value="${books.bookCounts}"><br><br><br>
            书籍详情：<input type="text" name="detail" required value="${books.detail}"><br><br><br>
            <input type="submit" value="修改">
        </form>

    </div>
</body>
</html>
