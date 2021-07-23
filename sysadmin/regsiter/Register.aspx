<%@ page language="C#" autoeventwireup="true" inherits="Project25175.Register, App_Web_ktx2pypm" enableeventvalidation="false" %>
<%--<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="SysLogin.aspx.cs" Inherits="CRM_login_SysLogin" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>在线授权</title>
    <link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.full.min.css" />
    <script src="assets/js/DatePicker/WdatePicker.js" type="text/javascript"></script>

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

	<!-- page specific plugin styles -->
    <script type="text/javascript">
        function BT_LoginDouble() {
            document.getElementById("BT_Login").click();
        }
    </script>
	<!-- fonts -->

	<!-- ace styles -->

	<link rel="stylesheet" href="assets/css/ace.min.css" />
	<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
	<link rel="stylesheet" href="assets/css/ace-skins.min.css" />

	<!-- ace settings handler -->

	<script type="text/javascript" src="assets/js/ace-extra.min.js"></script>

    <script type="text/javascript">
        //后台调用,区分提示信息底色
        //Danger,Info
        function ChangeMsgClass(MsgType) {
            if (MsgType == "Danger") {
                DivMsg.className = 'alert alert-danger';
            }
            else {
                DivMsg.className = 'alert alert-info';
            }
        }
    </script>
</head>
<body>

        <div class="breadcrumbs" id="breadcrumbs">
		<script type="text/javascript">
		    try { ace.settings.check('breadcrumbs', 'fixed') } catch (e) { }
		</script>
		<ul class="breadcrumb">
			<li>
				在线授权
			</li>
		</ul>
	</div>


    <div class="page-content">
    <form id="Form1" runat="server">
        
        <asp:Panel ID="Panel1" runat="server">
            <div class="row col-xs-12">
                <div id="DivMsg" class="alert alert-info">
                    <i class="icon-hand-right"></i>
                    <asp:Label ID="LabMsg" runat="server" Text=""></asp:Label>
			        <button class="close" data-dismiss="alert">
                    <i class="icon-remove"></i>
                    </button>
                </div>
            </div>
            <div class="row">
			    <div class="col-xs-12">
				    <div class="row-fluid">
					    <div class="span12">                            
                            <div class="widget-box">
							    <div class="widget-header widget-header-blue widget-header-flat">
								    <h4 class="lighter">授权申请</h4>
							    </div>
							    <div class="widget-body">
								    <div class="widget-main">
                                        <div class="row">
                                            <div class="input-group col-xs-12">
                                                    <div class="form-group col-xs-6">
                                                        <label class="col-sm-4 control-label no-padding-right">管理员账号</label>
                                                    <asp:TextBox ID="TxtUser" runat="server" CssClass="col-xs-8"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group col-xs-6">
                                                        <label class="col-sm-4 control-label no-padding-right">管理员密码</label>
                                                    <asp:TextBox ID="TxtPassword" runat="server" CssClass="col-xs-8" TextMode="Password"></asp:TextBox>
                                                    </div>
                                                </div>
                                            <div class="input-group col-xs-12">
                                                <div class="form-group col-xs-6">
                                                    <label class="col-sm-4 control-label no-padding-right">单位名称</label>
                                                    <asp:TextBox ID="TxtCustName" runat="server" CssClass="col-xs-8"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-xs-6" style=" display:none">
                                                    <label class="col-sm-4 control-label no-padding-right">系统域名</label>
                                                    <asp:TextBox ID="TxtDomainName" runat="server" CssClass="col-xs-8">http://</asp:TextBox>                                                
                                                </div>
                                            </div>

                                            <div class="input-group col-xs-12">
                                                <div class="form-group col-xs-6">
                                                    <label class="col-sm-4 control-label no-padding-right">联系人</label>
                                                    <asp:TextBox ID="TxtContacts" runat="server" CssClass="col-xs-8"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-xs-6">
                                                    <label class="col-sm-4 control-label no-padding-right">QQ</label>
                                                    <asp:TextBox ID="TxtQQ" runat="server" CssClass="col-xs-8"></asp:TextBox>                                                
                                                </div>
                                            </div>
                                            <div class="input-group col-xs-12">
                                                <div class="form-group col-xs-6">
                                                    <label class="col-sm-4 control-label no-padding-right">电话</label>
                                                    <asp:TextBox ID="TxtTelePhone" runat="server" CssClass="col-xs-8"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-xs-6">
                                                    <label class="col-sm-4 control-label no-padding-right">邮箱</label>
                                                    <asp:TextBox ID="TxtEmail" runat="server" CssClass="col-xs-8"></asp:TextBox>                                                
                                                </div>
                                            </div>

                                            <div class="input-group col-xs-12" >
                                                <div class="form-group col-xs-6" style=" display:none">
                                                    <label class="col-sm-4 control-label no-padding-right">IP/MAC</label>
                                                    <asp:TextBox ID="TxtIPName" runat="server" CssClass="col-xs-4" Enabled="False"></asp:TextBox>
                                                    <asp:TextBox ID="TxtMAC" runat="server" CssClass="col-xs-4" Enabled="False"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-xs-12">
                                                    <div class="row-fluid wizard-actions">
                                                        <asp:Button ID="btnAdd" runat="server" Text="确认申请"  CssClass="btn btn-app btn-success"
                                                        onclick="btnAdd_Click" />
									                </div>
                                                </div>
                                            </div>
                                        </div>
								    </div>
							    </div>
						    </div>                        
					    </div>
				    </div>
			    </div>
		    </div>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server">
            <div class="row">
			    <div class="col-xs-12">
				    <div class="row-fluid">
					    <div class="span12">
                            <div class="widget-box">
							    <div class="widget-header widget-header-blue widget-header-flat">
								    <h4 class="lighter">申请完成</h4>
							    </div>
							    <div class="widget-body">
								    <div class="widget-main">
                                        <div class="row">
                                            <div class="input-group col-xs-12">
                                                <div class="form-group col-xs-12 center">
                                                    <h5 class="lighter">申请成功！请保存以下资料</h5><asp:Label runat="server" ID="LabInfo"></asp:Label>
                                                    <a href="../Login.aspx">登录</a>
                                                </div>
                                            </div>
                                        </div>
								    </div>
							    </div>
						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
        </asp:Panel>

        <asp:Panel ID="Panel3" runat="server">
            <div class="row">
			    <div class="col-xs-12">
				    <div class="row-fluid">
					    <div class="span12">
                            <div class="widget-box">
							    <div class="widget-header widget-header-blue widget-header-flat">
								    <h4 class="lighter">错误</h4>
							    </div>
							    <div class="widget-body">
								    <div class="widget-main">
                                        <div class="row">
                                            <div class="input-group col-xs-12 ">
                                                <div class="form-group col-xs-12 center">
                                                    <h5 class="lighter"><asp:Label runat="server" ID="LabError"></asp:Label></h5>
                                                </div>
                                            </div>
                                        </div>
								    </div>
							    </div>
						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
        </asp:Panel>

        </form>
    </div>

    
    <script type="text/javascript" src="assets/js/jquery-2.0.3.min.js"></script>

	<script type="text/javascript">
	    window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
	</script>

	<script type="text/javascript">
	    if ("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
	</script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/typeahead-bs2.min.js"></script>

	<!-- page specific plugin scripts -->
    <script type="text/javascript" src="assets/js/bootbox.min.js"></script>
	<!-- ace scripts -->

	<script type="text/javascript" src="assets/js/ace-elements.min.js"></script>
	<script type="text/javascript" src="assets/js/ace.min.js"></script>

</body>
</html>





    

    



