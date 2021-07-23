<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_RepairCompleteList, App_Web_ju4faccj" enableEventValidation="false" %>


 <%@ Register src="../MainHeader.ascx" tagname="MainHeader" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修申请列表</title>
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
    <div class="container" style='margin-top: 55px'>
        <div class="row">
            <div class=" col-md-12">
                <ul class="breadcrumb">
                    <li><a href="/sysadmin/Dashboard.aspx">主页</a> </li>
                    <li>报修申请 </li>
                </ul>
                <div class="panel">
                <ul class="nav nav-tabs">
     <li ><a href="RepairList.aspx">全部 <span class="badge">95</span></a> </li>
                    <li><a href="RepairNotAssignedList.aspx">未指派 <span class="badge">18</span></a> </li>
                    <li><a href="RepairPendingList.aspx">待处理 <span class="badge">7</span></a> </li>
                    <li><a href="RepairProcessingList.aspx">处理中 <span class="badge">10</span></a> </li>
                    <li><a href="RepairRejectList.aspx">驳回报修 <span class="badge">20</span></a> </li>
                    <li class="active"><a href="RepairCompleteList.aspx">维修完成 <span class="badge">30</span></a> </li>
                    <li><a href="RepairNotEvaluationList.aspx">未评价 <span class="badge">10</span></a> </li>
                </ul>
                <div class="row  well-lg">
                    <form class="form-inline">
                    <div class="form-group">
                        <label for="exampleInputName2">
                            标题：</label>
                        <input type="text" class="form-control" id="exampleInputName2">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2">
                            负责人：</label>
                        <input type="email" class="form-control" id="exampleInputEmail2">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail2">
                            优先级：</label>
                        <select class="form-control">
                            <option>立刻</option>
                            <option>优先</option>
                            <option>普通</option>
                            <option>允许暂缓</option>
                        </select>
                    </div>
                    <button type="submit" class="btn  btn-primary">
                        查询
                    </button>
                    </form>
                </div>
                <table class="table table-responsive">
                    <thead>
                        <tr class='table-heading'>
                            <th>
                                序号
                            </th>
                            <th>
                                标题
                            </th>
                            <th>
                                优先级
                            </th>
                            <th>
                                维修负责人
                            </th>
                            <th>
                                完成日期</th>
                            <th>
                                申请日期
                            </th>
                            <th>
                                &nbsp;
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                1
                            </td>
                            <td>
                                <%--<a href="#">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>--%>
                                <a href="RepairDetails.aspx">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>
                            </td>
                            <td>
                                <span class="text-danger">立刻</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                                2010-12-12</td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                2</td>
                            <td>
                                <%--<a href="#">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>--%>
                                <a href="RepairDetails.aspx">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>
                            </td>
                            <td> 
                                <span class="text-danger">立刻</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                                2010-12-12</td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                3</td>
                            <td>
                                <%--<a href="#">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>--%>
                                <a href="RepairDetails.aspx">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>
                            </td>
                            <td>
                                <span class="text-danger">立刻</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                                2010-12-12</td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                4</td>
                            <td>
                                <%--<a href="#">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>--%>
                                <a href="RepairDetails.aspx">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>
                            </td>
                            <td>
                                <span class="text-danger">立刻</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                                2010-12-12</td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                5</td>
                            <td>
                                <%--<a href="#">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>--%>
                                <a href="RepairDetails.aspx">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>
                            </td>
                            <td>
                                <span class="text-danger">立刻</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                                2010-12-12</td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                6</td>
                            <td>
                                <a href="RepairDetails.aspx">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>
                            </td>
                            <td>
                                <span class="text-warning">优先</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                                2010-12-12</td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                7</td>
                            <td>
                                <a href="RepairDetails.aspx">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>
                            </td>
                            <td>
                                <span class="text-primary">普通</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                                2010-12-12</td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                8</td>
                            <td>
                                <a href="#">14#逸夫楼301教室的窗帘掉落，需要进行维修</a>
                            </td>
                            <td>
                                <span class="text-default">允许暂缓</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                                2010-12-12
                            </td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                9</td>
                            <td>
                                <%--<a href="#">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>--%>
                                <a id="A1" href="#modal-container-697265" data-toggle="modal">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>
                            </td>
                            <td>
                                <span class="text-danger">立刻</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                                  2010-12-12
                            </td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                10</td>
                            <td>
                                <a id="A2" href="#modal-container-697265" data-toggle="modal">14#逸夫楼301教室的窗帘掉落，需要进行维修。</a>
                            </td>
                            <td>
                                <span class="text-warning">优先</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                              2010-12-12
                            </td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                11</td>
                            <td>
                                <a href="#">14#逸夫楼301教室的窗帘掉落，需要进行维修</a>
                            </td>
                            <td>
                                <span class="text-primary">普通</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                      2010-12-12
                            </td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                12
                            </td>
                            <td>
                                <a href="#">14#逸夫楼301教室的窗帘掉落，需要进行维修</a>
                            </td>
                            <td>
                                <span class="text-default">允许暂缓</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                          2010-12-12
                            </td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                13
                            </td>
                            <td>
                                <%--<a href="#">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>--%>
                                <a id="A3" href="#modal-container-697265" data-toggle="modal">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>
                            </td>
                            <td>
                                <span class="text-danger">立刻</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                           2010-12-12
                            </td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                14</td>
                            <td>
                                <a id="A4" href="#modal-container-697265" data-toggle="modal">14#逸夫楼301教室的窗帘掉落，需要进行维修。</a>
                            </td>
                            <td>
                                <span class="text-warning">优先</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                  2010-12-12
                            </td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                15</td>
                            <td>
                                <a href="#">14#逸夫楼301教室的窗帘掉落，需要进行维修</a>
                            </td>
                            <td>
                                <span class="text-primary">普通</span>
                            </td>
                            <td>
                                王佳伟 
                            </td>
                            <td>
                            2010-12-12
                            </td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                16</td>
                            <td>
                                <a href="#">14#逸夫楼301教室的窗帘掉落，需要进行维修</a>
                            </td>
                            <td>
                                <span class="text-default">允许暂缓</span>
                            </td>
                            <td>
                                王佳伟
                            </td>
                            <td>
                           2010-12-12
                            </td>
                            <td>
                                2015年7月8日
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button aria-expanded="false" aria-haspopup="true" class="btn btn-default btn-xs dropdown-toggle"
                                        data-toggle="dropdown" type="button">
                                        操作菜单 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu ">
                                        <li><a href="#">删除</a></li>
                                        <li><a href="#">编辑</a></li>
                                        
                                    </ul>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <ul class="pagination">
                    <li><a href="#">上一页</a> </li>
                    <li><a href="#">1</a> </li>
                    <li><a href="#">2</a> </li>
                    <li><a href="#">3</a> </li>
                    <li><a href="#">4</a> </li>
                    <li><a href="#">5</a> </li>
                    <li><a href="#">6</a> </li>
                    <li><a href="#">7</a> </li>
                    <li><a href="#">8</a> </li>
                    <li><a href="#">9</a> </li>
                    <li><a href="#">10</a> </li>
                    <li><a href="#">下一页</a> </li>
                    <li><span>总计：201920 条</span></li>
                </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>