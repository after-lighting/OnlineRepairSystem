<%@ page language="C#" autoeventwireup="true" inherits="user_Leave, App_Web_3bt5r4t4" enableEventValidation="false" %>

<%@ Register Src="/user/MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<%@ Register Src="/user/MyFooter.ascx" TagName="MyFooter" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>请假申请</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/user/css/rp.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/My97DatePicker/WdatePicker.js" type="text/javascript"></script>

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
            <div class="col-md-8">
                <div class="panel">
                    <form id="createNote" runat="server" enctype="multipart/form-data" >
                    <div class="form-group ">
                        <label for="txtn_date">
                            标题
                            <asp:RequiredFieldValidator ID="rfvr_title" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtle_title"></asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtle_title" runat="server" CssClass="form-control"
                            placeholder="标题" MaxLength="255"></asp:TextBox>
                    </div>
                   
                    <div class="form-group ">
                        <label for="txtn_content">
                            联系人
                            <asp:RequiredFieldValidator ID="rfvr_linkMan" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtle_name"></asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtle_name" runat="server" MaxLength="50" placeholder="输入联系人"
                            CssClass="form-control form_datetime"></asp:TextBox>
                    </div>
                    <div class="form-group ">
                        <label for="txtn_content">
                            联系电话
                            <asp:RequiredFieldValidator ID="rfvr_phone" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtle_phone"></asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtle_phone" runat="server" MaxLength="50" placeholder="输入联系人电话"
                            CssClass="form-control form_datetime"></asp:TextBox>
                    </div>
                    <div class="form-group ">
                        <label for="txtn_content">
                            请假时间
                            
                                </label>
                        <div class="row">
                            <div class="col-sm-5">
                                <asp:TextBox ID="txtle_time1" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" runat="server" MaxLength="50" CssClass="form-control"
                                    placeholder=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic"
                                        runat="server" ForeColor="Red" ErrorMessage="必填" ControlToValidate="txtle_time2"></asp:RequiredFieldValidator></div>
                            <div class="col-sm-1 text-center">
                                <p>到</p></div>
                            <div class="col-sm-5">
                                <asp:TextBox ID="txtle_time2" runat="server" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" MaxLength="50" CssClass="form-control"
                                    placeholder=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvr_address" runat="server" Display="Dynamic"
                                        ForeColor="Red" ErrorMessage="必填" ControlToValidate="txtle_time1"></asp:RequiredFieldValidator></div>
                        </div>
                    </div>
             
                    <div class="form-group ">
                        <label for="txtn_content">
                            请假理由
                            <asp:RequiredFieldValidator ID="rfvr_description" runat="server" ForeColor="Red"
                                ErrorMessage="必填" ControlToValidate="txtle_remark"></asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtle_remark" runat="server" MaxLength="500" CssClass="form-control form_datetime"
                            TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </div>
                    <div class=" form-group">
                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" 
                            Text="提交请假申请" Onclick="btnSubmit_Click" />
                    </div>
                    </form>
                </div>
            </div>
           </div>
        </div>
        <uc2:MyFooter ID="MyFooter1" runat="server" />
    </div>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>

