<%@ page language="C#" autoeventwireup="true" inherits="user_MyLeave, App_Web_3bt5r4t4" enableEventValidation="false" %>

<%@ Register Src="MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<%@ Register Src="MyFooter.ascx" TagName="MyFooter" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head id="Head1" runat="server">
    <title>报修管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="/control/plugin/Highcharts/Highcharts.js" type="text/javascript"></script>
    <link href="/user/css/rp.css" rel="stylesheet" type="text/css" />

    <link href="/user/lib/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/index.css" rel="stylesheet" type="text/css"/>

</head>
<body>
    <div class="wrapper p-top-0">
        <uc1:MyHeader ID="MyHeader1" runat="server" />
        <div class="main-container">
            <div class="container padding-md">
                <div class="col-md-12">
                    <div class="panel">
                        <div class=" table-responsive">
                            <asp:Repeater ID="rptLeave" runat="server">
                                <HeaderTemplate>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>
                                                    序号
                                                </th>
                                                <th>
                                                    标题
                                                </th>
                                                <th>
                                                    联系人
                                                </th>
                                                <th>
                                                    联系电话
                                                </th>
                                                <th>
                                                    请假时间
                                                </th>
                                                <th>
                                                    请假理由
                                                </th>
                                                <th>
                                                    申请时间
                                                </th>
                                                <th>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%#Eval("rownum") %>
                                        </td>
                                        <td>
                                            <%#Eval("le_title") %>
                                        </td>
                                        <td>
                                            <%#Eval("u_name")%>
                                        </td>
                                        <td>
                                            <%#Eval("u_phone") %>
                                        </td>
                                        <td>
                                            <%#Eval("le_time1","{0:yyyy-MM-dd HH:mm}")%>&nbsp;到&nbsp;<%#Eval("le_time2","{0:yyyy-MM-dd HH:mm}") %>
                                        </td>
                                        <td style="max-width: 250px; overflow: hidden">
                                            <%#Eval("le_remark")%>
                                        </td>
                                        <td>
                                            <%#Eval("le_cdate","{0:yyyy-MM-dd HH:mm}") %>
                                        </td>
                                        <td>
                                            <a href="#" onclick="rd('<%#Eval("le_id")%>')" class="btn btn-default btn-xs"><span
                                                class="glyphicon glyphicon-remove" aria-hidden="true"></span>取消请假</a>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody> </table>
                                    <div class="jumbotron" style="display: <%#bool.Parse((rptLeave.Items.Count==0).ToString())?"block":"none"%>">
                                        <p>
                                            没有对应的请假申请</p>
                                    </div>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                        <asp:Literal ID="litPage" runat="server"></asp:Literal>
                    </div>
                </div>
            </div>
        </div>
        <uc2:MyFooter ID="MyFooter1" runat="server" />
    </div>

    <script type="text/javascript">
        function rd(leid) {
            if (confirm("确定要取消请假吗?")) {
                $.ajax({
                    type: "GET",
                    url: "MyLeave.aspx",
                    data: { deleteid: leid },
                    dataType: "json",
                    success: function (data) {
                        if (data.state == 1)
                            location.reload();
                        else
                            alert("取消失败");
                    }
                })
            } 
            
        }
    </script>
</body>
</html>