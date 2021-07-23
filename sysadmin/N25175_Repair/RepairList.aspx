<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_Repair_RepairList, App_Web_ju4faccj" enableEventValidation="false" %>

<%@ Register Src="../MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>


<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修申请列表</title>
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
                    <li>报修申请 </li>
                </ul>

                <div class="panel">
                <ul class="nav nav-tabs">
                    <li id="state"><a href="RepairList.aspx">全部<span class="badge"><asp:Literal ID="litstate" runat="server"></asp:Literal></span></a></li>
                    <li id="state-1"><a href="RepairList.aspx?state=-1">未指派 <span class="badge">
                        <asp:Literal ID="litstate_1" runat="server" Text="0"></asp:Literal></span></a> </li>

                    <li id="state0"><a href="RepairList.aspx?state=0">待处理 <span class="badge">
                        <asp:Literal ID="litstate0" runat="server" Text="0"></asp:Literal></span></a> </li>
                    <li id="state1"><a href="RepairList.aspx?state=1">处理中 <span class="badge">
                        <asp:Literal ID="litstate1" runat="server" Text="0"></asp:Literal></span></a> </li>
                    <li id="state2"><a href="RepairList.aspx?state=2">驳回报修 <span class="badge">
                        <asp:Literal ID="litstate2" runat="server" Text="0"></asp:Literal></span></a> </li>
                    <li id="state3"><a href="RepairList.aspx?state=3">未评价 <span class="badge">
                        <asp:Literal ID="litstate3" runat="server" Text="0"></asp:Literal></span></a> </li>
                    <li id="state4"><a href="RepairList.aspx?state=4">已评价 <span class="badge">
                        <asp:Literal ID="litstate4" runat="server" Text="0"></asp:Literal></span></a> </li>
                    <li id="state-2"><a href="RepairList.aspx?state=-2">改派申请 <span class="badge">
                        <asp:Literal ID="litstate_2" runat="server" Text="0"></asp:Literal></span></a> </li>

                    <script language="javascript" type="text/javascript">

                        var state = '<%=state %>';
                        $(function () {
                            $("#state" + state).addClass("active");
                        });

                    </script>
                </ul>
                <div class="row   well-lg  ">
                    <form class="form-inline" action="RepairList.aspx">
                        <div class="form-group">
                            <label>
                                编号：</label>
                            <input name="r_index" type="text" class="form-control" />

                        </div>
                        <div class="form-group">
                            <label>
                                标题：</label>
                            <input name="title" type="text" class="form-control" />
                            <input name="state" value="<%=state %>" type="hidden" />
                        </div>
                        <div class="form-group">
                            <label>负责人：</label>
                            <input id="txtSearch" name="leader" type="text" class=" form-control" />
                            <script type="text/javascript">

                                $(function () {
                                    bindLeaderAutoComplete();
                                });

                                function bindLeaderAutoComplete() {
                                    $('#txtSearch').autocomplete({
                                        serviceUrl: '/ajax/N25175_Leader/N25175_Leader_SearchItem.ashx',

                                        formatResult: function (suggestion, currentValue) {
                                            var value = suggestion.value + ' /[编号：' + suggestion.l_number + ']';
                                            var pattern = '(' + $.Autocomplete.utils.escapeRegExChars(currentValue) + ')';
                                            return value.replace(new RegExp(pattern, 'gi'), '<strong>$1<\/strong>');
                                        },
                                        lookupFilter: function (suggestion, originalQuery, queryLowerCase) {
                                            var re = new RegExp('\\b' + $.Autocomplete.utils.escapeRegExChars(queryLowerCase), 'gi');
                                            return re.test(suggestion.value);
                                        },
                                        onSelect: function (suggestion) {
                                            $("#txtLeader").val(suggestion.l_number);
                                        }
                                    });
                                }

                            </script>

                        </div>
                        <div class="form-group">
                            <label>
                                优先级：</label>
                            <select class="form-control" name="priority">
                                <option value="">全部</option>
                                <option value="0">立刻</option>
                                <option value="1">优先</option>
                                <option value="2">普通</option>
                                <option value="3">允许暂缓</option>
                            </select>
                        </div>
                        <button type="submit" class="btn  btn-primary">
                            查询
                        </button>
                        <button type="button" class="btn  btn-primary" onclick="location.reload()">
                            <span class="glyphicon glyphicon-search"></span>
                            刷新
                        </button>
                    </form>
                </div>

                <div class=" table-responsive">

                    <asp:Repeater ID="rptData" runat="server" OnItemDataBound="rptRepair_ItemDataBound">
                        <HeaderTemplate>
                            <table id="dataView" class="table table-hover">
                                <thead class='table-heading'>
                                    <tr>
                                        <th>
                                            <input onclick="selectAll('dataView', this)" type="checkbox" />
                                        </th>
                                        <%--      <th>序号
                                            </th>--%>
                                        <th>编号 </th>

                                        <th>标题
                                        </th>
                                        <th>缓急程度
                                        </th>
                                        <th>维修负责人
                                        </th>
                                        <th>状态
                                        </th>
                                        <th></th>
                                        <th>申请日期
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
                                <%--     <td>
                                        <%#Eval("rownum") %>
                                    </td>--%>
                                <td>
                                    <%#Eval("r_index") %>
                                </td>
                                <td>
                                    <a href="RepairDetails.aspx?id=<%#Eval("id") %>"><%#Eval("r_title") %></a>
                                </td>

                                <td>
                                    <%#Repair_BLL.N25175_Repair_BLL.GetPriorityHtmlLabel((int)Eval("r_priority"))%>
                                </td>



                                <td>
                                    <%#Eval("l_name") %>
                                </td>
                                <td>
                                    <%#Repair_BLL.N25175_Repair_BLL.GetRepairStateHtmlLabel((int)Eval("r_state"))%>
                                </td>
                                <td>
                                    <asp:Literal ID="litEvaluation" runat="server"></asp:Literal>
                                    <%--
                                    <%#Repair_BLL.N25175_Repair_BLL.GetRepairStateHtmlLabel((int)Eval("r_state"))%>

                                   <a class="btn btn-default btn-xs" href="Evaluation.aspx"><span class="glyphicon glyphicon-star"
                                        aria-hidden="true"></span>评价</a>--%>
                                </td>
                                <td>
                                    <%#Eval("r_cdate") %>
                                </td>
                                <td>

                                    <a href="RepairState.aspx?id=<%#Eval("id") %>" class="btn btn-default btn-xs  " style="<%#(int)Eval("r_state") == 0 || (int)Eval("r_state") == 1 ?  String.Empty: "display:none"  %>">设置状态 </a>
                                    <a href="RepairAssigned.aspx?id=<%#Eval("id") %>" class="btn btn-default btn-xs " style="<%#(int)Eval("r_state") == -1 ?  String.Empty: "display:none"  %>">指派人员</a>
                                    <a href="/sysadmin/N25175_Cost/N25175_Cost_Create.aspx?id=<%#Eval("id") %>" class="btn btn-default btn-xs  " style="<%#(int)Eval("r_state") == 3 ||(int)Eval("r_state") == 4 ?  String.Empty: "display:none"  %>">费用登记</a>

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
                </script>
            </div>


        </div>
    </div>
 </div>
        <script src="/control/js/common.js" type="text/javascript"></script>
        <script src="/control/plugin/autocomplete/jquery.autocomplete.js"></script>
        <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
