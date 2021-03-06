<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_Repair_RepairState, App_Web_ju4faccj" enableEventValidation="false" %>

<!DOCTYPE html>

<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>指派维修负责人</title>
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
            <li><a href="/sysadmin/RepairNotAssignedList.aspx">未指派申请</a> </li>
            <li class="active">指派维修负责人 </li>
        </ul>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">报修状态设置</h3>
                    </div>
                    <div class="panel-body">

                           <asp:Panel ID="msgPanel" runat="server" Visible="false">
                               <p>
                                  <h4><asp:Literal ID="litMsg" runat="server"></asp:Literal></h4>
                               </p>
                          
                               </asp:Panel>

                        <asp:Panel ID="statePanel" runat="server">

                        <form class="form-horizontal" role="form" runat="server">

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputPassword3">
                                    报修状态：
                                </label>
                                <div class="col-sm-5">
                                    <asp:DropDownList ID="ddlState" CssClass="form-control" runat="server">

                                    </asp:DropDownList>

     
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputPassword3">
                                    描述：
                                </label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtNote" CssClass="form-control" TextMode="MultiLine" Rows="4" runat="server" Font-Size="18px" ForeColor="#2e6da4" >
                                    </asp:TextBox>
                                    <asp:HiddenField ID="hfLeader" runat="server" />
                                    <p class="help-block">
                                        待处理：着手解决待处理的报修申请时，请将报修申请设置为【处理中】，告知申请人报修已开始处理。<br />
                                        处理中：处理中的报修如果完成，请设置维修完成，报修人可以评价维修完成的申请
                                    </p>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <asp:Button ID="btnSubmit" CssClass="btn btn-primary " 
                                        runat="server" Text="保存设置" OnClick="btnSubmit_Click"/>
                                </div>
                            </div>

                        </form>
                       </asp:Panel>
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
                                    维修负责人：</label>
                                <asp:Literal ID="litLeader" runat="server"></asp:Literal>
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
    <script src="/control/plugin/autocomplete/jquery.autocomplete.js"></script>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
