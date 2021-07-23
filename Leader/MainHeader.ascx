<%@ control language="C#" autoeventwireup="true" inherits="sysadmin_MainHeader, App_Web_yv4dsjwv" %>
            <asp:Image ID="imgBanner" runat="server" class="img-responsive"  />
            <nav class="top-nav" role="navigation">
                <div class="nav-header">
                     <ul class="nav-right-btn pull-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-cog"></i></a>
                             <ul class="dropdown-menu  pull-right">
                                <li>
                                    <a href="/user/Repair.aspx">报修申请</a>
                                </li>
                                <li class="dropdown">
                                    <a href="/user/Default.aspx">我的报修</a>
				                </li>
                                <li>
                                    <a href="/user/Leave.aspx">请假申请</a>
                                </li>
                                <li>
                                    <a href="/user/MyLeave.aspx">我的请假</a>
                                </li>
                                <li>
                                    <a href="/user/UpdatePass.aspx">修改密码 </a>
                                </li>
			                </ul>
                        </li>
                     </ul>
                     <a class="brand" href="/Leader/N25175_Repair/RepairList.aspx"> 
                            <img src="/user/images/logo.png">维修负责人管理平台</a>
                 
                </div>
                <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
                    <div class="navbar-left">
                       <div class="nav-search">
                            <form id="searchc" action="/leader/N25175_Repair/RepairList.aspx">
					            <input type="text" class="form-control input-sm inline-block" placeholder="输入报修标题模糊查询" />
					            <a href="#" onclick="document.getElementById('searchc').submit()" class="input-icon text-primary"><i class="ion-ios7-search-strong"></i></a>
                            </form>
				        </div>            
                    </div> 
                    <ul class="navbar-right">
                        <li>
                            <a href="/Leader/N25175_Reassigned/ReassignedList.aspx">改派申请 </a>
                        </li>
                        <li class="dropdown"> 
                            <a class="dropdown-toggle" href="/Leader/N25175_Repair/RepairList.aspx" data-toggle="dropdown">报修申请单  <span class="badge badge-danger">
                                <asp:Literal ID="litState" runat="server"></asp:Literal></span>
                                <strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="/Leader/N25175_Repair/RepairList.aspx">全部</a>
                                </li>
                                <li>
                                    <a href="/Leader/N25175_Repair/RepairList.aspx?state=-2">改派申请</a>
                                </li>
                                <li>
                                    <a href="/Leader/N25175_Repair/RepairList.aspx?state=0">待处理  <span class="badge badge-danger"><asp:Literal ID="litState_1" runat="server"></asp:Literal></span></a>
                                </li>
                                <li>
                                    <a href="/Leader/N25175_Repair/RepairList.aspx?state=1">处理中</a>
                                </li>
                                <li>
                                    <a href="/Leader/N25175_Repair/RepairList.aspx?state=2">驳回报修</a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="/Leader/N25175_Repair/RepairList.aspx?state=3">未评价</a>
                                </li>
                                <li>
                                    <a href="/Leader/N25175_Repair/RepairList.aspx?state=4">已评价</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="/Leader/UpdatePass.aspx">修改密码 </a>
                        </li>
                    </ul>
                </div>
            </nav>

