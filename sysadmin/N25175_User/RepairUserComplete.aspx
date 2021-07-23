<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_Leader_LeaderComplete, App_Web_e3ngxtzn" enableEventValidation="false" %>

<!DOCTYPE html>


<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>维修评价</title>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/control/css/main.css" rel="stylesheet" type="text/css" />
    <script src="/control/js/jquery.js" type="text/javascript"></script>

    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/base.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/a_home.css" rel="stylesheet" type="text/css" />
</head>

<body class="overflow-hidden">
<div class="wrapper preload">
    <uc1:MyHeader ID="MyHeader1" runat="server" />
    <div class="container" style='margin-top: 55px'>
          <ul class="breadcrumb">
            <li>
                <a href="/sysadmin/Dashboard.aspx">主页</a>
            </li>
            <li>
                <a href="/sysadmin/N25175_User/RepairUserList.aspx">报修用户</a>
            </li>
            <li class="active">编辑报修用户
            </li>
        </ul>
        <div class="row">
            <div class="col-md-12">
                <div class="panel">
                    <h3>编辑完成!</h3>
                    <p>报修用户信息编辑保存成功。</p>
                    <p><a class="btn btn-primary " href="javascript:window.close()" role="button">关闭页面</a></p>
                </div>
            </div>
        </div>

    </div>

</div>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>

</body>
</html>
