<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_LeaderList, App_Web_tpbbsudx" enableEventValidation="false" %>

<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>维修负责人列表</title>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="/control/js/common.js" type="text/javascript"></script>
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
            <li>维修负责人 </li>
        </ul>
        <div class="panel">
        <a class="btn btn-success" href='LeaderCreate.aspx'>
            <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增负责人
        </a>
        <div class=" well-lg ">
            <form class="form-inline" action="LeaderList.aspx">
                <div class="form-group">
                    <label for="exampleInputName2">
                        姓名：</label>
                    <input type="text" name="l_name" class="form-control"/>   
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail2">
                        身份证号码：</label>
                    <input type="text" name="l_idNumber" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail2">
                        专长：</label>
                    <input type="text" name="l_specialty" class="form-control"/>
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
                            <th>编号</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>身份证号码</th>
                            <th>专长</th>
                            <th>创建日期</th>
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
                        <%#Eval("l_number")%>
                    </td>
                    <td>
                        <%#Eval("l_name")%>
                    </td>
                    <td>
                        <%#Eval("l_sex")%>
                    </td>
                    <td>
                        <%#Eval("l_idNumber")%>
                    </td>
                    <td>
                        <%#Eval("l_specialty")%>
                    </td>
                    <td>
                        <%#Eval("l_cdate")%>
                    </td>
                 
                    <td>
                        <a class="btn btn-default btn-xs " href="LeaderEdit.aspx?id=<%#Eval("id") %>" target="_blank" >编辑</a>
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
                        url: "LeaderList.aspx",
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
                        url: "LeaderList.aspx",
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
</body>
</html>
