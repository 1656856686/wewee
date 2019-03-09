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
<font size="4">项目审核</font>
<table id="projectAuditData" lay-filter="test1"></table>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail" >审核</a>
</script>
<div id="div_back"><a href="javascript:history.go(-1)">返回上一页</a></div>

</body>
<script type="text/javascript">
    layui.use(['form', 'table'], function () {
        var form = layui.form;
        table = layui.table;
        table.render({
            elem: '#projectAuditData',
            url: "<%=path%>/project/getProByAudit.do?ps_type="+0,
            height: 450,
            page: true,
            cols: [[
                {type: 'checkbox', fixed: 'left', width: 50, align: 'center'},
                {field: 'ps_id', title: '项目ID', sort: true, fixed: 'left', width: 100},
                {field: 'ps_us_id', title: '用户ID', sort: true, fixed: 'left', width: 100},
                {field: 'ps_name', title: '项目标题', width: 200},
                {field: 'ps_address', title: '项目地址', width: 200},
                {field: 'ps_video', title: '宣传视频地址', width: 200},
                {field: 'ps_type', title: '项目状态', width: 200,templet: function(d){
                        switch(d.ps_type){
                            case 0:return "待审核";
                            case 1:return "待上架";
                            case 2:return "众筹中";
                            case 3:return "众筹成功";
                            case 4:return "众筹失败";
                            case 5:return "审核未通过";
                        }
                }},
                {field: 'ps_starttime', title: '项目开始的时间', width: 200},
                {field: 'ps_endtime', title: '项目结束的时间', width: 200},
                {fixed: 'right', title: '详情', width: 100, align: 'center', toolbar: '#barDemo'}
            ]]
        })
        table.on('tool(test1)', function(obj){
            var data = obj.data
            var ps_id=data.ps_id
            layer.open({
                title: '审核信息',
                type: 2,
                area: ['800px', '530px'],
                content: '<%=path%>/project/projectAuditTab.do?ps_id='+ps_id,//这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
                btn:['确定','通过','不通过']
                ,btn2: function(index){
                   /*location.href="<%=path%>/project/upProjectByPs_id.do?ps_type="+ps_type*/
                    $.ajax({
                        type:'post',
                        url:"<%=path%>/project/upProjectByPs_id.do",
                        data:{"ps_id":ps_id},
                        dataType:"json",
                        success:function(data){
                            if(data.success){
                               /* $(".layui-laypage-btn")[0].click();//刷新当前页面*/
                                table.reload('projectAuditData', {
                                    url: "<%=path%>/project/getProByAudit.do?ps_type="+0
                                });
                            }else{
                                layer.msg('系统2错误', {
                                    time: 5000, //5s后自动关闭
                                    btn: ['明白了', '知道了', '哦']
                                });
                            }
                        }
                    });
                }
                ,btn3: function(index){
                  /* location.href="<%=path%>/project/upProjectById.do?ps_type="+ps_type*/
                   $.ajax({
                        type:'post',
                        url:"<%=path%>/project/upProjectById.do",
                        data:{"ps_id":ps_id},
                        dataType:"json",
                        success:function(data){
                            if(data.success){
                               /* $(".layui-laypage-btn")[0].click();//刷新当前页面*/
                                table.reload('projectAuditData', {
                                    url: "<%=path%>/project/getProByAudit.do?ps_type="+0
                                });
                            }else{
                                layer.msg('系统4错误', {
                                    time: 5000, //5s后自动关闭
                                    btn: ['明白了', '知道了', '哦']
                                });
                            }
                        }
                    });
                }

            });



    })
    })
</script>

</html>
