<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_User_RepairUserList, App_Web_e3ngxtzn" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修用户列表</title>
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
            <li>报修用户 </li>
        </ul>
        <div class="panel">
        <ul class="nav nav-tabs">
            <li id="verify"><a href="RepairUserList.aspx">全部 </a></li>
            <li id="verify-1"><a href="RepairUserList.aspx?u_verify=-1">未审核 <span class="badge">
                <asp:Literal ID="litNotValid" runat="server" Text="0"></asp:Literal></span></a></li>
            <li id="verify0"><a href="RepairUserList.aspx?u_verify=0">审核未通过<span class="badge">
                <asp:Literal ID="litNo" runat="server" Text="0"></asp:Literal></span></a></li>
            <li id="verify1"><a href="RepairUserList.aspx?u_verify=1">审核通过 <span class="badge">
                <asp:Literal ID="litYes" runat="server" Text="0"></asp:Literal></span></a></li>

            <script language="javascript" type="text/javascript">
                var verify = '<%=verify %>';
                $(function () {
                    $("#verify" + verify).addClass("active");
                });
            </script>

            <li class="pull-right">
                <button class="btn btn-success" type="button" onclick="location.href='RepairUserCreate.aspx'">
                    <span class="glyphicon glyphicon-plus"></span>新增
                </button>
            </li>
        </ul>
        <div class=" well-lg ">
            <form class="form-inline" action="RepairUserList.aspx">
                <div class="form-group">
                    <label for="exampleInputName2">
                        姓名：
                    </label>
                    <input id="u_name" name="u_name" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail2">
                        身份证号码：
                    </label>
                    <input id="u_idNumber" name="u_idNumber" type="text" class="form-control" />
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail2">
                        手机号码：
                    </label>
                    <input id="u_phone" name="u_phone" type="text" class="form-control" />
                </div>
               
                <button type="submit" class="btn  btn-primary">
                    查询
                </button>
                <button type="button" class="btn  btn-primary" onclick="location.reload()">
                    <span class="glyphicon glyphicon-refresh"></span>
                    刷新
                </button>
            </form>
        </div>
        <asp:Repeater ID="rptData" runat="server">
            <HeaderTemplate>
                <table id="dataView" class="table table-hover ">
                    <thead>
                        <tr class='table-heading'>
                            <th>
                                <input onclick="selectAll('dataView', this)" type="checkbox" />
                            </th>
                            <th>序号
                            </th>
                            <th>姓名
                            </th>
                            <th>性别
                            </th>
                            <th>身份证号码
                            </th>
                            <th>手机号码
                            </th>
                            <th>&nbsp;
                            </th>
                            <th>注册日期
                            </th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <input type="checkbox" name='ck' value="<%#Eval("id") %>" />
                    </td>
                    <td>
                        <%#Eval("rowNum") %>
                    </td>
                    <td>
                        <%#Eval("u_name")%>
                    </td>
                    <td>
                        <%#Eval("u_sex")%>
                    </td>
                    <td>
                        <%#Eval("u_idNumber")%>
                    </td>
                    <td>
                        <%#Eval("u_phone")%>
                    </td>
                    <td>
                        <%# Repair_BLL.N25175_User_BLL.GetValidHtmlLabel((int)Eval("u_verify")) %>
                    </td>
                    <td>
                        <%#Eval("u_cdate")%>
                    </td>
                    <td>
                        <a class="btn btn-default btn-xs" href='RepairUserVerify.aspx?id=<%#Eval("id") %>'>审核</a>
                        <a class="btn btn-default btn-xs" href="RepairUserEdit.aspx?id=<%#Eval("id") %>"  target="_blank" >编辑</a>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody> </table>
            </FooterTemplate>
        </asp:Repeater>
        <div class="row">
            <div class=" col-md-2 well-lg ">
                <button type="button" class="btn btn-default btn-sm" onclick="removeList('dataView')">
                    删除选中</button>
                <%--      <button  type="button" class="btn btn-default btn-sm" onclick="removeList('dataView')">审核通过</button>--%>
            </div>
            <div class=" col-md-10  text-right">
                <asp:Literal ID="litPage" runat="server"></asp:Literal>
            </div>
        </div>
        </div>
        <script language="javascript" type="text/javascript">

            function rd(key) {
                if (confirm('确定删除该项！')) {
                    load('删除中。。。');
                    $.ajax({
                        type: "POST",
                        url: "RepairUserList.aspx",
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
                        url: "RepairUserList.aspx",
                        dataType: "json",
                        data: { "dlist": list.join(',') },
                        success: function (result) {
                            unload();
                            if (result.state == 1) {
                                alert(result.data);
                                location.reload();
                            } else {
                                alert(result.data);
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
        </script>
    </div>
</div>
    <script src="/control/js/common.js" type="text/javascript"></script>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
