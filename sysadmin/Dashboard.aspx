<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_Dashboard, App_Web_q4lt4dj0" enableEventValidation="false" %>

<%@ Register Src="MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修管理平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="/control/plugin/Highcharts/Highcharts.js" type="text/javascript"></script>
    <link href="/control/css/main.css" rel="stylesheet" type="text/css" />
    
    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/base.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/a_home.css" rel="stylesheet" type="text/css" />
</head>
<body class="overflow-hidden">
<div class="wrapper preload">
    <uc1:MainHeader ID="MainHeader1" runat="server" />
    <form id="form1" runat="server">
    <div class="container" style='margin-top: 55px'>
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="clearfix">
                            <div class="pull-left">
                                <h3 class="panel-title">
                                    未指派报修</h3>
                            </div> 
                            <div class="pull-right">
                                <a class="btn btn-xs btn-default" href='/sysadmin/N25175_Repair/RepairList.aspx?state=-1'>更多</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
              
                            <a class="btn btn-lg btn-danger" href="/sysadmin/N25175_Repair/RepairList.aspx?priority=0&state=-1">
                                <span class="glyphicon glyphicon-flash" ></span>
                            <br />
                            立刻(<asp:Literal ID="litLiKE" runat="server"  Text="0"></asp:Literal>) </a>

                            <a class="btn btn-lg btn-warning " href="/sysadmin/N25175_Repair/RepairList.aspx?priority=1&state=-1"><span
                            class="glyphicon glyphicon-pushpin" ></span>
                            <br />
                            优先(<asp:Literal ID="litYouXian" runat="server"  Text="0"></asp:Literal>) </a>

                            <a class="btn btn-lg btn-primary " href="/sysadmin/N25175_Repair/RepairList.aspx?priority=2&state=-1"><span
                            class="glyphicon glyphicon-tree-deciduous" ></span>
                            <br />
                            普通(<asp:Literal ID="litPuTong" runat="server"  Text="0"></asp:Literal>) </a>

                            <a class="btn btn-lg btn-info " href="/sysadmin/N25175_Repair/RepairList.aspx?priority=3&state=-1"><span
                            class="glyphicon glyphicon-hourglass" ></span>
                            <br />
                            允许暂缓(<asp:Literal ID="litZhanHuan" runat="server"  Text="0"></asp:Literal>) </a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="clearfix">
                            <div class="pull-left">
                                <h3 class="panel-title">
                                    报修须知</h3>
                            </div>
                            <div class="pull-right">
                                <a class="btn btn-xs btn-default" href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=bxxz">
                                    修改</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <asp:Literal ID="litRepairNotice" runat="server"></asp:Literal>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
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
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="clearfix">
                            <div class="pull-left">
                                <h3 class="panel-title">
                                    维修差评</h3>
                            </div>
                            <div class="pull-right">
                                <a class="btn btn-xs btn-default" href='/sysadmin/N25175_Repair/BadEvaluation.aspx?state=-1'>
                                    更多</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">


                        <asp:Repeater ID="rptBadEvaluation" runat="server">

                            <ItemTemplate>

                                
                        <div class="row  tow-list-message ">
                            <div class="col-md-10">
                                <p>
                                    <b><a href="/sysadmin/N25175_Repair/RepairDetails.aspx?id=<%#Eval("r_id") %>"><%#Eval("r_title") %></a></b>
                                </p>
                                <p>
                                    <%#Eval("r_eContent") %>
                                </p>
                            </div>
                            <div class="col-md-2">
                                <%#((DateTime)Eval("r_edate")).ToString("yyyy-MM-dd") %><br />
                             
                            </div>
                        </div>

                            </ItemTemplate>

                        </asp:Repeater>

                      

              <%--          <div class="row  tow-list-message ">
                            <div class="col-md-10">
                                <p>
                                    <b><a href="RepairDetails.aspx">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a></b>
                                </p>
                                <p>
                                    是中央主机坏了，需要采购部的小王来联系格力中央空调维修部门，让他们派遣维修工程师过来，我这里不能解决这个问题
                                </p>
                            </div>
                            <div class="col-md-2">
                                2010<br />
                                10-12
                            </div>
                        </div>
                        <div class="row  tow-list-message ">
                            <div class="col-md-10">
                                <p>
                                    <b><a href="RepairDetails.aspx">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a></b>
                                </p>
                                <p>
                                    是中央主机坏了，需要采购部的小王来联系格力中央空调维修部门，让他们派遣维修工程师过来，我这里不能解决这个问题
                                </p>
                            </div>
                            <div class="col-md-2">
                                2010<br />
                                10-12
                            </div>
                        </div>--%>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">

              <%--              <div class="clearfix">
                                <div class="pull-left">--%>
                                    <h3 class="panel-title">
                                        维修负责人统计</h3>
                              <%--  </div>
                                <div class="pull-right">
                                     <a class="btn btn-xs btn-default" href="StatisticsLeader.aspx">更多</a>
                                </div>
                            </div>--%>

                    </div>
                    <div class="panel-body">


                        <asp:Repeater ID="rptPraisePercent" runat="server">

                            <HeaderTemplate>
                                
                        <table class="table table-hover table-striped mb9">
                                    <thead>
                                <tr>
                                    <th>
                                         维修负责人
                                    </th>
                                    <th>
                                       评价报修
                                    </th>
                                    <th>
                                        好评数
                                    </th>
                                    <th>
                                        好评率
                                    </th>
                                </tr>
                            </thead>
                                 <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                       <%#Eval("l_name") %>
                                    </td>
                                    <td>
                                       <%#Eval("zp") %>
                                    </td>
                                    <td>
                                        <%#Eval("hp") %>
                                    </td>
                                    <td>
                                       <%#Convert.ToDecimal(Eval("hpl")).ToString("0.00") %>%
                                    </td>
                                </tr>

                            </ItemTemplate>
                            <FooterTemplate>
                            <tbody>
                                </table> </FooterTemplate>
                        </asp:Repeater>


                    </div>
                </div>
            </div>
        </div>
