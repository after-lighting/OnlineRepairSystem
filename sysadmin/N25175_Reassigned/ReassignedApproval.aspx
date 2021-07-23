<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_Reassigned_ReassignedApproval, App_Web_baoizzzr" enableEventValidation="false" %>

<!DOCTYPE html>

<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>指派维修负责人</title>
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
            <li><a href="/sysadmin/N25175_Reassigned/ReassignedList.aspx">改派申请</a> </li>
            <li class="active">改派负责人 </li>
        </ul>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            改派负责人</h3>
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal" runat="server" role="form">
                      
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="inputPassword3">
                                原负责人：
                            </label>
                            <div class="col-sm-5">
                        
                              <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ReadOnly="true" Text="王佳伟" Font-Size="12" ></asp:TextBox>
                            </div>
                     
                        </div>

                  <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputPassword3">
                                    快速查询：
                                </label>
                                <div class="col-sm-5">
                                    <input id="txtSearch" type="text" class="form-control" />

                                    <script language="javascript" type="text/javascript">

                                        $(function () {
                                            bindCustomerAutoComplete();
                                        });

                                        function bindCustomerAutoComplete() {
                                            $('#txtSearch').autocomplete({
                                                serviceUrl: '/ajax/N25175_Leader/N25175_Leader_SearchItem.ashx',

                                                formatResult: function (suggestion, currentValue) {
                                                    var value = '[编号：' + suggestion.l_number + '] / ' + suggestion.value;
                                                    var pattern = '(' + $.Autocomplete.utils.escapeRegExChars(currentValue) + ')';
                                                    return value.replace(new RegExp(pattern, 'gi'), '<strong>$1<\/strong>');
                                                },
                                                lookupFilter: function (suggestion, originalQuery, queryLowerCase) {
                                                    var re = new RegExp('\\b' + $.Autocomplete.utils.escapeRegExChars(queryLowerCase), 'gi');
                                                    return re.test(suggestion.value);
                                                },
                                                onSelect: function (suggestion) {

                                                    var value = '[编号：' + suggestion.l_number + '] / ' + suggestion.value;
                                                    $("#txtLeader").val(value);
                                                    $("#hfLeader").val(suggestion.data);
                                                    $("#txtSearch").val('');
                                                }
                                            });
                                        }

                                    </script>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="inputPassword3">
                                    新维修负责人：
                                </label>
                                <div class="col-sm-7">
                                    <asp:TextBox ID="txtLeader" CssClass="form-control" runat="server" Font-Size="18px" ForeColor="#2e6da4" disabled></asp:TextBox>
                                    <asp:HiddenField ID="hfLeader" runat="server" />
                                     <p class="help-block">
                                       申请理由：<asp:Literal ID="litWhy" runat="server"></asp:Literal></p>
                                </div>
                                <div class="col-sm-3">

                                    <asp:RequiredFieldValidator ID="rfvLeader" runat="server" ErrorMessage="请选择维修负责人" ForeColor="Red" ControlToValidate="txtLeader"></asp:RequiredFieldValidator>
                                   
                                </div>

                            </div>
               
                   
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                            

                                <asp:Button ID="btnSubmit" runat="server" Text="确定改派负责人" CssClass="btn btn-primary " OnClick="btnSubmit_Click" />
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">报修申请</h3>
                    </div>
                    <div class="panel-body">
                        <div class="form">
                            <div class="form-group ">
                                <label for="txtn_date">
                                    标题：</label>
                                <asp:Literal ID="litTitle" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_date">
                                    优先级：</label>
                                <span class="label  ">

                                    <asp:Literal ID="litPriority" runat="server"></asp:Literal></span>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_date">
                                    状态：</label>
                                <span class="label  ">

                                    <asp:Literal ID="litSate" runat="server"></asp:Literal></span>
                            </div>

                            <div class="form-group ">
                                <label for="txtn_content">
                                    联系人：</label>
                                <asp:Literal ID="litName" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_content">
                                    联系电话：</label>
                                <asp:Literal ID="litPhone" runat="server"></asp:Literal>
                            </div>
                            <div class="form-group ">
                                <label for="txtn_content">
                                    报修地址：</label>
                                <asp:Literal ID="litAddress" runat="server"></asp:Literal>
                            </div>

                            <div class="form-group ">
                                <label for="txtn_content">
                                    报修详细：</label>
                                <asp:Literal ID="litDetails" runat="server"></asp:Literal>
                            </div>

                            <div class="form-group ">
                                <label for="txtn_content">照片：</label>
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
    <script src="/control/plugin/autocomplete/jquery.autocomplete.js"></script>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
