<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_Config_N25175_Config_SetImg, App_Web_nb3hgnwi" enableEventValidation="false" %>


<!DOCTYPE html>
<%@ Register Src="/sysadmin/MainHeader.ascx" TagName="MainHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>编辑通知公告</title>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="/control/editor/ckeditor/ckeditor.js" type="text/javascript"></script>
    <link href="/control/css/main.css" rel="stylesheet" type="text/css" />
        <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>

        
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
            <li class="active">编辑<asp:Literal ID="litTitle" runat="server"></asp:Literal> </li>
        </ul>
        <form  runat="server" id="from1">
            <div class="panel">

             <div class="form-group">
                <label for="exampleInputName2">
                    横幅图片：
                </label>
                <asp:FileUpload ID="fuImg" runat="server" />
                 <p>横幅图片推荐上传 宽度 > 1140像素的图片，高度 200像素左右 </p>
            </div>
                  <div class="form-group">
                <label for="exampleInputName2">
                    横幅图片：
                </label>

                      <asp:Image ID="imgBanner" runat="server"  CssClass="img-responsive"/>
            </div>
        <div class="form-group">
            <div class=" well-lg text-center">
                <asp:Button ID="btnUpdate" CssClass="btn btn-default btn-primary " runat="server" Text="设置横幅图片" OnClick="btnUpdate_Click" />
            </div>
            </div>
                </div>
        </form>
    </div>
</div>
</body>
</html>
