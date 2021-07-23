<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_ReassignedRejected_ReassignedRejected, App_Web_baoizzzr" enableEventValidation="false" %>

    <%@ Register src="/sysadmin/MainHeader.ascx" tagname="MainHeader" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修详细</title>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="/control/plugin/Highcharts/Highcharts.js" type="text/javascript"></script>
    <link href="/control/plugin/raty/jquery.raty.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/raty/jquery.raty.js" type="text/javascript"></script>
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
            <li><a href="ReassignedList.aspx">改派申请</a> </li>
            <li class="active">驳回 </li>
        </ul>

                <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            改派负责人</h3>
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal" runat="server" role="form">
                      
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="inputPassword3">
                                申请人：
                            </label>
                            <div class="col-sm-5">
                        
                              <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ReadOnly="true" Text="王佳伟" Font-Size="12" ></asp:TextBox>
                            </div>
                     
                        </div>

               <div class="form-group">
                            <div class="col-sm-5 col-sm-offset-2">
                                <button id="wwx" type="button" class="btn btn-default">人手不足</button>
                                <button id="clz" type="button" class="btn btn-default">无法代替</button>
                            </div>
                                <script type="text/javascript">
                                    $(function () {
                                        $("#wwx").click(function () {
                                            $("#txtWhy").val('人手不足，没有其他的人员可以指派，只能还是你去接手。');
                                        });

                                        $("#clz").click(function () {
                                            $("#txtWhy").val('这个工作没有代替的人员，只能还是你去接手。');
                                        });

                                   
                                    });
                               </script>
                        </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputPassword3">
                                   驳回原因：
                                </label>
                                <div class="col-sm-7">
                         
                                    <asp:TextBox ID="txtWhy" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>

                                    <p>申请原因：<asp:Literal ID="litWhy" runat="server"></asp:Literal></p>
                                </div>
                                <div class="col-sm-3">

                                    <asp:RequiredFieldValidator ID="rfvLeader" runat="server" ErrorMessage="填写驳回原因" ForeColor="Red" ControlToValidate="txtWhy"></asp:RequiredFieldValidator>
                                   
                                </div>

                            </div>
               
                   
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:Button ID="btnSubmit" runat="server" Text="确定驳回" CssClass="btn btn-primary " OnClick="btnSubmit_Click" />
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

      
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">报修申请</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form">
                            <div class="form-group ">
                                <label for="txtn_date">
                                    标题：</label>
                                <asp:Literal ID="litTitle" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_date">
                                    优先级：</label>
                                <span class="label  ">

                                    <asp:Literal ID="litPriority" runat="server"></asp:Literal></span>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_date">
                                    状态：</label>
                                <span class="label  ">

                                    <asp:Literal ID="litSate" runat="server"></asp:Literal></span>
                            </div>

                            <div class="form-group ">
                                <label for="txtn_content">
                                    联系人：</label>
                                <asp:Literal ID="litName" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_content">
                                    联系电话：</label>
                                <asp:Literal ID="litPhone" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_content">
                                    报修地址：</label>
                                <asp:Literal ID="litAddress" runat="server"></asp:Literal>
                            </div>

                            <div class="form-group ">
                                <label for="txtn_content">
                                    报修详细：</label>
                                <asp:Literal ID="litDetails" runat="server"></asp:Literal>
                            </div>

                            <div class="form-group ">
                                <label for="txtn_content">照片：</label>
                                <asp:Repeater ID="rptPhoto" runat="server">
                                    <ItemTemplate>
                                        <img src="<%#Eval("rp_path") %>" class="img-responsive" alt="Responsive image">
                                    </ItemTemplate>

                                    <FooterTemplate>
                                        <asp:Label ID="lblEmpty" Text="无照片！" runat="server" Visible="<%#bool.Parse((rptPhoto.Items.Count==0).ToString())%>"></asp:Label>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>