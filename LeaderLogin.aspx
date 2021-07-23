<%@ page language="C#" autoeventwireup="true" inherits="Order_admin_index_LeaderLogin, App_Web_s5u0mg1n" enableEventValidation="false" %>

<%@ Register Src="MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<%@ Register Src="MyFooter.ascx" TagName="MyFooter" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <link href="/control/css/rl.css" rel="stylesheet" type="text/css" />

    <link href="/user/lib/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>

    <div class="wrapper p-top-0">
        <uc1:MyHeader ID="MyHeader1" runat="server" />

        <!-------------头部导航------------------>
        <nav class="top-nav">
            <div class="container">
                <div class="nav-header">
                    <!--移动模式右侧按钮-->
                    <ul class="nav-right-btn pull-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-cog"></i></a>
                            <ul class="dropdown-menu  pull-right">
                                <li>
                                    <a href="/user/Repair.aspx">申请报修</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="http://www.25175.net/" target="_Blank">技术支持</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!--logo-->
                    <a href="#" class="brand">
                        <img src="/user/images/logo.png">网上报修平台
                    </a>
                </div>
                <div class="nav-container">
                    <ul class="navbar-right">
                        <li>
                            <a href="/sysadmin/Login.aspx">
                                <i class="glyphicon glyphicon-send  m-right-xs"></i>
                                管理员登录
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav><!--/头部导航-->
        <div class="main-container">
            <div class="container padding-md">
                <div class=" panel panel-default">
                    <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li><a href="Default.aspx">用户登录</a></li>
                            <li class="active"><a href="LeaderLogin.aspx">负责人登录</a></li>
                            <li><a href="Register.aspx">用户注册</a></li>
                        </ul>
                        <div class="panel-body">
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active " id="userLogin">
                                    <div class="panel-body">
                                        <div class="row">
                                            <form class="form-horizontal col-md-7" id="from1" runat="server">
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="inputEmail3">
                                                    用户名：
                                                    <asp:RequiredFieldValidator ID="rfvtxtUser" runat="server" ForeColor="Red" ErrorMessage="*"
                                                        ControlToValidate="txtUser"></asp:RequiredFieldValidator></label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtUser" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="inputPassword3">
                                                    密码：
                                                    <asp:RequiredFieldValidator ID="rfvtxtPass" runat="server" ForeColor="Red" ErrorMessage="*"
                                                        ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                                                </label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtPass" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="inputPassword3">
                                                    验证码：
                                                    <asp:RequiredFieldValidator ID="rfvPass" runat="server" ForeColor="Red" ErrorMessage="*"
                                                        ControlToValidate="txtValid"></asp:RequiredFieldValidator>
                                                </label>
                                                <div class="col-sm-3">
                                                    <asp:TextBox ID="txtValid" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-7">
                                                    <img id="ImageCheck" src="ValidCode.aspx" alt='王莹' />
                                                    <script language="javascript" type="text/javascript">
                                                        function newGuid() {
                                                            var guid = "";
                                                            for (var i = 1; i <= 32; i++) {
                                                                var n = Math.floor(Math.random() * 16.0).toString(16);
                                                                guid += n;
                                                                if ((i == 8) || (i == 12) || (i == 16) || (i == 20))
                                                                    guid += "-";
                                                            }
                                                            return guid;
                                                        }
                                                        function ChangeCode() {
                                                            var myImg = document.getElementById("ImageCheck");
                                                            myImg.src = "ValidCode.aspx?flag=" + newGuid();
                                                            return false;
                                                        }
                                                    </script>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <div class="checkbox">
                                                        <label>
                                                            <asp:CheckBox ID="cbSaveLoginInfo" runat="server" />
                                                            保存登录信息
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <asp:Button ID="btnSubmit" CssClass="btn btn-default btn-primary" runat="server"
                                                        Text="负责人登录" OnClick="btnSubmit_Click" />
                                                </div>
                                            </div>
                                            </form>
                                            <aside class="con_r col-md-5 side_r">
                                                <div class="divide"><img src="/user/images/line.png" /></div>
                                                    <div class="code">
                                                        <h4 class="m-bottom-sm">手机扫描二维码登录</h4>
                                                        <div>
                                                            <asp:Image ID="imgRcode" runat="server" CssClass="img-responsive" />
                                                        </div>
                                                    </div>
                                             </aside>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <uc2:MyFooter ID="MyFooter1" runat="server" />
    </div>
</body>
</html>
