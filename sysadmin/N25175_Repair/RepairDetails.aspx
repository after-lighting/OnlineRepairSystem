<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_RepairDetails, App_Web_ju4faccj" enableEventValidation="false" %>

<%@ Register Src="../MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修详细</title>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>

    <link href="/control/plugin/raty/jquery.raty.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/raty/jquery.raty.js" type="text/javascript"></script>
    <link href="/control/css/main.css" rel="stylesheet" type="text/css" />
      
    <link href="/user/lib/ionicons/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/base.css" rel="stylesheet" type="text/css" />
    <link href="/sysadmin/css/a_home.css" rel="stylesheet" type="text/css" />
</head>

<body class="overflow-hidden">
<div class="wrapper preload">

    <uc1:MainHeader ID="MainHeader1" runat="server" />
    <form id="from1" runat="server">
        <div class="container" style='margin-top: 55px'>
            <ul class="breadcrumb">
                <li>
                    <a href="/sysadmin/Dashboard.aspx">主页</a> 
                </li>
                <li>
                    <a href="RepairList.aspx">报修申请</a>
                </li>
                <li class="active">报修详细
                </li>
            </ul>
            <div class="row">
                <div class="col-sm-12">
                    <div class="panel">
                        <div class="form">
                            <div class="form-group ">
                                <label for="txtn_date">
                                    标题：</label>
                                <asp:Literal ID="litTitle" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_date">
                                    缓急程度：</label>
                                <asp:Literal ID="litPriority" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_content">
                                    联系人：</label>
                                <asp:Literal ID="litlinkMan" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_content">
                                    联系电话：</label>
                                <asp:Literal ID="litphone" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_content">
                                    报修地址：</label>
                                <asp:Literal ID="litaddress" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_content">
                                    维修负责人：</label>
                                <asp:Literal ID="litLeader" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_content">
                                    报修详细：</label>
                                <asp:Literal ID="litDetails" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_content">
                                    照片：</label>
                                <asp:Repeater ID="rptPhoto" runat="server">
                                    <ItemTemplate>
                                        <img src="<%#Eval("rp_path") %>" class="img-responsive" alt="Responsive image">
                                    </ItemTemplate>

                                    <FooterTemplate>
                                        <asp:Label ID="lblEmpty" Text="无照片！" runat="server" Visible="<%#bool.Parse((rptPhoto.Items.Count==0).ToString())%>"></asp:Label>
                                    </FooterTemplate>
                                </asp:Repeater>
                            </div>
                        </div>

                         <div class=" text-center">

                        <asp:HyperLink ID="hlsetState" CssClass="btn btn-default" Visible="false"  runat="server">设置状态</asp:HyperLink>
                        <asp:HyperLink ID="hlrepairAssigned" CssClass="btn btn-default" Visible="false" runat="server">指派人员</asp:HyperLink>
                        <asp:HyperLink ID="hlcostCreate" CssClass="btn btn-default" Visible="false"  runat="server">费用登记</asp:HyperLink>

                         </div>
                    </div>


                  
                </div>
                
             
             
                </div>
            <div class="row">
                <div class="col-sm-12">


                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">报修进程</h3>
                        </div>
                        <div class="panel-body">

                            <asp:Repeater ID="rptProcess" runat="server">
                                <HeaderTemplate>
                                    <table class="table">
                                        <thead>
                                            <tr class='table-heading'>
                                                <th>进程</th>
                                                <th>描述</th>
                                                <th>时间</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td style="white-space: nowrap;"><%#Eval("p_process") %></td>
                                        <td><%#Eval("p_discription") %></td>
                                        <td style="white-space: nowrap;"><%#Eval("p_cdate") %></td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                        </table>

                                </FooterTemplate>

                            </asp:Repeater>

                        </div>
                    </div>


                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel">
                        <label for="txtn_content">
                            评价内容：</label>
                        <div class="clabel">

                            <asp:Literal ID="litEvaluation" runat="server"></asp:Literal>

                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="panel">

                        <div id="x1">
                            维修速度：<span id="labSpeed"></span>
                            <asp:HiddenField ID="hfSpeed" runat="server" />
                        </div>
                        <div id="x2">
                            维修态度：<span id="labAttitude"></span>
                            <asp:HiddenField ID="hfAttitude" runat="server" />
                        </div>
                        <div id="x3">
                            维修质量：<span id="labQuality"></span>
                            <asp:HiddenField ID="hfQuality" runat="server" />
                        </div>

                        <script type="text/javascript" language="javascript">
                            $(function () {
                                $.fn.raty.defaults.path = '/control/plugin/raty/images';

                                var a = $("#hfSpeed").val();
                                if (a != "-1") {
                                    $('#x1').raty({ readOnly: true, score: a });
                                } else {
                                    $("#labSpeed").text('未评价');

                                }
                                var s = $("#hfAttitude").val();
                                if (s != "-1") {
                                    $('#x2').raty({ readOnly: true, score: 6 });
                                }
                                else {
                                    $("#labAttitude").text('未评价');
                                }
                                var q = $("#hfQuality").val();
                                if (s != "-1") {
                                    $('#x3').raty({ readOnly: true, score: q });
                                } else {
                                    $("#labQuality").text('未评价');
                                }

                            });

                        </script>
                    </div>

                </div>

            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                     <h3 class="panel-title">改派申请</h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                    
                    <asp:Repeater ID="rptReassigned" runat="server">

                            <HeaderTemplate>
                                <table class="table">
                                    <thead>
                                        <tr class='table-heading'>
                                            <th>申请人
                                            </th>
                                            <th>申请原因
                                            </th>
                                            <th>状态
                                            </th>
                                            <th>申请日期
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>

                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("l_name") %> 
                                    </td>
                                    <td><%#Eval("rd_why") %>
                                    </td>
                                    <td>
                                   【<%#Repair_BLL.N25175_Reassigned_BLL.GetStateHtmlLabel((int)Eval("rd_state")) %>】
                                    </td>
                                    <td><%#Eval("rd_cdate") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                                </table>

                              <div class="alert alert-info text-center" role="alert" 
                                  style="display: <%#rptReassigned.Items.Count==0?"block":"none"%>">
                                  <h4>无改派申请记录 </h4>
                              </div>

                            </FooterTemplate>

                        </asp:Repeater>
                    
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="clearfix">
                        <div class="pull-left">
                            <h3 class="panel-title">维修费用明细</h3>
                        </div>
                        <div class="pull-right">
                       <%--     <a href="/sysadmin/N25175_Cost/N25175_Cost_Create.aspx?id=<%#Eval("id") %>" class="btn btn-xs btn-default" type="button">
                                费用登记</a>--%>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                                      <div class=" table-responsive">
                    <asp:Repeater ID="rptCost" runat="server">
                        <HeaderTemplate>

                            <table class="table">
                                <thead>
                                    <tr class='table-heading'>

                                        <th>费用类型
                                        </th>
                                        <th>费用简介
                                        </th>
                                        <th>金额
                                        </th>
                                        <th>详细
                                        </th>
                                        <th>登记日期
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%--<a href="#">插入电卡充值后，房间电灯、风扇等电器仍然不工作。</a>--%>
                                    <%#Repair_BLL.N25175_Cost_BLL.GetCostClassName((int)Eval("c_class")) %>
                                </td>
                                <td><%#Eval("c_info") %>
                                </td>
                                <td><%#Eval("c_amounts") %>
                                </td>
                                <td><%#Eval("c_details") %>
                                </td>
                                <td><%#Eval("c_cdate") %>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                        <tfoot>
                            <tr style="<%#rptCost.Items.Count==0?" display:none": String.Empty%>">
                                <td>&nbsp;
                                </td>
                                <td>&nbsp;
                                </td>

                                <td>总计：<span class="text-danger"><%=sumAmount %></span>
                                </td>
                                <td>&nbsp;
                                </td>
                                <td>&nbsp;
                                </td>
                            </tr>
                        </tfoot>

                            </table>

                              <div class="alert alert-info text-center" role="alert" style="display: <%#rptCost.Items.Count==0?"block":"none"%>">
                                  <h4>暂无维修费用记录 </h4>
                              </div>
                        </FooterTemplate>

                    </asp:Repeater>
</div>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>
