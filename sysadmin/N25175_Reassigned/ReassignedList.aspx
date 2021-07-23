﻿<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_Reassigned_Reassigned_List, App_Web_baoizzzr" enableEventValidation="false" %>

<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>改派申请</title>
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
            <li>改派申请</li>
        </ul>
        <div class="panel">
        <ul class="nav nav-tabs">
            <li id="state"><a href="ReassignedList.aspx">全部</a> </li>
            <li id="state-1"><a href="ReassignedList.aspx?state=-1">未查看 <span class="badge">
                <asp:Literal ID="litState_1" runat="server" Text="0"></asp:Literal></span></a> </li>
            <li id="state0"><a href="ReassignedList.aspx?state=0">驳回 <span class="badge">
                <asp:Literal ID="litState0" runat="server" Text="0"></asp:Literal></span></a> </li>
            <li id="state1"><a href="ReassignedList.aspx?state=1">批准 <span class="badge">
                <asp:Literal ID="litState1" runat="server" Text="0"></asp:Literal></span></a> </li>
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
                    <div class="col-md-10">
                        <p>
                            <b><a href="/sysadmin/N25175_Repair/RepairDetails.aspx?id=<%#Eval("rd_rid") %>"><%#Eval("rowNum") %>、<%#Eval("r_title") %>。</a></b>
                        </p>
                        <p><%#Eval("rd_why") %></p>
                        <p>
                            申请日期：<%#Eval("rd_cdate") %> 状态：【<%#Repair_BLL.N25175_Reassigned_BLL.GetStateHtmlLabel((int)Eval("rd_state")) %>】
                        </p>
                    </div>
                    <div class="col-md-2">
                        <div class='mbp'>

                            <a href='ReassignedRejected.aspx?id=<%#Eval("rd_id") %>' class="btn btn-primary btn-xs" style="<%#(int)Eval("rd_state")==-1?String.Empty: "display:none" %>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>驳回</a>
                            <a href="ReassignedApproval.aspx?id=<%#Eval("rd_id") %>" class="btn btn-success btn-xs" style="<%#(int)Eval("rd_state")==-1?String.Empty: "display:none" %>"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>批准</a>

                        </div>
                    </div>
                </div>
              



            </ItemTemplate>
            <FooterTemplate>
            </div>
            <div class=" well-sm" style="display: <%#rptData.Items.Count==0?"block":"none"%>">

                <div class="alert alert-info text-center" role="alert">
                    <h4>暂无改派申请 </h4>
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
