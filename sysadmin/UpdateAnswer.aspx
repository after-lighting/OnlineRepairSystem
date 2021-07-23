<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_UpdateAnswer, App_Web_q4lt4dj0" enableEventValidation="false" %>
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
                                一个神奇的数字：<asp:RequiredFieldValidator ID="rfvPass" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtPass"></asp:RequiredFieldValidator></label>
                            <br />
                            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" CssClass="form-control form_datetime" placeholder=""
                                MaxLength="255"></asp:TextBox>
                        </div>


                        <div class="form-group ">
                            <label for="txtn_content">
                                新的答案
                            <asp:RequiredFieldValidator ID="rfvr_linkMan" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtNewPass"></asp:RequiredFieldValidator></label>
                            <asp:TextBox ID="txtNewPass" runat="server" MaxLength="50" TextMode="Password" placeholder=""
                                CssClass="form-control form_datetime"></asp:TextBox>
                        </div>
                        <div class="form-group ">
                            <label for="txtn_content">
                                再次输入
                            <asp:RequiredFieldValidator ID="rfNewPass2" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtNewPass2"></asp:RequiredFieldValidator></label>
                            <asp:CompareValidator ID="rcNewPass2" runat="server" ForeColor="Red" ErrorMessage="前后输入不一致"
                                ControlToValidate="txtNewPass2" ControlToCompare="txtNewPass"></asp:CompareValidator>
                            <asp:TextBox ID="txtNewPass2" runat="server" MaxLength="50" TextMode="Password" placeholder=""
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

