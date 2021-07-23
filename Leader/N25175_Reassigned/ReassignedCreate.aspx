<%@ page language="C#" autoeventwireup="true" inherits="Leader_N25175_Reassigned_ReassignedCreate, App_Web_d3bnqnmn" enableEventValidation="false" %>

<!DOCTYPE html>

<%@ Register Src="/leader/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<%@ Register Src="/leader/MyFooter.ascx" TagPrefix="uc1" TagName="MyFooter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>指派维修负责人</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/control/css/leader.css" rel="stylesheet" type="text/css" />

    <link href="/user/lib/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="wrapper p-top-0">
    <uc1:MainHeader ID="MainHeader1" runat="server" />
    <div class="main-container" >
<%--        <ul class="breadcrumb">
            <li><a href="/sysadmin/N25175_Reassigned/Dashboard.aspx">主页</a> </li>
            <li><a href="/sysadmin/N25175_Reassigned/ReassignedList.aspx">未指派申请</a> </li>
            <li class="active">指派维修负责人 </li>
        </ul>--%>
        <div class="container padding-md">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">改派申请</h3>
                    </div>
                    <div class="panel-body">

                        <asp:Panel ID="msgPanel" runat="server" Visible="false">
                            <p>
                                <h4>
                                    <asp:Literal ID="litMsg" runat="server"></asp:Literal></h4>
                            </p>

                        </asp:Panel>

                        <asp:Panel ID="statePanel" runat="server">

                            <form class="form-horizontal" role="form" runat="server">

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="inputPassword3">
                                        常见问题：
                                    </label>
                                    <div class="col-sm-8">

                                        <button id="rwd" type="button" class="btn btn-default">任务太多</button>
                                        <button id="mml" type="button" class="btn btn-default">能力范围之外</button>
                                        <script type="text/javascript">

                                            $(function () {


                                                $("#rwd").click(function () {

                                                    $("#txtWhy").val('我的报修任务太多了，没有时间去完成这个报修申请，请重新指派人员！');
                                                });

                                                $("#mml").click(function () {

                                                    $("#txtWhy").val('这个报修任务不是我的能力范围之内，我无法解决这个问题，请重新指派人员！');
                                                });

                                            });

                                        </script>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="inputPassword3">
                                        申请理由：
                                    </label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID="txtWhy" runat="server" Rows="5" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                        <p> 请填写理由，管理员将根据情况重新指派维修负责人</p>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary " runat="server" Text="提交申请" OnClick="btnSubmit_Click" />
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
        <uc1:MyFooter runat="server" ID="MyFooter" />
    </div>
</div>
    <script src="/control/plugin/autocomplete/jquery.autocomplete.js"></script>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
