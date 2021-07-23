<%@ page language="C#" autoeventwireup="true" inherits="user_Repair, App_Web_3bt5r4t4" enableEventValidation="false" %>

<%@ Register Src="/user/MyHeader.ascx" TagName="MyHeader" TagPrefix="uc1" %>
<%@ Register Src="/user/MyFooter.ascx" TagName="MyFooter" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>报修申请</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="/control/plugin/bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="/user/css/rp.css" rel="stylesheet" type="text/css" />

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
                                ControlToValidate="txtr_title"></asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtr_title" runat="server" CssClass="form-control"
                            placeholder="报修内容标题" MaxLength="255"></asp:TextBox>
                    </div>
                    <div class="form-group ">
                        <label for="txtn_date">
                            优先级</label>
                        <br />

                        <asp:DropDownList ID="ddlPriority"  CssClass="form-control" runat="server">
                            <asp:ListItem value="0">立刻</asp:ListItem>
                            <asp:ListItem value="1">优先</asp:ListItem>
                            <asp:ListItem value="2" Selected="True">普通</asp:ListItem>
                            <asp:ListItem value="3">允许暂缓</asp:ListItem>
                        </asp:DropDownList>


    <%--                    <label class="radio-inline">
                            <asp:RadioButton ID="rb_like" runat="server" GroupName="yxj" Checked="true" />
                            <span class="label label-info ">立刻</span>
                        </label>
                        <label class="radio-inline">
                            <asp:RadioButton ID="rb_youxian" runat="server" GroupName="yxj" />
                            <span class="label label-default">优先</span>
                        </label>
                        <label class="radio-inline">
                            <asp:RadioButton ID="rb_putong" runat="server" GroupName="yxj" />
                            <span class="label label-default">普通</span>
                        </label>
                        <label class="radio-inline">
                            <asp:RadioButton ID="rb_zanhuan" runat="server" GroupName="yxj" />
                            <span class="label label-default">允许暂缓</span>
                        </label>

--%>

                    </div>
                    <div class="form-group ">
                        <label for="txtn_content">
                            联系人
                            <asp:RequiredFieldValidator ID="rfvr_linkMan" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtr_linkMan"></asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtr_linkMan" runat="server" MaxLength="50" placeholder="输入报修联系人"
                            CssClass="form-control form_datetime"></asp:TextBox>
                    </div>
                    <div class="form-group ">
                        <label for="txtn_content">
                            联系电话
                            <asp:RequiredFieldValidator ID="rfvr_phone" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtr_phone"></asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtr_phone" runat="server" MaxLength="50" placeholder="输入报修联系人电话"
                            CssClass="form-control form_datetime"></asp:TextBox>
                    </div>
                    <div class="form-group ">
                        <label for="txtn_content">
                            报修地址
                            <asp:RequiredFieldValidator ID="rfvr_address" runat="server" ForeColor="Red" ErrorMessage="必填"
                                ControlToValidate="txtr_address"></asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtr_address" runat="server" MaxLength="50" CssClass="form-control form_datetime"
                            placeholder="填写故障设施所在地"></asp:TextBox>
                    </div>
                    <div class="form-group ">
                        <label for="txtn_content">
                            故障照片</label>
                        <div id="files">

                            <div class="row" style="padding: 10px; border-bottom: 1px dotted #c3c3c3">
                                <div class="col-md-8">
                                    <input id="file-1" name="file-1"   type="file"/><input name="findex" value="-1" type="hidden"/>
                                </div>
                                <div class="col-md-4">
                                    <button type="button" class="btn btn-xs" onclick="rdf(this)">
                                        X</button>
                                </div>
                            </div>

                        </div>
                        
                     
                        <div style="margin-top:20px;  border-bottom-style: ">
                        <button type="button" class="btn btn-primary btn-xs " onclick="addFileUp()"><span class="glyphicon  glyphicon-copy"></span> 上传更多照片</button>
                        </div>

                        <script type="text/javascript">
                            var index = 0;
                            function addFileUp() {
                                $("#files").append("<div class='row' style='padding:10px;border-bottom:1px dotted #c3c3c3'><div class='col-md-8'><input id=\"file" + index + "\" name='file" + index + "' type=\"file\" /><input name='findex' value='" + index + "' type='hidden' />  </div> <div class='col-md-4'><button type='button' class='btn btn-xs' onclick='rdf(this)'>X</button> </div></div>");
                                index++
                            }

                            function rdf(obj) {
                                $(obj).parent().parent().remove();
                            }
                        </script>

                        <p class=" help-block">
                            您可选择故障照片上传,只允许上传 .jpg, .jpeg, .gif, .png, .bmp 格式图片！</p>
                    </div>
                    <div class="form-group ">
                        <label for="txtn_content">
                            报修详细
                            <asp:RequiredFieldValidator ID="rfvr_description" runat="server" ForeColor="Red"
                                ErrorMessage="必填" ControlToValidate="txtr_description"></asp:RequiredFieldValidator></label>
                        <asp:TextBox ID="txtr_description" runat="server" MaxLength="500" CssClass="form-control form_datetime"
                            TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </div>
                    <div class=" form-group">
                        <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" 
                            Text="提交报修申请" onclick="btnSubmit_Click" />
                    </div>
                    </form>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel">
                    <h3>
                        报修须知</h3>
                    <div style="padding: 0px 10px 40px 10px;">
                        <asp:Literal ID="litRepairNote" runat="server"></asp:Literal>
                    </div>
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
