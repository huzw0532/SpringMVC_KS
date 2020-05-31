<%--
  Created by IntelliJ IDEA.
  User: Jarod
  Date: 2020/5/30
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
    <title>Title</title>
    <script src="./static/js/jquery-3.5.1.js"></script>
    <script>
        function a1() {
            $.post({
                url:"${pageContext.request.contextPath}/a3",
                data:{"name":$("#name").val()},
                success:function (data) {
                    if(data.toString() === "ok"){
                        $("#userInfo").css("color","green");
                    }else{
                        $("#userInfo").css("color","red");
                    }
                    $("#userInfo").html(data.toString());
                }
            })
        }
        function a2() {
            $.post("${pageContext.request.contextPath}/a3",{"pwd":$("#pwd").val()},function (data) {
                if(data.toString() === "ok"){
                    $("#pwdInfo").css("color","green");
                }else{
                    $("#pwdInfo").css("color","red");
                }
                $("#pwdInfo").html(data.toString());
            })
        }
    </script>

    </head>
<body>
<p>
    用户名：<input type="text" id="name" onblur="a1()">
    <span id="userInfo"></span>
</p>
<p>
    密码：<input type="text" id="pwd" onblur="a2()">
    <span id="pwdInfo"></span>
</p>
</body>
</html>
