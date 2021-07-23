<%@ page language="C#" autoeventwireup="true" inherits="Leader_N25175_Cost_N25175_Cost_Complete, App_Web_mzz22v24" enableEventValidation="false" %>

<!DOCTYPE html>
<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修详细</title>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/control/css/main.css" rel="stylesheet" type="text/css" />

    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/base.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/a_home.css" rel="stylesheet" type="text/css" />
</head>
<body class="overflow-hidden">
<div class="wrapper preload">
    <uc1:MainHeader ID="MainHeader1" runat="server" />
    <div class="container" style='margin-top: 55px'>
        <ul class="breadcrumb">
           <li><a href="/sysadmin/Dashboard.aspx">主页</a> </li>
            <li><a href="/sysadmin/N25175_Repair/RepairList.aspx">报修申请</a> </li>
            <li class="active">维修费用设置 </li>
        </ul>
        <div class="row">
            <div class="col-md-12">
                    <div class="jumbotron">
                      <h1>维修费用已成功提交!</h1>
                      <p>维修费用提交完成，如果维修费用包含了</p>
                      <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
                    </div>
            </div>
        </div>

    </div>

</div>
    <script src="/control/js/common.js" type="text/javascript"></script>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>

</body>
</html>
