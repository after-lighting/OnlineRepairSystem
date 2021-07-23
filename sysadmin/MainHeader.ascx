<%@ control language="C#" autoeventwireup="true" inherits="sysadmin_MainHeader, App_Web_bnisw2sy" %>

	<!-------------头部导航------------------>
    <nav class="top-nav" style="position:fixed;">
        <div class="nav-header">
            <!--移动模式右侧按钮-->
            <ul class="nav-right-btn pull-right">
                <li>
                    <a href="#" id="setBtn" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-cog"></i></a>
                    <ul class="dropdown-menu dropdown-sm pull-right user-dropdown">
						<li>
							<a href="/sysadmin/N25175_User/RepairUserList.aspx">报修用户
                                <span class="badge badge-success bounceIn animation-delay5 active">
                                    <asp:Literal ID="litNotValid2" runat="server"></asp:Literal>
                                </span>
                            </a>
						</li>
						<li>
							 <a href="/sysadmin/N25175_Leader/LeaderList.aspx">报修负责人</a>
						</li>
                        <li class="divider"></li>
                        <li>
							 <a href="/sysadmin/LeaveList.aspx">请假申请</a>
						</li>
                        <li>
							 <a href="/sysadmin/N25175_Reassigned/ReassignedList.aspx">改派申请 <span class="badge badge-danger">
                                    <asp:Literal ID="litReassignedNumber2" runat="server"></asp:Literal></span></a>
						</li>
                        <li>
							 <a href="/sysadmin/N25175_Repair/RepairList.aspx">报修申请单<span class="badge badge-danger bounceIn animation-delay6 active">
                                <asp:Literal ID="litstatemobile" runat="server"></asp:Literal></span></a>
						</li>
						<li class="divider"></li>
                        <li>
                            <a href="#" class="sidebarRight-toggle">管理设置<i class="ion-ios7-arrow-right pull-right"></i></a>
                        </li>
						<li>
							<a href="#"  class="sidebarRight-toggle-product inline-block">相关产品<i class="ion-ios7-arrow-right pull-right"></i></a>
						</li>
								
								
					</ul>
				</li>
			</ul>
			<!--logo-->
			<a href="/sysadmin/Dashboard.aspx" class="brand">
			    <img src="/user/images/logo.png">网上报修管理系统
			</a>
		</div>
		<div class="nav-container">
			<div class="navbar-left">
				<div class="nav-search">
                    <form id="searchc" action="/sysadmin/N25175_Repair/RepairList.aspx">
					<input type="text" class="form-control input-sm inline-block" placeholder="输入报修标题模糊查询" />
					<a href="#" onclick="document.getElementById('searchc').submit()" class="input-icon text-primary"><i class="ion-ios7-search-strong"></i></a>
                    </form>
				</div>
			</div>
			<ul class="navbar-right">
                <li class="dropdown">
				    <a href="#" data-toggle="dropdown">
						<i class="glyphicon glyphicon-user m-right-sm"></i>
								用户
						<i class="ion-ios7-arrow-down"></i>
					</a>
					<span class="badge badge-success bounceIn animation-delay5 active">
                        <asp:Literal ID="litNotValid" runat="server"></asp:Literal>
                    </span>
						<ul class="dropdown-menu message pull-right">
							<li>
								<a href="/sysadmin/N25175_User/RepairUserList.aspx">报修用户</a>
							</li>
							<li>
								<a href="/sysadmin/N25175_User/RepairUserList.aspx?u_verify=-1">未审核注册 
                                <span class="badge badge-success"><asp:Literal ID="litNotValid_2" runat="server"></asp:Literal></span></a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="/sysadmin/N25175_Leader/LeaderList.aspx" >报修负责人</a>
							</li>
							
							</ul>
						</li>
                        <li>
                            <a href="/sysadmin/LeaveList.aspx">请假申请
                            </a></li>
						<li>
                        
							<a href="/sysadmin/N25175_Reassigned/ReassignedList.aspx">改派申请 
                                <span class="badge badge-danger">
                                    <asp:Literal ID="litReassignedNumber" runat="server"></asp:Literal></span></a>
						</li>
                        <li>
							<a href="#" data-toggle="dropdown">
								<i class="glyphicon glyphicon-bell  m-right-sm"></i>
								报修申请单
								<i class="ion-ios7-arrow-down"></i>
							</a>
							<span class="badge badge-danger bounceIn animation-delay6 active">
                                <asp:Literal ID="litstate" runat="server"></asp:Literal></span>
							<ul class="dropdown-menu notification dropdown-3 pull-right">
								<li>
									<a href="/sysadmin/N25175_Repair/RepairList.aspx">全部</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="/sysadmin/N25175_Repair/RepairList.aspx?state=-1">未指派 <span class="badge badge-danger"><asp:Literal ID="litstate_1" runat="server"></asp:Literal></span></a>
								</li>
                                 <li>
                                <a href="/sysadmin/N25175_Repair/RepairList.aspx?state=-2">申请改派 <span class="badge badge-danger"><asp:Literal ID="litstate_2" runat="server"></asp:Literal></span></a>
                                </li>
								<li>
									<a href="/sysadmin/N25175_Repair/RepairList.aspx?state=0">待处理 <span class="badge badge-danger"><asp:Literal ID="litstate0" runat="server"></asp:Literal></span></a>
								</li>
								<li>
									<a href="/sysadmin/N25175_Repair/RepairList.aspx?state=1">处理中 <span class="badge badge-danger"><asp:Literal ID="litstate1" runat="server"></asp:Literal></span></a>
								</li>
								<li>
									<a href="/sysadmin/N25175_Repair/RepairList.aspx?state=2">驳回报修 <span class="badge badge-danger"><asp:Literal ID="litstate2" runat="server"></asp:Literal></span></a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="/sysadmin/N25175_Repair/RepairList.aspx?state=3" title="维修完成但是未评价">未评价 <span class="badge badge-danger"><asp:Literal ID="litstate3" runat="server"></asp:Literal></span></a>
								</li>
								<li>
									<a href="/sysadmin/N25175_Repair/RepairList.aspx?state=4">已评价 <span class="badge"><asp:Literal ID="litstate4" runat="server"></asp:Literal></span></a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="/sysadmin/N25175_Repair/BadEvaluation.aspx">用户评价 </a>
								</li>
							</ul>
						</li>
					    <li>
							<a href="#" data-toggle="dropdown">	
                            <i class="glyphicon glyphicon-cog"></i>
								管理设置
								<i class="ion-ios7-arrow-down"></i>
							</a>
                            <ul class="dropdown-menu pull-right">
                                <li>
									<a href="/sysadmin/UpdatePass.aspx">修改密码</a>
								</li>
                                <li>
                                    <a href="/sysadmin/UpdateAnswer.aspx">重置答案</a>
                                </li>
                                <li>
									<a href="/sysadmin/Exit.aspx">退出登陆</a>
								</li>
								<li class="divider">
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=zcxz">注册须知</a> 
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=fzrxz">维修负责人须知</a>
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=bxxz">报修须知</a>
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=pjxz">评价须知</a>
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=footer">底部信息</a>
								</li> 
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_SetImg.aspx?id=banner">横幅图片</a>
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_SetRCode.aspx">首页二维码</a>
								</li>                  
                                <li class="divider"></li>

                               <li>
									<a  href='http://www.shuntun.com/'  target='_blank'>技术支持</a>
                                 
								</li>
                            </ul>
                        </li>
					 <li>
							<a href="#" data-toggle="dropdown">	
                            <i class="glyphicon glyphicon-link  m-right-xs"></i>
								相关产品
								<i class="ion-ios7-arrow-down"></i>
							</a>
                            <ul style="width:250px;" class="dropdown-menu notification dropdown-3 product-link pull-right">
                                <asp:Literal ID="Lit_Product" runat="server"></asp:Literal>
                            </ul>
                        </li>
					</ul>
				</div>
			</nav><!--/头部导航-->

			<!------------头部导航-右侧管理设置（页面左移弹出）------------>
			<div class="sidebar-right">
				<div class="sidebar-inner scrollable-sidebar">
					<div class="sidebar-header clearfix">
						相关产品
					</div>
					<div class="content-block">
						<ul class="sidebar-list">
							 <li>
									<a href="/sysadmin/UpdatePass.aspx">修改密码</a>
								</li>
                                		<li>
									<a href="/sysadmin/Exit.aspx">退出登陆</a>
								</li>
								<li class="divider">
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=zcxz">注册须知</a> 
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=fzrxz">维修负责人须知</a>
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=bxxz">报修须知</a>
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=pjxz">评价须知</a>
								</li>
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_Update.aspx?id=footer">底部信息</a>
								</li>
                                
                                <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_SetImg.aspx?id=banner">横幅图片</a>
								</li>
                                              <li>
									<a href="/sysadmin/N25175_Config/N25175_Config_SetRCode.aspx">首页二维码</a>
								</li>
                                
                           
                                <li class="divider">
								</li>

       

                               <li>
									<a  href='http://www.shuntun.com/'  target='_blank'>技术支持</a>
                                 
								</li>
						</ul>
					</div>
				</div>
			</div>
			<!------------头部导航-右侧相关产品（页面左移弹出）------------>
			<div class="sidebar-right-product">
				<div class="sidebar-inner scrollable-sidebar">
					<div class="sidebar-header clearfix">
						相关产品
					</div>
					<div class="content-block">
						<ul class="sidebar-list">
                            <asp:Literal ID="Lit_Product1" runat="server"></asp:Literal>
						</ul>
					</div>
				</div>
			</div>
            <div id="weixin" class="weixin">
                <a href="javascript:;" class="weixin_s"><i class="glyphicon glyphicon-qrcode"></i>
                </a>
                <div class="weixin_b">
                    <img src="css/qrcode.jpg" />
                </div>
            </div>
<script src="/sysadmin/js/custom.js" type="text/javascript"></script>
