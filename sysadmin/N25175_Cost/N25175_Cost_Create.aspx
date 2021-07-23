<%@ page language="C#" autoeventwireup="true" inherits="Leader_N25175_Cost_N25175_Cost_Create, App_Web_mzz22v24" enableEventValidation="false" %>

<!DOCTYPE html>
<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修详细</title>
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
            <li><a href="/sysadmin/N25175_Repair/RepairList.aspx">报修申请</a> </li>
            <li class="active">费用登记 </li>
        </ul>
        <div class="row">
            <div class="col-md-12">

                <form id="from1" class="form-horizontal" role="form" action="N25175_Cost_Create.aspx">

                    <input name="key" value="<%=key %>" type="hidden" />
                    <div id="olist">
                        <div id="Item1" index="0" class="panel well-sm">

                            <div class=" text-right">
                                <button type="button" class="btn btn-xs   btn-danger" onclick="removeItem(0)">
                                    <span class="glyphicon glyphicon-remove"></span>取消
                                </button>
                                <input name="itemIndex" value="0" type="hidden">
                            </div>
                            <div class="form-group  ">
                                <label class="col-sm-2 control-label">
                                    费用类型:</label>
                                <div class="col-sm-4">
                                    <select id="class0" name="class0" class="form-control">
                                        <option value="-1">其他费用</option>
                                        <option value="0">人工费用</option>
                                        <option value="1">材料费用</option>
                                    </select>
                                </div>

                            </div>
                            <div class="form-group has-warning ">
                                <label class="col-sm-2 control-label">
                                    金额:</label>
                                <div class="col-sm-4">
                                    <input id="amounts0" name="amounts0" datatype="*" class="form-control" style="color: #e74c3c; font-size: 16px;">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    简介:</label>
                                <div class="col-sm-9">
                                    <input id="info0" name="info0" type="text" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    详细:</label>
                                <div class="col-sm-9">
                                    <textarea id="details0" name="details0" class="form-control" rows="3"></textarea>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="panel well-sm">


                        <table style='width: 100%'>
                            <tr>
                                <td align="center">
                                    <button id="btnSubmit" type="submit" class="btn btn-primary ">
                                        <span class="glyphicon glyphicon-save"></span>&nbsp;保存维修费用
                                    </button>

                                </td>
                                <td align="center">
                                    <button id="btnAddPanel" type="button" class="btn btn-info" onclick="addItem()" title="多项费用一次录入">
                                        <span class="glyphicon glyphicon-plus"></span>&nbsp;添加录入面板
                                    </button>
                                </td>
                            </tr>
                        </table>



                    </div>

                </form>

            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="clearfix">
                    <div class="pull-left">
                        <h3 class="panel-title">维修费用明细</h3>
                    </div>
                    <div class="pull-right">
                        <button class="btn btn-xs btn-default" type="button">
                            更多</button>
                    </div>
                </div>
            </div>
            <div class="panel-body">

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
                        <tr style="<%#rptCost.Items.Count==0?" display:none":String.Empty%>" >
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


        <script language="javascript" type="text/javascript">
            var index = 1;
            function addItem() {
                var Item = $("#btnAddItem").val();
                var sb = new StringBuilder();
                index++;
                sb.append("<div id='Item" + index + "' index='" + index + "' class='well well-sm'>");
                sb.append("<div class=' text-right'>");
                sb.append("<button type='button' class='btn btn-xs   btn-danger' onclick='removeItem(" + index + ")'>");
                sb.append("<span class='glyphicon glyphicon-remove'></span>取消");
                sb.append("</button>");
                sb.append("<input name='itemIndex' value='" + index + "' type='hidden'>");
                sb.append("</div>");
                sb.append("<div class='form-group  '>");
                sb.append("<label class='col-sm-2 control-label'>");
                sb.append("费用类型:</label>");
                sb.append("<div class='col-sm-4'>");
                sb.append("<select id='class" + index + "' name='class" + index + "' class='form-control'>");
                sb.append("<option value='-1'>其他费用</option>");
                sb.append("<option value='0'>人工费用</option>");
                sb.append("<option value='1'>材料费用</option>");
                sb.append("</select>");
                sb.append("</div>");

                sb.append("</div>");
                sb.append("<div class='form-group has-warning '>");
                sb.append("<label class='col-sm-2 control-label'>");
                sb.append("金额:</label>");
                sb.append("<div class='col-sm-4'>");
                sb.append("<input id='amounts" + index + "' name='amounts" + index + "' datatype='*' class='form-control' style='color: #e74c3c; font-size: 16px;'>");
                sb.append("</div>");
                sb.append("</div>");
                sb.append("<div class='form-group'>");
                sb.append("<label class='col-sm-2 control-label'>");
                sb.append("简介:</label>");
                sb.append("<div class='col-sm-9'>");
                sb.append("<input id='info" + index + "' name='info" + index + "' type='text' class='form-control'>");
                sb.append("</div>");
                sb.append("</div>");
                sb.append("<div class='form-group'>");
                sb.append("<label class='col-sm-2 control-label'>");
                sb.append("详细:</label>");
                sb.append("<div class='col-sm-9'>");
                sb.append("<textarea id='details" + index + "' name='details" + index + "' class='form-control' rows='3'></textarea>");
                sb.append("</div>");
                sb.append("</div>");
                sb.append("</div>");


                $("#olist").append(sb.tostring());
                bindAutoComplete(index);
                scrollPanel(index);
            }

            function removeItem(index) {
                var tr = $("#Item" + index);
                if (tr.parent().children().size() != 1) {
                    tr.remove();
                }
            }

        </script>
        <script type="text/javascript" language="javascript">

            $(function () {
                $("#from1").ajaxForm({
                    beforeSubmit: function () {

                        var list = $("#olist").children();
                        for (var i = 0; i < list.size() ; i++) {
                            var tr = list.eq(i);

                            var index = tr.attr("index");

                            var cls = $("#class" + index).val();
                            var amounts = $("#amounts" + index).val();
                            var details = $("#details" + index).val();
                            var info = $("#info" + index).val();

                            if ($.trim(cls) == "") {
                                alert("请选择第" + (i + 1) + "项 费用类型！"); return false;
                            }


                            if (amounts == "") {
                                alert("请填写第" + (i + 1) + "项 金额！"); return false;
                            }
                            else if (isNaN(parseFloat(amounts))) {
                                alert("第" + (i + 1) + "项金额 无效的格式 ！"); return false;
                            }
                        }

                        load("保存订单...");
                    },
                    success: function (data) {
                        unload();
                        try {
                            var result = $.evalJSON(data);
                            if (result.state == 1) {

                                location.reload();

                            } else {
                                alert(result.data);
                            }
                        } catch (exception) {
                            alert('保存出错啦 ！');
                        }
                    }
                });
            });

        </script>



        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">报修详细</h3>
                    </div>
                    <div class="panel-body">
                              
                        <div class="form">
                            <div class="form-group ">
                                <label for="txtn_date">
                                    标题：</label>
                               <a href="/sysadmin/N25175_Repair/RepairDetails.aspx?id=<%=key %>"><asp:Literal ID="litTitle" runat="server"></asp:Literal></a> 
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
               
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <script src="/control/js/common.js" type="text/javascript"></script>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="/control/plugin/form/jquery.form.min.js" type="text/javascript"></script>

</body>
</html>
