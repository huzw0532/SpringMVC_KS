
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="./static/js/jquery-3.5.1.js"></script>
    <script>
        $(function () {
            $("#btn").click(function () {
                /**
                 * $.post (url, param[可以省略], success)
                 */
                $.post("${pageContext.request.contextPath}/a2",function (data) {
                    // console.log(data);
                    var html = "";
                    for (let i = 0; i < data.length;i++){
                        html += "<tr>" +
                            "<td>" + data[i].name + "</td>" +
                            "<td>" + data[i].age + "</td>" +
                            "<td>" + data[i].sex + "</td>" +
                            "</tr>";
                    }

                    $("#content").html(html);
                })
            })
        });

    </script>
</head>
<body>
<input type="button" value="加载数据" id="btn">
    <table>
        <tr>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
        </tr>
        <tbody id="content">
            <!--数据：后台-->
        </tbody>
    </table>
</body>
</html>