<%--        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="clearfix">
                            <div class="pull-left">
                                <h3 class="panel-title">
                                    用户注册审核 <span class="badge">30</span></h3>
                            </div>
                            <div class="pull-right">
                                <a class="btn btn-xs btn-default" href='RepairUserNotVerifyList.aspx'>
                                    更多</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>
                                        #
                                    </th>
                                    <th>
                                        姓名
                                    </th>
                                    <th>
                                        联系方式
                                    </th>
                                    <th>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        1
                                    </td>
                                    <td>
                                        李天一
                                    </td>
                                    <td>
                                        18857428296
                                    </td>
                                    <td>
                                        <a href="#">详细</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        2</td>
                                    <td>
                                        李天一
                                    </td>
                                    <td>
                                        18857428296
                                    </td>
                                    <td>
                                        <a href="#">详细</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        3</td>
                                    <td>
                                        李天一
                                    </td>
                                    <td>
                                        18857428296
                                    </td>
                                    <td>
                                        <a href="#">详细</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        4</td>
                                    <td>
                                        李天一
                                    </td>
                                    <td>
                                        18857428296
                                    </td>
                                    <td>
                                        <a href="#">详细</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        5</td>
                                    <td>
                                        李天一
                                    </td>
                                    <td>
                                        18857428296
                                    </td>
                                    <td>
                                        <a href="#">详细</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="clearfix">
                            <div class="pull-left">
                                <h3 class="panel-title">
                                    改派申请 <span class="badge">30</span></h3>
                            </div>
                            <div class="pull-right">
                                <a class="btn btn-xs btn-default" href='ReassignedNotLookList.aspx'>
                                    更多</a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>
                                        #
                                    </th>
                                    <th>
                                        申请负责人
                                    </th>
                                    <th>
                                        申请理由
                                    </th>
                                    <th>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        1
                                    </td>
                                    <td>
                                        李天一
                                    </td>
                                    <td>
                                        插入电卡充值后，房间电灯、风扇等电器仍然不工作。
                                    </td>
                                    <td>
                                        <a href="#">改派</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        2
                                    </td>
                                    <td>
                                        李天一
                                    </td>
                                    <td>
                                        插入电卡充值后，房间电灯、风扇等电器仍然不工作。
                                    </td>
                                    <td>
                                        <a href="#">改派</a>
                                    </td>
                                </tr>
                                <tr class="active">
                                    <td>
                                        3
                                    </td>
                                    <td>
                                        李刚
                                    </td>
                                    <td>
                                        插入电卡充值后，房间电灯、风扇等电器仍然不工作。
                                    </td>
                                    <td>
                                        <a href="#">改派</a>
                                    </td>
                                </tr>
                                <tr class="active">
                                    <td>
                                        4</td>
                                    <td>
                                        李刚
                                    </td>
                                    <td>
                                        插入电卡充值后，房间电灯、风扇等电器仍然不工作。
                                    </td>
                                    <td>
                                        <a href="#">改派</a>
                                    </td>
                                </tr>
                                <tr class="active">
                                    <td>
                                        5
                                    </td>
                                    <td>
                                        李刚
                                    </td>
                                    <td>
                                        插入电卡充值后，房间电灯、风扇等电器仍然不工作。
                                    </td>
                                    <td>
                                        <a href="#">改派</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>--%>
    </div>
    </form>
    </div>
</body>
</html>
