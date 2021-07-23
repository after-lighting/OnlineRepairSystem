<%@ page language="C#" autoeventwireup="true" inherits="sysadmin_Login, App_Web_bnisw2sy" enableEventValidation="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <title>系统管理员登录</title>
    <!-- Bootstrap core CSS -->
    <!-- Custom styles for this template -->
    <link href="/control/plugin/bootstrap3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        body
        {
            padding-top: 80px;
        }
    </style>
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
</head>
<body>
 
    <div class="container">
      <div class="row ">
            <div class="col-md-4 col-sm-offset-4">


        <div class="well well-sm" style='margin:0px auto'> 
             <div style="text-align: center; ">
            <h2 class="form-signin-heading">
                系统管理员登录
            </h2>
        </div>
     
               <form id="Form1" class="form-signin" role="form" runat="server">
                <div class="form-group">
                    <label for="exampleInputEmail1">
                        用户名：
                    </label>
                    <asp:TextBox ID="txtUsername" class="form-control" runat="server" placeholder="用户名"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">
                        密码：
                    </label>
                    <asp:TextBox ID="txtPassword" class="form-control" runat="server" placeholder="密码"
                        TextMode="Password"></asp:TextBox>
                </div>
        
                <div class="form-group"  >
                    <label for="exampleInputPassword1">
                        输入验证码：
                    </label>
                    <asp:TextBox ID="txtValid" class="form-control" runat="server" MaxLength="4" placeholder="验证码"></asp:TextBox>
                </div>
                <label class="checkbox">
                    <img alt="验证码" id="ImageCheck" src="validCode.aspx" style='width:100%; cursor: pointer' onclick="ChangeCode()" />
                </label>
     
                <div class="form-group">
                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-lg btn-primary btn-block"
                        Text="登录" OnClick="btnLogin_Click" />
                </div>
         
                </form>
           
        </div>
       <div class=" well-sm text-center">
                   
                   
                        <a href="regsiter/Register.aspx">免费授权</a>&nbsp;&nbsp;
                        <a href="Reset.aspx">密码重置</a>
                </div>

        </div>
        </div>
      
    </div>
   
</body>
</html>
