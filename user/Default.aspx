<%@ page language="C#" autoeventwireup="true" inherits="RepairPerson_Default, App_Web_3bt5r4t4" enableEventValidation="false" %>

<%@ Register Src="MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<%@ Register Src="MyFooter.ascx" TagName="MyFooter" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                        <ul class="nav nav-tabs">
                            <li id="state"><a href="Default.aspx">全部<span class="badge"><asp:Literal ID="litstate"
                                runat="server"></asp:Literal></span></a></li>
                            <li id="state-1"><a href="Default.aspx?state=-1">未指派 <span class="badge">
                                <asp:Literal ID="litstate_1" runat="server" Text="0"></asp:Literal></span></a>
                            </li>
                            <li id="state0"><a href="Default.aspx?state=0">待处理 <span class="badge">
                                <asp:Literal ID="litstate0" runat="server" Text="0"></asp:Literal></span></a>
                            </li>
                            <li id="state1"><a href="Default.aspx?state=1">处理中 <span class="badge">
                                <asp:Literal ID="litstate1" runat="server" Text="0"></asp:Literal></span></a>
                            </li>
                            <li id="state2"><a href="Default.aspx?state=2">驳回报修 <span class="badge">
                                <asp:Literal ID="litstate2" runat="server" Text="0"></asp:Literal></span></a>
                            </li>
                            <li id="state3"><a href="Default.aspx?state=3">未评价 <span class="badge">
                                <asp:Literal ID="litstate3" runat="server" Text="0"></asp:Literal></span></a>
                            </li>
                            <li id="state4"><a href="Default.aspx?state=4">已评价 <span class="badge">
                                <asp:Literal ID="litstate4" runat="server" Text="0"></asp:Literal></span></a>
                            </li>
                            <li id="state-2"><a href="Default.aspx?state=-2">改派申请 <span class="badge">
                                <asp:Literal ID="litstate_2" runat="server" Text="0"></asp:Literal></span></a>
                            </li>
                            <script language="javascript" type="text/javascript">

                                var state = '<%=state %>';
                                $(function () {
                                    $("#state" + state).addClass("active");
                                });

                            </script>
                        </ul>
                        <div class=" table-responsive">
                            <asp:Repeater ID="rptRepair" runat="server" OnItemDataBound="rptRepair_ItemDataBound">
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
                                                    缓急程度
                                                </th>
                                                <th>
                                                    维修负责人
                                                </th>
                                                <th>
                                                    状态
                                                </th>
                                                <th>
                                                </th>
                                                <th>
                                                    申请日期
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
                                            <a href="RepairDetails.aspx?id=<%#Eval("id") %>">
                                                <%#Eval("r_title") %></a>
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
                                            <%--     <%#Repair_BLL.N25175_Repair_BLL.GetRepairStateHtmlLabel((int)Eval("r_state"))%>

                                   <a class="btn btn-default btn-xs" href="Evaluation.aspx"><span class="glyphicon glyphicon-star"
                                        aria-hidden="true"></span>评价</a>--%>
                                        </td>
                                        <td>
                                            <%#Eval("r_cdate") %>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody> </table>
                                    <div class="jumbotron" style="display: <%#bool.Parse((rptRepair.Items.Count==0).ToString())?"block":"none"%>">
                                        <p>
                                            没有对应的报修申请</p>
                                    </div>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                        <asp:Literal ID="litPage" runat="server"></asp:Literal>
                    </div>
                </div>
            </div>
            <div class="container padding-md">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="clearfix">
                                <%--      <div class="pull-left">--%>
                                <h3 class="panel-title">
                                    最近30天维修任务</h3>
                                <%--       </div>--%>
                                <%--    <div class="pull-right">
                                <a class="btn btn-xs btn-default" href='RepairList.aspx'>
                                    更多</a>
                            </div>--%>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div id="yxj">
                            </div>
                            <script type="text/javascript" language="javascript">
                            $(function () {

                                var colors = Highcharts.getOptions().colors,
                                categories = ['立刻', '优先', '普通', '允许暂缓'],
                                name = 'Browser brands',
                                data = <%=RepairChart() %>;



                                // Build the data arrays
                                var browserData = [];
                                var versionsData = [];
                                for (var i = 0; i < data.length; i++) {

                                    // add browser data
                                    browserData.push({
                                        name: categories[i],
                                        y: data[i].y,
                                        color: data[i].color
                                    });

                                    // add version data
                                    for (var j = 0; j < data[i].drilldown.data.length; j++) {
                                        var brightness = 0.2 - (j / data[i].drilldown.data.length) / 5;
                                        versionsData.push({
                                            name: data[i].drilldown.categories[j],
                                            y: data[i].drilldown.data[j],
                                            color: Highcharts.Color(data[i].color).brighten(brightness).get()
                                        });
                                    }
                                }

                                // Create the chart
                                $('#yxj').highcharts({
                                    chart: {
                                        type: 'pie'
                                    },
                                    title: {
                                        text: ''
                                    },
                                    yAxis: {
                                        title: {
                                            text: 'Total percent market share'
                                        }
                                    },
                                    plotOptions: {
                                        pie: {
                                            shadow: false,
                                            center: ['50%', '50%']
                                        }
                                    },
                                    tooltip: {
                                        valueSuffix: '%'
                                    },
                                    series: [{
                                        name: '优先级',
                                        data: browserData,
                                        size: '60%',
                                        dataLabels: {
                                            formatter: function () {
                                                return this.y > 5 ? this.point.name : null;
                                            },
                                            color: 'white',
                                            distance: -30
                                        }
                                    }, {
                                        name: '报修状态',
                                        data: versionsData,
                                        size: '80%',
                                        innerSize: '60%',
                                        dataLabels: {
                                            formatter: function () {
                                                // display only if larger than 1
                                                return this.y > 1 ? '<b>' + this.point.name + ':</b> ' + this.y + '%' : null;
                                            }
                                        }
                                    }]
                                });
                            });
                        
                        
                            </script>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <%-- <div class="clearfix">
                            <div class="pull-left">--%>
                            <h3 class="panel-title">
                                7日内的申请和完成</h3>
                            <%--</div>
                            <div class="pull-right">
                                <a class="btn btn-xs btn-default"  href='ChartRepairAndCompletion.aspx'>
                                    更多</a>
                            </div>
                        </div>--%>
                        </div>
                        <div class="panel-body">
                            <div id="container">
                            </div>
                            <script type="text/javascript" language="javascript">
                            $(function () {
                                $('#container').highcharts({
                                    chart: {
                                        type: 'line'
                                    },
                                    title: {
                                        text: '7日报修申请'
                                    },
                                    subtitle: {
                                        text: '网上报修管理系统'
                                    },
                                    xAxis: {
                                        categories: [<%=dayString %>]
                                    }, 
                                    yAxis: {
                                        title: {
                                            text: '项'
                                        }
                                    },
                                    tooltip: {
                                        enabled: false,
                                        formatter: function () {
                                            return '<b>' + this.series.name + '</b><br>' + this.x + ': ' + this.y + '°C';
                                        }
                                    },
                                    plotOptions: {
                                        line: {
                                            dataLabels: {
                                                enabled: true
                                            },
                                            enableMouseTracking: false
                                        }
                                    },
                                    series: [{
                                        name: '申请维修',
                                        data: [<%=dayValueString%>]
                                    }]
                                });
                            });
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>

          
        <uc2:MyFooter ID="MyFooter1" runat="server" />
    </div>
</body>
</html>
