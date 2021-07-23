<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_LeaderCreate, App_Web_tpbbsudx" enableEventValidation="false" %>

<%@ Register src="/sysadmin/MainHeader.ascx" tagname="MainHeader" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>新增维修负责人</title>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="/control/plugin/Highcharts/Highcharts.js" type="text/javascript"></script>
    <link href="/control/css/main.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
      
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
				<li>
					<a href="Dashboard.aspx">主页</a> 
				</li>
				<li>
					<a href="LeaderList.aspx">维修负责人</a>
				</li>
				<li class="active">
					新增维修负责人
				</li>
			</ul>

        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title"> 新增维修负责人</h3>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" runat="server" id="form">
                
                     <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">
                        负责人编号*：</label>
                    <div class="col-sm-7">
          			
	  					<asp:TextBox id="txtl_number" runat="server"  CssClass="form-control"  MaxLength="50"    ></asp:TextBox>
			
                        <p class="help-block">
                            请填写真实的用户姓名！</p>
                    </div>
                    <div class="col-sm-3">

                       <asp:RequiredFieldValidator ID="rfvl_number" runat="server" ForeColor="Red" ErrorMessage="请填写员工编号" ControlToValidate="txtl_number"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">
                        姓名*：</label>
                    <div class="col-sm-7">
          			
	  						<asp:TextBox id="txtl_name" runat="server"  CssClass="form-control"  MaxLength="50"    ></asp:TextBox>
			
                        <p class="help-block">
                            请填写真实的用户姓名！</p>
                    </div>
                    <div class="col-sm-3">

                       <asp:RequiredFieldValidator ID="rfvl_name" runat="server" ForeColor="Red" ErrorMessage="请填写姓名" ControlToValidate="txtl_name"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        用户名*：</label>
                    <div class="col-sm-7">
          			
	  		            <asp:TextBox id="txtl_user" runat="server"  CssClass="form-control" MaxLength="50"  ></asp:TextBox>
			
                        <p class="help-block">
                            数字或字母最少6位！</p>
                    </div>
                    <div class="col-sm-3">
                        <asp:RequiredFieldValidator ID="rfvl_user" runat="server" ForeColor="Red" ErrorMessage="请填写用户名" ControlToValidate="txtl_user"></asp:RequiredFieldValidator>
                        
                        <asp:RegularExpressionValidator ID="revu_user" ControlToValidate="txtl_user" 
                            ValidationExpression="^[a-zA-Z0-9_]{6,20}$"
                            runat="server" ErrorMessage="无效的格式" ForeColor="Red">
                        </asp:RegularExpressionValidator>

                    </div>


                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        密码*：</label>
                    <div class="col-sm-7">
                       <asp:TextBox id="txtl_pass" runat="server"  MaxLength="255" TextMode="Password"   CssClass="form-control"  ></asp:TextBox>
			

                     
                    </div>
                    <div class="col-sm-3">  	<asp:RequiredFieldValidator ID="rfvl_pass" runat="server" ForeColor="Red" ErrorMessage="请填写密码" ControlToValidate="txtl_pass"></asp:RequiredFieldValidator>
						</div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        密码验证*：</label>
                    <div class="col-sm-7">
          			
	  		     <asp:TextBox id="txtl_pass2" runat="server"  MaxLength="255"  TextMode="Password" CssClass="form-control"  ></asp:TextBox>
			
        
                
                        <p class="help-block">
                            重新输入填写的密码，验证两次密码是否输入一致！</p>
                    </div>
                      <div class="col-sm-3">  	

						  <asp:CompareValidator ID="cvpass" runat="server" ControlToCompare="txtl_pass" ControlToValidate="txtl_pass2" ErrorMessage="两次密码输入不一致" ForeColor="Red"></asp:CompareValidator>
						</div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        性别：</label>
                    <div class="col-sm-10">

                        <label class="radio-inline">
                            <asp:RadioButton ID="rbNan" GroupName="sex" runat="server" Checked="true" /> 男
                        </label>
                        <label class="radio-inline">
                              <asp:RadioButton ID="rbNv" GroupName="sex" runat="server" /> 女
                        </label>

                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        生日：</label>
                    <div class="col-sm-7">
                        <asp:TextBox ID="txtl_beginDate" runat="server" CssClass="form-control" 
                             onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" ></asp:TextBox>
                    </div>

                    <div class="col-sm-3">  	
	                </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        手机号码：</label>
                    <div class="col-sm-7">
                        <asp:TextBox ID="txtl_phone" runat="server" CssClass="form-control" ></asp:TextBox>
                        <p class="help-block">
                            请填写注册人的手机号码，审核可能需要联系您！</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        邮箱：</label>
                    <div class="col-sm-7">
                                  			
	  				<asp:TextBox id="txtl_email" runat="server"   CssClass="form-control"  MaxLength="50"   ></asp:TextBox>
				
                 
                          <p class="help-block">
                            请填写正确的有效的邮箱，可用于找回密码！</p>
                    </div>
                    <div class="col-sm-3">



                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtl_email" ErrorMessage="无效的邮箱地址" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>



                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        身份证号码：</label>
                    <div class="col-sm-7">

	  					<asp:TextBox id="txtl_idNumber" CssClass="form-control" runat="server"  MaxLength="50"  ></asp:TextBox>

                    </div>
                    <div class="col-sm-3">

                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        所在地址：</label>
                    <div class="col-sm-10">
                          			
	  				    <asp:TextBox id="txtl_address" runat="server" CssClass="form-control"  MaxLength="255"   ></asp:TextBox>

                        <p class="help-block">
                            工作地址或居住地址！</p>
                    </div>
                </div>
                                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        专长：</label>
                    <div class="col-sm-10">
        
	  					<asp:TextBox id="txtl_specialty" runat="server"  CssClass="form-control"  MaxLength="255"    ></asp:TextBox>
				
                        <p class="help-block">
                            填写维修负责人专长或技能！</p>
                    </div>
                </div>
                                                    <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">
                        备注：</label>
                    <div class="col-sm-10">

	  					<asp:TextBox id="txtl_note" runat="server"  Rows="4"   CssClass="form-control" MaxLength="500"  TextMode="MultiLine" ></asp:TextBox>
                      
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
               
                        <asp:Button ID="btnSubmit" CssClass="btn btn-default btn-primary " runat="server" Text="保存维修负责人" OnClick="btnSubmit_Click" />

                    </div>
                </div>
                </form>





            </div>
        </div>
    </div>
</div>
</body>
</html>

