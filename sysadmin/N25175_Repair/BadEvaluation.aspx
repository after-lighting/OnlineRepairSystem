<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_Repair_BadEvaluation, App_Web_ju4faccj" enableEventValidation="false" %>

<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修评价</title>
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
            <li>报修评价</li>
        </ul>
        <div class="panel">
        <ul class="nav nav-tabs">
            <li id="state"><a href="BadEvaluation.aspx">全部</a> </li>
            <li id="state1"><a href="BadEvaluation.aspx?state=2">好评 <span class="badge">
                <asp:Literal ID="litHp" runat="server" Text="0"></asp:Literal></span></a> </li>
            <li id="state0"><a href="BadEvaluation.aspx?state=0">中评 <span class="badge">
                <asp:Literal ID="litZp" runat="server" Text="0"></asp:Literal></span></a> </li>
            <li id="state-1"><a href="BadEvaluation.aspx?state=-1">差评 <span class="badge">
                <asp:Literal ID="litCp" runat="server" Text="0"></asp:Literal></span></a> </li>
        </ul>
        <script language="javascript" type="text/javascript">
            var state = '<%=state %>';
            $(function () {
                $("#state" + state).addClass("active");
            });
        </script>

        <asp:Repeater ID="rptData" runat="server">
            <HeaderTemplate>
                <div class="messages-list">
            </HeaderTemplate>
            <ItemTemplate>
                <div class="row  one-list-message ">
                  
                    <div class="col-md-11">
                        <p>
                            <b><a href="/sysadmin/N25175_Repair/RepairDetails.aspx?id=<%#Eval("r_id") %>"><%#Eval("rowNum") %>、<%#Eval("r_title") %>。</a></b>
                        </p>
                        <p><%#Eval("r_eContent") %></p>
                        <p>
                            申请日期：<%#Eval("r_cdate") %>
                        </p>
                    </div>
                      <div class="col-md-1"> 

                        <%#Repair_BLL.N25175_Repair_BLL.GetEvaluationHtmlLabel((int)Eval("r_evaluation")) %>

                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate>
            </div>
            <div class=" well-sm" style="display: <%#rptData.Items.Count==0?"block":"none"%>">

                <div class="alert alert-info text-center" role="alert">
                    <h4>暂无差评 </h4>
                </div>
            </div>

            </FooterTemplate>
        </asp:Repeater>

        <div class="row">
            <div class=" col-sm-12">
                <asp:Literal ID="litPage" runat="server"></asp:Literal>
            </div>
        </div>
        </div>
    </div>
</div>
    <script language="javascript" type="text/javascript">

        function rd(key) {
            if (confirm('确定删除该项改派申请！')) {
                load('删除中。。。');
                $.ajax({
                    type: "POST",
                    url: "ReassignedList.aspx",
                    dataType: "json",
                    data: { "did": key },
                    success: function (result) {
                        unload();
                        if (result.state == 1) {
                            location.reload();
                        } else {
                            alert(result.data);
                        }
                    }
                });
            }
        }
    </script>
    <script src="/control/js/common.js" type="text/javascript"></script>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="/control/plugin/form/jquery.form.min.js" type="text/javascript"></script>
</body>
</html>
