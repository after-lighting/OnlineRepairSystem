<%@ page language="C#" autoeventwireup="true" inherits="Register, App_Web_s5u0mg1n" enableEventValidation="false" %>

<%@ Register Src="MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<%@ Register Src="MyFooter.ascx" TagName="MyFooter" TagPrefix="uc2" %>
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

    <link href="/user/lib/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <!-- Add.aspx -->
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
                        <ul id="myTab" class="nav nav-tabs">
                            <li><a href="Default.aspx">用户登录</a></li>
                            <li><a href="LeaderLogin.aspx">负责人登录</a></li>
                            <li class="active"><a href="#">用户注册</a></li>
                        </ul>
                        <div class="panel-body">
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active " id="userLogin">
                                    <div class="panel-body">
                                        <div class="row">
                                            <form class="form-horizontal col-md-7" id="from1" runat="server">
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-3 control-label">
                                                    姓名：</label>
                                                <div class="col-sm-7">
                                                    <asp:TextBox ID="txtu_name" CssClass="form-control" runat="server" MaxLength="10"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-2">
                                                    <asp:RequiredFieldValidator ID="rfvu_name" runat="server" ForeColor="Red" ErrorMessage="请填写姓名"
                                                        ControlToValidate="txtu_name"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-3 control-label">
                                                    用户名：</label>
                                                <div class="col-sm-7">
                                                    <asp:TextBox ID="txtu_user" runat="server" CssClass="form-control" MaxLength="20"></asp:TextBox>
                                                    <p class="help-block">
                                                        数字字母组成最少6位最多20位！</p>
                                                </div>
                                                <div class="col-sm-2">
                                                    <asp:RequiredFieldValidator ID="rfvu_user" runat="server" ForeColor="Red" ErrorMessage="请填写用户名！"
                                                        ControlToValidate="txtu_user" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="revu_user" ControlToValidate="txtu_user" ValidationExpression="^[a-zA-Z0-9_]{6,20}$"
                                                        runat="server" ErrorMessage="无效的格式" ForeColor="Red"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-3 control-label">
                                                    密码：</label>
                                                <div class="col-sm-7">
                                                    <asp:TextBox ID="txtu_pass" runat="server" CssClass="form-control" MaxLength="25"
                                                        TextMode="Password"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-2">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                                                        ErrorMessage="请填写密码" ControlToValidate="txtu_pass"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-3 control-label">
                                                    密码验证：
                                                </label>
                                                <div class="col-sm-7">
                                                    <asp:TextBox ID="txtu_pass2" runat="server" CssClass="form-control" MaxLength="25"
                                                        TextMode="Password"></asp:TextBox>
                                                    <p class="help-block">
                                                        重新输入填写的密码，验证两次密码是否输入一致！
                                                    </p>
                                                </div>
                                                <div class="col-sm-2">
                                                    <asp:CompareValidator ID="rfvu_pass2" runat="server" ForeColor="Red" ErrorMessage="两次密码输入不一致"
                                                        ControlToValidate="txtu_pass2" ControlToCompare="txtu_pass"></asp:CompareValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-3 control-label">
                                                    性别：</label>
                                                <div class="col-sm-9">
                                                    <label class="radio-inline">
                                                        <asp:RadioButton ID="txtu_nan" runat="server" Checked="true" GroupName="sex" />
                                                        男
                                                    </label>
                                                    <label class="radio-inline">
                                                        <asp:RadioButton ID="txtu_nv" runat="server" GroupName="sex" />
                                                        女
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-3 control-label">
                                                    生日：
                                                </label>
                                                <div class="col-sm-7">
                                                    <asp:TextBox ID="txtu_beiginDate" CssClass="form-control" runat="server" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-2">
                                                    <asp:RequiredFieldValidator ID="rfvu_beiginDate" runat="server" ErrorMessage="请填写生日"
                                                        ForeColor="Red" ControlToValidate="txtu_beiginDate"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-3 control-label">
                                                    手机号码：
                                                </label>
                                                <div class="col-sm-7">
                                                    <asp:TextBox ID="txtu_phone" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                                    <p class="help-block">
                                                        请填写注册人的正确手机号码！
                                                    </p>
                                                </div>
                                                <div class="col-sm-2">
                                                    <asp:RequiredFieldValidator ID="rfvu_phone" runat="server" ForeColor="Red" ErrorMessage="请填写手机号码！"
                                                        ControlToValidate="txtu_phone"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-3 control-label">
                                                    邮箱：</label>
                                                <div class="col-sm-7">
                                                    <asp:TextBox ID="txtu_email" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                                                    <p class="help-block">
                                                        请填写正确的有效的邮箱，可用于找回密码！
                                                    </p>
                                                </div>
                                                <div class="col-sm-2">
                                                    <asp:RequiredFieldValidator ID="rfvu_email" runat="server" ForeColor="Red" ErrorMessage="请填写电子邮箱"
                                                        ControlToValidate="txtu_email" BorderStyle="None" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="revu_email" runat="server" ErrorMessage="无效邮箱地址"
                                                        ControlToValidate="txtu_email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-3 control-label">
                                                    身份证号码：</label>
                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtu_idNumber" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-3 control-label">
                                                    所在地址：</label>
                                                <div class="col-sm-9">
                                                    <asp:TextBox ID="txtu_address" runat="server" MaxLength="255" CssClass="form-control"></asp:TextBox>
                                                    <p class="help-block">
                                                        工作单位地址或公司地址！
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-3 col-sm-9">
                                                    <asp:Button ID="btn_Submit" CssClass="btn btn-default btn-primary" runat="server"
                                                        Text="提交注册" OnClick="btnSubmit_Click" />
                                                </div>
                                            </div>
                                            </form>
                                            <aside class="con_r col-md-5 side_r">
                                                <div class="divide"><img src="/user/images/line.png"></div>
                                                <div class="txt">
                                                    <h3>
                                                        注册须知</h3>
                                                    <div style="padding: 0px 10px 40px 10px;">
                                                        <asp:Literal ID="litRegister" runat="server"></asp:Literal>
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
