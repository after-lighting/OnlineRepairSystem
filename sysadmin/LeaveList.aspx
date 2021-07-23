<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_LeaveList, App_Web_q4lt4dj0" enableEventValidation="false" %>

<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>


<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>请假申请</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

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
        <div class="row">
            <div class=" col-md-12">
                <ul class="breadcrumb">
                    <li><a href="/sysadmin/Dashboard.aspx">主页</a> </li>
                    <li>请假申请 </li>
                </ul>
                <div class="panel">
                <div class="row   well-lg  ">
                    <form class="form-inline" action="LeaveList.aspx">                     
                        <div class="form-group">
                            <label>
                                标题：</label>
                            <input name="title" type="text" value="<%=Request["title"]%>" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label>联系人：</label>
                            <input id="name" name="name" value="<%=Request["name"]%>" type="text" class=" form-control" />
                        </div>                        
                        <button type="submit" class="btn  btn-primary">
                            查询
                        </button>
                        <button type="button" class="btn  btn-primary" onclick="location.href='/sysadmin/LeaveList.aspx'">
                            <span class="glyphicon glyphicon-search"></span>
                            刷新
                        </button>
                    </form>
                </div>

                <div class=" table-responsive">

                    <asp:Repeater ID="rptData" runat="server">
                        <HeaderTemplate>
                            <table id="dataView" class="table table-hover">
                                <thead class='table-heading'>
                                    <tr>
<%--                                        <th>
                                            <input onclick="selectAll('dataView', this)" type="checkbox" />
                                        </th>--%>
                                        <th>序号</th>
                                        <th>标题</th>
                                        <th>联系人</th>
                                        <th>联系电话</th>
                                        <th>请假时间</th>
                                        <th>请假理由</th>
                                        <th>申请时间</th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>

<%--                                <td>

                                    <input type="checkbox" name='ck' value="<%#Eval("le_id") %>" />
                                </td>--%>
                                <td>
                                    <%#Eval("rownum") %>
                                </td>
                                <td>
                                    <%#Eval("le_title")%>
                                </td>

                                <td>
                                    <%#Eval("u_name")%>
                                </td>
                                <td>
                                    <%#Eval("u_phone") %>
                                </td>
                                <td>
                                   <%#Eval("le_time1","{0:yyyy-MM-dd HH:mm}")%>&nbsp;到&nbsp;<%#Eval("le_time2","{0:yyyy-MM-dd HH:mm}")%>
                                </td>
                                <td style="max-width:250px;overflow:hidden;">
                                    <%#Eval("le_remark")%>
                                </td>
                                <td>
                                    <%#Eval("le_cdate","{0:yyyy-MM-dd HH:mm}") %>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                                </table>
                         
                                <div class="alert alert-success text-center" role="alert" style="display: <%#bool.Parse((rptData.Items.Count==0).ToString())?"block":"none"%>">
                                    <h4>暂无数据 </h4>
                                </div>

                        </FooterTemplate>
                    </asp:Repeater>
                </div>
                </div>


                <div class="row">
                    <div class=" col-md-2 well-lg ">
                        <%--<button type="button" class="btn btn-default btn-sm" onclick="removeList('dataView')">
                            删除选中</button>--%>
                    </div>
                    <div class=" col-md-10  text-right">
                        <asp:Literal ID="litPage" runat="server"></asp:Literal>
                    </div>
                </div>
<%--
                <script language="javascript" type="text/javascript">

                    function rd(key) {
                        if (confirm('确定删除该项！')) {
                            load('删除中。。。');
                            $.ajax({
                                type: "POST",
                                url: "RepairList.aspx",
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

                    function removeList(table) {
                        if (confirm('确定删除所有选择！')) {
                            var row = $("#" + table).find("input:checked[name='ck']")
                            var list = new Array();
                            var size = row.size();
                            for (var index = 0; index < size; index++) {
                                list.push(row.eq(index).val());
                            }
                            load('删除中。。。');
                            $.ajax({
                                type: "POST",
                                url: "RepairList.aspx",
                                dataType: "json",
                                data: { "dlist": list.join(',') },
                                success: function (result) {
                                    unload();
                                    if (result.state == 1) {
                                        alert(result.data);
                                        location.reload();
                                    }
                                }
                            });

                        }
                    }

                    function selectAll(table, obj) {
                        var ck = $(obj).is(':checked')
                        var row = $("#" + table).find("input:checkbox[name='ck']")
                        var size = row.size();

                        for (var index = 0; index < size; index++) {
                            if (ck)
                                row.eq(index).get(0).checked = true;
                            else
                                row.eq(index).get(0).checked = false;
                        }
                    }
                </script>--%>
            </div>


        </div>
    </div>
</div>
        <script src="/control/js/common.js" type="text/javascript"></script>
        <script src="/control/plugin/autocomplete/jquery.autocomplete.js"></script>
        <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>