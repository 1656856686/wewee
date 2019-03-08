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
                    <input type="text" class="layui-input" name="ps_us_id" value="${projects.ps_us_id}">
                </div>
            </td>
            <td>客服姓名</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_cust_name" value="${projects.ps_cust_name}">
                </div>
            </td>
        </tr>
        <tr>
            <td>客服电话</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_cust_phone" value="${projects.ps_cust_phone}">
                </div>
            </td>

            <td>客服地址</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_cust_address" value="${projects.ps_cust_address}">
                </div>
            </td>
        </tr>
        <tr>
            <td>项目类型ID</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_pst_id" value="${projects.ps_pst_id}">
                </div>
            </td>

            <td>文件名称</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_file" value="${projects.ps_file}">
                </div>
            </td>
        </tr>
        <tr>
            <td>项目标题</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_name" value="${projects.ps_name}">
                </div>
            </td>

            <td>筹款目的</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_goal" value="${projects.ps_goal}">
                </div>
            </td>
        </tr>
        <tr>
            <td>项目地址</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_address" value="${projects.ps_address}">
                </div>
            </td>

            <td>筹资金额</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_money" value="${projects.ps_money}">
                </div>
            </td>
        </tr>
        <tr>
            <td>筹资天数</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_days" value="${projects.ps_days}">
                </div>
            </td>

            <td>宣传视频地址</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_video" value="${projects.ps_video}">
                </div>
            </td>
        </tr>
        <tr>
            <td>项目故事</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_story" value="${projects.ps_story}">
                </div>
            </td>

            <td>更多支持</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_support" value="${projects.ps_support}">
                </div>
            </td>
        </tr>
        <tr>
            <td>提供回报简述</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_repay" value="${projects.ps_repay}">
                </div>
            </td>

            <td>关于自己</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_aboutme" value="${projects.ps_aboutme}">
                </div>
            </td>
        </tr>
        <tr>
            <%--(0.待审核1.待上架2.众筹中3.众筹成功4.众筹失败5.审核未通过)--%>
            <td>项目状态</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_type" value="${projects.ps_type}">
                </div>
            </td>

            <td>项目开始的时间</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_starttime" value="${projects.ps_starttime}">
                </div>
            </td>
        </tr>
        <tr>
            <td>项目结束的时间</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_endtime" value="${projects.ps_endtime}">
                </div>
            </td>

            <td>项目已筹资金额</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_getmoney" value="${projects.ps_getmoney}">
                </div>
            </td>
        </tr>
        <tr>
            <td>项目支持人数</td>
            <td>
                <div class="layui-input-inline" style="width: 100%">
                    <input type="text" class="layui-input" name="ps_getpeople" value="${projects.ps_getpeople}">
                </div>
            </td>
        </tr>
    </table>
</form>
<div id="div_back"><a href="javascript:history.go(-1)">返回上一页</a></div>
</body>
</html>
