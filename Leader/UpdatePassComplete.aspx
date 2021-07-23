<%@ page language="C#" autoeventwireup="true" inherits="Leader_UpdatePassComplete, App_Web_j22pxm1y" enableEventValidation="false" %>


<!DOCTYPE html>

<%@ Register Src="MyFooter.ascx" TagName="MyFooter" TagPrefix="uc2" %>
<%@ Register Src="MainHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>密码修改</title>
       <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/control/css/leader.css" rel="stylesheet" type="text/css" />
    <script src="/control/js/jquery.js" type="text/javascript"></script>

    <link href="/user/lib/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>   
<div class="wrapper p-top-0">    
<uc1:MyHeader ID="MyHeader1" runat="server" />
    <div class="main-container">
 
        <div class="container padding-md">
            <div class="col-md-12">
                <div class="panel">
                     <h3>修改成功!</h3>
                      <p>您已成功修改用户名与密码，请使用新的用户名密码登陆。</p>
                      <p><a class="btn btn-primary " href="/Leader/N25175_Repair/RepairList.aspx?state=0" role="button">查看待处理报修</a></p>
                </div>
            </div>
        </div>
   </div>

 <uc2:MyFooter ID="MyFooter1" runat="server" />
    
</div>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>


</body>
</html>