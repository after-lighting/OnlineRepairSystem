<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_UpdatePass, App_Web_q4lt4dj0" enableEventValidation="false" %>
<%@ Register Src="MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>系统管理员密码修改</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/control/css/leader.css" rel="stylesheet" type="text/css" />

    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/base.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/a_home.css" rel="stylesheet" type="text/css" />
</head>
<body class="overflow-hidden">
<div class="wrapper preload">
     <uc1:MainHeader ID="MainHeader1" runat="server" />
    <div class="container" style=' margin-top:55px'>
       
        <div class="row">
            <div class="col-xs-12">
                <div class="panel">
                    <form id="createNote" runat="server">
                        <div class="form-group ">
                            <label for="txtn_date">
                                用户名
                            <asp:RequiredFieldValidator ID="rfvr_title" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtUser"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="txtUser" runat="server" CssClass="form-control form_datetime" placeholder="请填写登陆用户名"
                                 MaxLength="255"></asp:TextBox>
                        </div>
                        <div class="form-group ">
                            <label for="txtn_date">
                                密码<asp:RequiredFieldValidator ID="rfvPass" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtPass"></asp:RequiredFieldValidator></label>
                            <br />
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="form-control form_datetime" placeholder="填写登陆密码"
                                MaxLength="255"></asp:TextBox>
                        </div>

               
                         <div class="form-group ">
                            <label for="txtn_content">
                                新用户名
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtNewUser"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="revu_user" ControlToValidate="txtNewUser" ValidationExpression="^[a-zA-Z0-9_]{5,20}$"
                                runat="server" ErrorMessage="无效的格式" ForeColor="Red"></asp:RegularExpressionValidator></label>
                            <asp:TextBox ID="txtNewUser" runat="server" MaxLength="50"  placeholder="填写新的用户名"
                                CssClass="form-control form_datetime"></asp:TextBox>
                              <p class="help-block">
                                数字字母组成最少5位最多20位！</p>
                        </div>


                        <div class="form-group ">
                            <label for="txtn_content">
                                新密码
                            <asp:RequiredFieldValidator ID="rfvr_linkMan" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtNewPass"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="txtNewPass" runat="server" MaxLength="50" TextMode="Password" placeholder="填写新的密码"
                                CssClass="form-control form_datetime"></asp:TextBox>
                        </div>
                        <div class="form-group ">
                            <label for="txtn_content">
                                新密码验证
                            <asp:RequiredFieldValidator ID="rfNewPass2" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtNewPass2"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="txtNewPass2" runat="server" MaxLength="50" TextMode="Password" placeholder="再次输入新的密码"
                                CssClass="form-control form_datetime"></asp:TextBox>
                        </div>
                        <div class=" form-group">
                            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server"
                                Text="保存修改" OnClick="btnSubmit_Click" />
                        </div>
                    </form>
                </div>
            </div>
       
        </div>
    

    </div>
    </div>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
