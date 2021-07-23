<%@ page language="C#" autoeventwireup="true" inherits="user_UpdatePassComplete, App_Web_3bt5r4t4" enableEventValidation="false" %>


<!DOCTYPE html>

<%@ Register Src="~/user/MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>

<%@ Register src="~/user/MyFooter.ascx" tagname="MyFooter" tagprefix="uc2" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>密码修改</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/rp.css" rel="stylesheet" type="text/css" />
    <script src="/control/js/jquery.js" type="text/javascript"></script>

</head>
<body>     
 
   
 
    <div class="container">
   <uc1:MyHeader ID="MyHeader1" runat="server" />
        <div class="row">
            <div class="col-md-12">
                <div class="well">
                      <h3>修改成功!</h3>
                      <p>您已成功修改用户名与密码，请使用新的用户名密码登陆。</p>
                      <p><a class="btn btn-primary " href="/user/Default.aspx?state=0" role="button">查看待处理报修</a></p>
                </div>
            </div>
        </div>
         <uc2:MyFooter ID="MyFooter1" runat="server" />
    </div>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>

    
</body>
</html>