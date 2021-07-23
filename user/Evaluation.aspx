<%@ page language="C#" autoeventwireup="true" inherits="user_Evaluation, App_Web_3bt5r4t4" enableEventValidation="false" %>

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
            <div class="col-md-8">
                <div class="well">
                    <div class="page-header">
                        <h3>

                            <asp:Literal ID="litTitle" runat="server"></asp:Literal>

                        </h3>
                    </div>
                    
                    <form runat="server" id="from1">
                        <div class="form-group ">
                            <label class="radio-inline">
                              
                                <asp:RadioButton ID="rbHaoPing" GroupName="ping" Checked="true" runat="server" />

                                <span class="label label-danger ">好评</span> 
                            </label>
                            <label class="radio-inline">

                                <asp:RadioButton ID="rbZhongPing" GroupName="ping" runat="server" />

                                <span class="label  label-warning">中评</span>
                            </label>
                            <label class="radio-inline">

                                <asp:RadioButton ID="rbChaPing" GroupName="ping" runat="server" />

                                <span class="label label-default">差评</span>
                            </label>
                        </div>

                        <div class="form-group ">
                            <div id="x1">
                                维修速度：
                            </div>
                            <div id="x2">
                                维修态度：
                            </div>
                            <div id="x3">
                                维修质量：
                            </div>

                        </div>
                        <div class="form-group">
                           
                                <button id="wwx" type="button" class="btn btn-default">又快又好</button>
                                <button id="clz" type="button" class="btn btn-default">维修快</button>
                                <button id="wxwc" type="button" class="btn btn-default">维修好</button>
                                <script type="text/javascript">
                                    $(function () {
                                        $("#wwx").click(function () {
                                            $("#txtContent").val('报修申请处理的及时，问题也完美解决。');
                                        });

                                        $("#clz").click(function () {
                                            $("#txtContent").val('报修申请处理的及时。');
                                        });

                                        $("#wxwc").click(function () {
                                            $("#txtContent").val('报修问题已解决。');
                                        });
                                    });
                               </script>
                        </div>

                        <div class="form-group ">
                            <label for="txtn_content">
                                评价内容</label>
                            <asp:TextBox ID="txtContent" Rows="4" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <p class="help-block">

                                <asp:RequiredFieldValidator ID="rfvtxtContent" runat="server" ErrorMessage="请填写评价内容" ControlToValidate="txtContent" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>

                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="提交评价" OnClick="btnSubmit_Click" />
                        </div>
                    </form>
                </div>

            </div>
            <div class="col-md-4">
                <div class="well">
                    <h3>评价须知</h3>
                    <div style="padding: 0px 10px 40px 10px;">
                 
                        <asp:Literal ID="litContent" runat="server"></asp:Literal>

                    </div>
                </div>
            </div>
        </div>
        <uc2:MyFooter ID="MyFooter1" runat="server" />
    </div>

    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="/control/plugin/raty/jquery.raty.js" type="text/javascript"></script>

    <script type="text/javascript" language="javascript">
        $(function () {
            $.fn.raty.defaults.path = '/control/plugin/raty/images';
            $('#x1').raty({ score: 5 });
            $('#x2').raty({ score: 5 });
            $('#x3').raty({ score: 5 });
        });
    </script>

</body>
</html>