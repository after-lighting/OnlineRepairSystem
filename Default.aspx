<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_s5u0mg1n" enableEventValidation="false" %>

<%@ Register Src="MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<%@ Register Src="MyFooter.ascx" TagName="MyFooter" TagPrefix="uc2" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>报修管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/control/css/rl.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/Highcharts/Highcharts.js" type="text/javascript"></script>

    <link href="/user/lib/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="/user/css/index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <script language="javascript">
        $(function () {
            if (!$.support.leadingWhitespace) { $("body").html("<h1>当前不支持IE 6 7 8 浏览器,请使用高版本的IE浏览器或火狐、google浏览器 访问</h1>") }

        });
    </script>
    <div class="wrapper p-top-0">
        <uc1:MyHeader ID="MyHeader1" runat="server" />
        
        <!-------------头部导航------------------>
        <nav class="top-nav">
            <div class="container">
                <div class="nav-header">
                    <!--移动模式右侧按钮-->
                    <ul class="nav-right-btn pull-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-cog"></i></a>
                            <ul class="dropdown-menu  pull-right">
                                <li>
                                    <a href="/user/Repair.aspx">申请报修</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="http://www.25175.net/" target="_Blank">技术支持</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!--logo-->
                    <a href="#" class="brand">
                        <img src="/user/images/logo.png">网上报修平台
                    </a>
                </div>
                <div class="nav-container">
                    <ul class="navbar-right">
                        <li>
                            <a href="/sysadmin/Login.aspx">
                                <i class="glyphicon glyphicon-send  m-right-xs"></i>
                                管理员登录
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav><!--/头部导航-->
        <div class="main-container">
            <div class="container padding-md">
                <div class=" panel panel-default">
                    <div class="panel-heading">
                        <ul id="myTab" class="nav nav-tabs">
                            <li class="active"><a>用户登录</a></li>
                            <li><a href="LeaderLogin.aspx">负责人登录</a></li>
                            <li><a href="Register.aspx">用户注册</a></li>
                        </ul>
                        <div class="panel-body">
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active " id="userLogin">
                                    <div class="panel-body">
                                        <div class="row">
                                            <form class="form-horizontal col-md-7" id="from1" runat="server">
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="inputEmail3">
                                                    用户名：
                                                    <asp:RequiredFieldValidator ID="rfvtxtUser" runat="server" ForeColor="Red" ErrorMessage="*"
                                                        ControlToValidate="txtUser"></asp:RequiredFieldValidator></label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtUser" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="inputPassword3">
                                                    密码：
                                                    <asp:RequiredFieldValidator ID="rfvtxtPass" runat="server" ForeColor="Red" ErrorMessage="*"
                                                        ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                                                </label>
                                                <div class="col-sm-10">
                                                    <asp:TextBox ID="txtPass" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="inputPassword3">
                                                    验证码：
                                                    <asp:RequiredFieldValidator ID="rfvPass" runat="server" ForeColor="Red" ErrorMessage="*"
                                                        ControlToValidate="txtValid"></asp:RequiredFieldValidator>
                                                </label>
                                                <div class="col-sm-3">
                                                    <asp:TextBox ID="txtValid" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="col-sm-7">
                                                    <img id="ImageCheck" src="ValidCode.aspx" onclick="ChangeCode()" style="cursor: pointer"
                                                        alt='' />
                                                    <script language="javascript" type="text/javascript">
                                                        function newGuid() {
                                                            var guid = "";
                                                            for (var i = 1; i <= 32; i++) {
                                                                var n = Math.floor(Math.random() * 16.0).toString(16);
                                                                guid += n;
                                                                if ((i == 8) || (i == 12) || (i == 16) || (i == 20))
                                                                    guid += "-";
                                                            }
                                                            return guid;
                                                        }
                                                        function ChangeCode() {
                                                            var myImg = document.getElementById("ImageCheck");
                                                            myImg.src = "ValidCode.aspx?flag=" + newGuid();
                                                            return false;
                                                        }
                                                    </script>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <div class="checkbox">
                                                        <label>
                                                            <asp:CheckBox ID="cbSaveLoginInfo" runat="server" />
                                                            保存登录信息
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <asp:Button ID="btnSubmit" CssClass="btn btn-default btn-primary" runat="server"
                                                        Text="用户登录" OnClick="btnSubmit_Click" />
                                                    <a class="btn btn-default " href="Register.aspx">用户注册</a>
                                                </div>
                                            </div>
                                            </form>
                                            <aside class="con_r col-md-5 side_r">
                                                <div class="divide"><img src="/user/images/line.png" /></div>
                                                    <div class="code">
                                                        <h4 class="m-bottom-sm">手机扫描二维码登录</h4>
                                                        <div>
                                                            <asp:Image ID="imgRcode" runat="server" CssClass="img-responsive" />
                                                        </div>
                                                    </div>
                                             </aside>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <!-- <div class="row">
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
        </div>-->
        <uc2:MyFooter ID="MyFooter1" runat="server" />
    </div>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
