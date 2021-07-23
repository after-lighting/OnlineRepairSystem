<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_N25175_Config_N25175_Config_SetRCode, App_Web_nb3hgnwi" enableEventValidation="false" %>


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
            <li class="active">首页二维码</li>
        </ul>
        <form  runat="server" id="from1">
            <div class="panel">

             <div class="form-group">
                <label for="exampleInputName2">
                    二维码图片：
                </label>
                <asp:FileUpload ID="fuImg" runat="server" />
                 <p>请上传二维码图片，二维码图片参数使用系统当前域名地址：例如：http://www.shuntun.com/
                   百度搜索二维码生成，在复制当前系统域名，将生成图片上传，推荐图片大小 213*213
                 </p>
            </div>
                  <div class="form-group">
                <label for="exampleInputName2">
                    二维码图片：
                </label>

                      <asp:Image ID="imgRCODE" runat="server"  CssClass="img-responsive"/>
            </div>
        <div class="form-group">
            <div class=" well-lg text-center">
                <asp:Button ID="btnUpdate" CssClass="btn btn-default btn-primary " runat="server" Text="设置二维码" OnClick="btnUpdate_Click" />
            </div>
            </div>
                </div>
        </form>
    </div>
</div>
</body>
</html>
