<%@ page language="C#" autoeventwireup="true" inherits="user_EvaluationExist, App_Web_3bt5r4t4" enableEventValidation="false" %>

<!DOCTYPE html>

<%@ Register Src="MyFooter.ascx" TagName="MyFooter" TagPrefix="uc2" %>
<%@ Register Src="MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>维修评价</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/control/plugin/raty/jquery.raty.css" rel="stylesheet" type="text/css" />
    <link href="css/rp.css" rel="stylesheet" type="text/css" />
    <script src="/control/js/jquery.js" type="text/javascript"></script>

</head>
<body>
    <div class="container">
        <uc1:MyHeader ID="MyHeader1" runat="server" />
        <div class="row">
            <div class="col-md-12">
                <div class="well ">
                 
                      <h3>该申请您已评价!</h3>
                      <p>当前申请您已评价，点击继续评价查看更多可评价报修！</p>
                      <p><a class="btn btn-primary " href="/user/Default.aspx?state=3" role="button">继续评价</a></p>
              
                </div>
            </div>
        </div>
        <uc2:MyFooter ID="MyFooter1" runat="server" />
    </div>

    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>

</body>
</html>
