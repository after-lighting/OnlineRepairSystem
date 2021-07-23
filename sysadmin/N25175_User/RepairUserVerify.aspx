<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_User_RepairUserVerify, App_Web_e3ngxtzn" enableEventValidation="false" %>

<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修用户审核</title>
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
            <li><a href="/sysadmin/N25175_User/RepairUserList.aspx">报修用户</a> </li>
			<li class="active">报修用户注册审核</li>
		</ul>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title"> 报修用户审核</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <label class="col-md-2 ">
                        姓名：</label>
                    <div class="col-md-10">
                        <asp:Literal ID="litName" runat="server"></asp:Literal>
                    </div>
                </div>
                  <div class="row">
                    <label  class="col-md-2 ">
                        性别：</label>
                    <div class="col-md-10">
                        <asp:Literal ID="litSex" runat="server"></asp:Literal>
                    </div>
                </div>
                 <div class="row">
                    <label  class="col-md-2 ">
                        生日：</label>
                    <div class="col-md-10">
                        <asp:Literal ID="litDate" runat="server"></asp:Literal>
                    </div>
                </div> 
                  <div class="row">
                    <label  class="col-md-2 ">
                        手机号码：</label>
                    <div class="col-md-10">
                        <asp:Literal ID="litPhone" runat="server"></asp:Literal>
                    </div>
                </div>
                  <div class="row">
                    <label  class="col-md-2 ">
                        邮箱：</label>
                    <div class="col-md-10">
                        <asp:Literal ID="litEmail" runat="server"></asp:Literal>
                    </div>
                </div>
                  <div class="row">
                    <label  class="col-md-2 ">
                        身份证号码：</label>
                    <div class="col-md-10">
                        <asp:Literal ID="litIDNumber" runat="server"></asp:Literal>
                    </div>
                </div>  
                  <div class="row">
                    <label  class="col-md-2 ">
                        所在地址：</label>
                    <div class="col-md-10">
                        <asp:Literal ID="litAddress" runat="server"></asp:Literal>
                    </div>
                </div> 
                 <div class="row">
                    <div class="col-md-offset-2 col-md-10">

                        <form runat="server" id="verify">
                            <asp:Button ID="btnSubmit"
                             CssClass="btn btn-default btn-success"
                             runat="server" 
                             Text="通过" onclick="btnSubmit_Click" />

                            <asp:Button ID="btnNotSubmit"
                             CssClass="btn btn-default btn-primary"
                             runat="server" 
                             Text="未通过" onclick="btnNotSubmit_Click"  />
                         </form>

                    </div>
                </div>
            
            </div>
        </div>
    </div>
</div>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>

</body>
</html>
