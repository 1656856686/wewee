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
<font size="4">项目评论</font>
<table id="projectCommentData" lay-filter="test4"></table>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
        <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<div id="div_back"><a href="javascript:history.go(-1)">返回上一页</a></div>
</body>
<script type="text/javascript">
    layui.use(['form','table'],function(){
        var form = layui.form;
        table = layui.table;
        table.render({
            elem:'#projectCommentData',
            url:"<%=path%>/project/getProjectCommentByPs_type.do?ps_type="+2,
            height:450,
            page: true,
            cols:[[
                {type: 'checkbox',fixed: 'left',width:50,align:'center'},
                {field:'ps_id',  title: '项目ID', sort: true,fixed: 'left',width:100},
                {field:'ps_us_id',  title: '用户ID', sort: true,width:100},
                {field:'ps_cust_name',title: '客服姓名',width:120},
                {field:'ps_cust_phone',title: '客服电话',width:120},
                {field:'ps_cust_address',title: '客服地址',width:120},
                {field:'ps_pst_id',title: '项目类型ID',width:120},
                {field:'ps_file',title: '文件名称',width:120},
                {field:'ps_name',title: '项目标题',width:120},
                {field:'ps_goal',title: '筹款目的',width:120},
                {field:'ps_address',title: '项目地址',width:120},
                {field:'ps_money',title: '筹资金额',width:120},
                {field:'ps_days',title: '筹资天数',width:120},
                {field:'ps_video',title: '宣传视频地址',width:120},
                {field:'ps_story',title: '项目故事',width:120},
                {field:'ps_support',title: '更多支持',width:120},
                {field:'ps_repay',title: '提供回报简述',width:120},
                {field:'ps_aboutme',title: '关于自己',width:120},
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
                {field:'ps_starttime',title: '项目开始的时间',width:120},
                {field:'ps_endtime',title: '项目结束的时间',width:120},
                {field:'ps_getmoney',title: '项目已筹资金额',width:120},
                {field:'ps_getpeople',title: '项目支持人数',width:120},
                {fixed:'right',title: '详情',width:120,align:'center', toolbar: '#barDemo'}
            ]]
        });
       /* table.on('tool(test4)', function(obj){
            var data = obj.data
            var id=	 data.ps_id
            layer.open({
                title: '详细信息',
                type: 2,
                area: ['900px', '530px'],
                content: '<%=path%>/project/projectCommentTab.do?ps_id='+id,//这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                btn:['确认']
            });
        })*/
    });



</script>
</html>
