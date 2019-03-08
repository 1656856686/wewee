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
        #div_back {
            border: 1px solid white;
            width: 1250px;
            text-align: right;
            padding-right: 50px;
            margin: 10px auto;
        }


    </style>
</head>
<body>
<h1>项目审核</h1>
<table id="projectAuditData" class="layui-table" lay-data="{id: 'idTest'} " lay-filter="test"></table>
<div id="div_back"><a href="javascript:history.go(-1)">返回上一页</a></div>
<div type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail" >审核</a>
</div>
</body>
<script type="text/javascript">
    layui.use(['form', 'table'], function () {
        var form = layui.form;
        table = layui.table;
        table.render({
            elem: '#projectAuditData',
            url: "<%=path%>/project/getProByAudit.do",
            height: 450,
            page: true,
            cols: [[
                {type: 'checkbox', fixed: 'left', width: 50, align: 'center'},
                {field: 'ps_id', title: '项目ID', sort: true, fixed: 'left', width: 100},
                {field: 'ps_us_id', title: '用户ID', sort: true, fixed: 'left', width: 100},
                {field: 'ps_name', title: '项目标题', width: 120},
                {field: 'ps_address', title: '项目地址', width: 120},
                {field: 'ps_video', title: '宣传视频地址', width: 120},
                {field: 'ps_type', title: '项目状态', width: 120},
                {field: 'ps_starttime', title: '项目开始的时间', width: 120},
                {field: 'ps_endtime', title: '项目结束的时间', width: 120},
                {fixed: 'right', title: '详情', width: 70, align: 'center', toolbar: '#barDemo'}
            ]]
        })


    })

</script>

</html>
