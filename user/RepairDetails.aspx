<%@ page language="C#" autoeventwireup="true" inherits="RepairPerson_RepairDetails, App_Web_3bt5r4t4" enableEventValidation="false" %>

<%@ Register Src="MyFooter.ascx" TagName="MyFooter" TagPrefix="uc2" %>
<%@ Register Src="MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修申请详细</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="/control/js/jquery.js" type="text/javascript"></script>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <link href="css/rp.css" rel="stylesheet" type="text/css" />
    <link href="/control/plugin/raty/jquery.raty.css" rel="stylesheet" type="text/css" />
    <script src="/control/plugin/raty/jquery.raty.js" type="text/javascript"></script>
</head>
<body>
    <div class="container">
        <uc1:MyHeader ID="MyHeader1" runat="server" />
        <div class="row">
            <div class="col-md-8">
                <div class="well">
                    <label for="txtn_content">
                        评价 内容：</label>

                    <asp:Literal ID="litEvaluation" runat="server"></asp:Literal>

                </div>
                <div class="well ">
                    <div class="form">

                        <div class="form-group ">
                            <label for="txtn_date">
                                标题:</label>

                            <asp:Literal ID="litTitle" runat="server"></asp:Literal>

                        </div>
                        <div class="form-group ">
                            <label for="txtn_date">
                                缓急程度:</label>

                            <asp:Literal ID="litPriority" runat="server"></asp:Literal>

                        </div>
                        <div class="form-group ">
                            <label for="txtn_content">
                                联系人:</label>

                            <asp:Literal ID="litlinkMan" runat="server"></asp:Literal>

                        </div>
                        <div class="form-group ">
                            <label for="txtn_content">
                                联系电话:</label>

                            <asp:Literal ID="litphone" runat="server"></asp:Literal>

                        </div>
                        <div class="form-group ">
                            <label for="txtn_content">
                                报修地址:</label>
                            
                                <asp:Literal ID="litaddress" runat="server"></asp:Literal>
                            
                        </div>
                        <div class="form-group ">
                            <label for="txtn_content">
                                维修负责人:</label>

                            <asp:Literal ID="litLeader" runat="server"></asp:Literal>

                        </div>
                        <div class="form-group ">
                            <label for="txtn_content">
                                报修详细:</label>

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
            <div class="col-md-4">

                <div class="well bw">
                    <h3>报修进程</h3>
                    <asp:Repeater ID="rptProcess" runat="server">
                        <HeaderTemplate>
                            <ul class="ui-comment">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <li class="comment-item">
                                <div class="comment-time">
                                    <p class="date-time">
                                        <strong style="width: 40px; line-height: 14px; text-align: right;"><%#((DateTime)Eval("p_cdate")).ToString("MM/dd HH:mm") %></strong>
                                    </p>
                                </div>
                                <div class="comment-post">

                                    <div class="comment-post-cnt">
                                        <div class="comment-post-arrow">
                                        </div>
                                        <%#Eval("p_process") %>
                                        <div>
                                            日期：<%#((DateTime)Eval("p_cdate")).ToString("yyyy-MM-dd") %>
                                        </div>
                                    </div>
                                    <div class="fn-clear">
                                    </div>
                                </div>
                                <!-- // comment-post end -->
                            </li>

                        </ItemTemplate>
                        <FooterTemplate>
                            </ul>
                        </FooterTemplate>

                    </asp:Repeater>



                    <%-- 
                        <li class="comment-item">
                            <div class="comment-time">
                                <p class="date-time">
                                    <strong style="width: 40px; line-height: 14px; text-align: right;">2014 05-04 22:22</strong>
                                </p>
                            </div>
                            <div class="comment-post">
                                <div class="comment-post-arrow">
                                </div>
                                <div class="comment-post-cnt">
                                    维修完成
                                    <div>
                                        时间：2010-10-10
                                    </div>
                                </div>
                                <div class="fn-clear">
                                </div>
                            </div>
                            <!-- // comment-post end -->
                        </li>
                        <li class="comment-item">
                            <div class="comment-time">
                                <p class="date-time">
                                    <strong style="width: 40px; line-height: 14px; text-align: right;">2014 05-04 22:22</strong>
                                </p>
                            </div>
                            <div class="comment-post">
                                <div class="comment-post-arrow">
                                </div>
                                <div class="comment-post-cnt">
                                    维修负责人处理中
                                    <div>
                                        时间：2010-10-10
                                    </div>
                                </div>
                                <div class="fn-clear">
                                </div>
                            </div>
                            <!-- // comment-post end -->
                        </li>
                        <li class="comment-item">
                            <div class="comment-time">
                                <p class="date-time">
                                    <strong style="width: 40px; line-height: 14px; text-align: right;">2014 05-04 22:22</strong>
                                </p>
                            </div>
                            <div class="comment-post">
                                <div class="comment-post-arrow">
                                </div>
                                <div class="comment-post-cnt">
                                    指派维修负责人
                                    <div>
                                        时间：2010-10-10
                                    </div>
                                </div>
                                <div class="fn-clear">
                                </div>
                            </div>
                            <!-- // comment-post end -->
                        </li>
                        <li class="comment-item">
                            <div class="comment-time">
                                <p class="date-time">
                                    <strong style="width: 40px; line-height: 14px; text-align: right;">2014 05-04 22:22</strong>
                                </p>
                            </div>
                            <div class="comment-post">
                                <div class="comment-post-arrow">
                                </div>
                                <div class="comment-post-cnt">
                                    报修申请
                                    <div>
                                        时间：2010-10-10
                                    </div>
                                </div>
                                <div class="fn-clear">
                                </div>
                            </div>
                            <!-- // comment-post end -->
                        </li>
                    </ul>--%>
                </div>
                <div class="well">
                    <div class="well">

                        <div id="x1">
                            维修速度：<span id="labSpeed"></span>
                        </div>
                        <div id="x2">
                            维修态度：<span id="labAttitude"></span>
                        </div>
                        <div id="x3">
                            维修质量：<span id="labQuality"></span>
                        </div>

                        <script type="text/javascript" language="javascript">
                            $(function () {
                                $.fn.raty.defaults.path = '/control/plugin/raty/images';

                                var a = '<%=speed%>';
                                if (a != "-1") {
                                    $('#x1').raty({ readOnly: true, score: a });
                                } else {
                                    $("#labSpeed").text('未评价');

                                }
                                var s = '<%=attitude%>';
                                if (s != "-1") {
                                    $('#x2').raty({ readOnly: true, score: 6 });
                                }
                                else {
                                    $("#labAttitude").text('未评价');
                                }
                                var q = '<%=quality%>';
                                if (s != "-1") {
                                    $('#x3').raty({ readOnly: true, score: q });
                                } else {
                                    $("#labQuality").text('未评价');
                                }

                            });

                        </script>
                    </div>
                </div>
            </div>
        </div>
        <uc2:MyFooter ID="MyFooter1" runat="server" />
    </div>
</body>
</html>
