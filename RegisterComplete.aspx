<%@ page language="C#" autoeventwireup="true" inherits="RegisterComplete, App_Web_s5u0mg1n" enableEventValidation="false" %>

<%@ Register src="MyFooter.ascx" tagname="MyFooter" tagprefix="uc2" %>
<%@ Register Src="MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>用户注册</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <link href="/control/css/rl.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Add.aspx -->
    <div class="container">
        <uc1:MyHeader ID="MyHeader1" runat="server" />
        <div class="row">
            <div class="col-md-12">
                <div class="well">
                    <h2>
                        您已成功注册！
                    </h2>
                    <p>
                        用户注册后需管理员审核通过后才能使用系统，我们将最快的速度验证您的注册信息
                    </p>
                    <p>
                        <a class="btn btn-primary btn-large" href="Default.aspx">返回登录页面</a>
                    </p>
                </div>
            </div>
        </div>
       <uc2:MyFooter ID="MyFooter1" runat="server" />
    </div>
    </form>
</body>
</html>
