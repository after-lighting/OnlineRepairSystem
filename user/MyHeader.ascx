<%@ control language="C#" autoeventwireup="true" inherits="RepairPerson_MyHeader, App_Web_npehv5dc" %>
<asp:Image ID="imgBanner" runat="server" class="img-responsive" />
<nav class="top-nav">
    <div class="container">
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


            <a class="brand" href="/user/Default.aspx"> 
                <img src="/user/images/logo.png">网上在线报修</a>
        </div>
        <div id="nav-container" class="nav-container" >
            <div class="navbar-left">
			    <form id='searchc' class="nav-search" action="/user/Default.aspx"  role="search">
                    <input class="form-control input-sm inline-block" name="title" type="text" placeholder="模糊查询报修内容标题" />
				    <a onclick="document.getElementById('searchc').submit()" class="input-icon text-primary"><i class="ion-ios7-search-strong"></i></a>
			    </form>
            </div>
            
            <ul class="navbar-right">
                <li>
                    <a href="/user/Repair.aspx">报修申请</a>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown" >我的报修<strong class="caret"></strong></a>
					<ul class="dropdown-menu">
                            	<li>
									<a href="/user/Default.aspx">全部</a>
								</li>
								<li>
									<a href="/user/Default.aspx?state=-1">未指派</a>
								</li>
                                <li>
									<a href="/user/Default.aspx?state=-2">改派申请</a>
								</li>
								<li>
									<a href="/user/Default.aspx?state=0">待处理</a>
								</li>
								<li>
									<a href="/user/Default.aspx?state=1">处理中</a>
								</li>
                                <li>
									<a href="/user/Default.aspx?state=2">驳回报修</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="/user/Default.aspx?state=3">未评价</a>
								</li>
								<li class="divider">
								</li>
								<li>
									<a href="/user/Default.aspx?state=4">已评价</a>
								</li>

					</ul>
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
		</div>
    </div>
</nav>
