<%--
  Created by IntelliJ IDEA.
  User: Jarod
  Date: 2020/5/30
  Time: 13:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>

    <script src="./static/js/jquery-3.5.1.js"></script>

    <%--js是一个很随便的语言--%>
    <script>
      function a(){
        $.post({
          url:"${pageContext.request.contextPath}/a1",
          data:{"name":$("#username").val()},
          success:function (data) {
            alert(data);
          }
        })
      }

    </script>

  </head>
  <body>
  <%--失去焦点的时候，发起一个请求(鞋带信息)到后台--%>
  用户名：<input type="text" id="username" onblur="a()">

  </body>
</html>
