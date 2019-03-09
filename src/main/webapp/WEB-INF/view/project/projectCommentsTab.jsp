<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="<%=path%>/js/jquery-3.2.1/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css" media="all">
    <script type="text/javascript" src="<%=path%>/layui/layui.js"></script>
    <link rel="stylesheet" href="<%=path%>/boot/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="<%=path%>/boot/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/boot/bootstrap/js/bootstrap.min.js"></script>
    <style type="text/css">

        #ada{
            border:1px solid #5FB878;
            margin:10px auto;
            width:95%;
            border-collapse: collapse;
            text-align: center;
        }
        #ada td{
            border:2px solid #5FB878;
            padding:1px;
        }

    </style>
</head>
<body>
<form class="layui-form" >
    <table align="center" id="ada">
        <tr>
            <td>用户ID</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="cm_us_id" value="${comments.cm_us_id}">
                </div>
            </td>
            <td>项目ID</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="cm_ps_id" value="${comments.cm_ps_id}">
                </div>
            </td>
        </tr>
        <tr>
            <td>评论内容</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="cm_content" value="${comments.cm_content}">
                </div>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
