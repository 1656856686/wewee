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
                                  width: 900px;
                                  text-align: right;
                                  padding-right: 50px;
                                  margin: 10px auto;
                              }
    </style>
</head>
<body>
<table id="projectCommentTabData" lay-filter="test5"></table>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">删除评论</a>
</script>
<div id="div_back"><a href="javascript:history.go(-1)">返回上一页</a></div>
</body>
<script type="text/javascript">
    function child(ps_id) {
    layui.use(['form','table'],function(){
        var form = layui.form;
        table = layui.table;
        table.render({
            elem:'#projectCommentTabData',
            url:"<%=path%>/project/getProjectComments.do?ps_id="+ps_id,
            height:380,
            width:900,
            page: true,
            cols:[[
                {type: 'checkbox',fixed: 'left',width:50,align:'center'},
                {field:'cm_id',  title: '评论ID', sort: true,fixed: 'left',width:100},
                {field:'us_id',  title: '用户ID', sort: true,width:100},
                {field:'us_name',title: '用户姓名',width:120},
                {field:'us_money',title: '用户资金',width:120,templet:function (d) {
                        return d.us_money +"元"
                    }},
                {field:'ps_id',title: '项目ID',width:120},
                {field:'ps_name',title: '项目名称',width:120},
                {field:'ps_money',title: '项目资金',width:120},
                {field:'ps_address',title: '项目地址',width:120},
                {field:'ps_type',title: '项目状态',width:120,templet: function(d){
                        switch(d.ps_type){
                            case 0:return '待审核';
                            case 1:return '待上架';
                            case 2:return "众筹中";
                            case 3:return "众筹成功";
                            case 4:return "众筹失败";
                            case 5:return "审核未通过";
                        }
                    }},
                {field:' cm_content',title: '评论内容',width:120},
                {fixed:'right',title: '详情',width:90,align:'center', toolbar: '#barDemo'}
            ]]
        });

    });

    }

</script>
</html>
