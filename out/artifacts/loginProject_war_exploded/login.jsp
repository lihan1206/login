<%--
  Created by IntelliJ IDEA.
  User: LH
  Date: 2023/12/4
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<div style="text-align: center">
    <form action="/login" method="post" id="loginForm">
        姓名：<input type="text" name="uname" id="uname">  <br>
        密码：<input type="password" name="upassword" id="upwd"> <br>
        <span id="msg" style="font-size: 12px;color: red"></span> <br>
        <button type="button" id="loginBtn">登录</button>
        <button type="button">注册</button>
    </form>
</div>
</body>
<%--引入jquery的js--%>
<%--<script type="text/javascript" src="js/jquery-3.4.1.js"></script>--%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
    /**
     *  登录表单验证
           1.给登录按钮绑定点击事件（通过id选择器绑定）
           2.获取用户姓名和密码得值
           3.判断姓名是否为空
               如果姓名为空，提示用户（span标签赋值），并且return
           4.判断密码是否为空
               如果密码为空，提示用户（span标签赋值），并且return
           5.如果都不为空则手动提交表单
     */
    $("#loginBtn").click(function () {
        //获取用户姓名和密码得值
        var uname = $("#uname").val();
        var upwd = $("#upwd").val();
        //判断姓名是否为空
        if(isEmpty(uname)){
            //如果姓名为空，提示用户（span标签赋值），并且return  html()
            $("#msg").html("用户姓名不可为空");
            return;
        }
        //判断密码是否为空
        if (isEmpty(upwd)){
            //如果密码为空，提示用户（span标签赋值），并且return  html()
            $("#msg").html("用户密码不可为空");
            return;
        }
        //如果都不为空则手动提交表单
        $("#loginForm").submit();
    })

    /**
     * 判断字符串是否为空
     *     如果为空返回true
     *     如果不为空返回false
     * @param str
     * @returns {boolean}
     */
    function isEmpty(str) {
        if(str == null || str.trim()==""){
            return true;
        }
        return false;

    }

</script>
</html>