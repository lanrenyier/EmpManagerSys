<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>Ա������ϵͳ</TITLE>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk">
		<LINK href="css/loginback.css" type=text/css rel=stylesheet>
		<script type="text/javascript" src="js/jquery-1.4.3.js"></script>
		<script language="javascript">
		var username_flag=false;
		var password_flag=false;
		var number_flag=false;
		$(function (){
			$("#txtUsername").blur(function (){
				username_flag=false;
				$("#usernameMsg").html("");
				var username = $("#txtUsername").val();
				if (username == "") {
							$("#usernameMsg").html("�û�������Ϊ��");
							return;
				}
				username_flag=true;
			});
		});
		$(function (){
			$("#txtPassword").blur(function (){
				password_flag=false;
				$("#passwordMsg").html("");
				var password = $("#txtPassword").val();
				if (password == "") {
							$("#passwordMsg").html("���벻��Ϊ��");
							return;
				}
				password_flag=true;
			});
			
		});
			$(function(){
	$("#imageCode").blur(function(){

		password_flag=false;
				$("#passwordMsg").html("");
				var password = $("#txtPassword").val();
				if (password == "") {
							$("#passwordMsg").html("���벻��Ϊ��");
							return;
				}
				password_flag=true;
		
		});
		});
	$(function(){
	$("#imageCode").blur(function(){

		number_flag=false;
		$("#numberMsg").html("");
		var number=$("#imageCode").val();
		if(number==""){
		$("#numberMsg").html("��֤�벻��Ϊ��");
		return;
		}
		
		$.post("checkcode.action",
		{"number":number},
		function(data){
			if(data){
					$("#numberMsg").html("��֤����ȷ");
					number_flag=true;
				}else{
					$("#numberMsg").html("��֤�����");
				}
		}
		);
		});
		});
	$(function(){
	$("#change").click(function(){
		//�޸�src����
		$("#imgCode").attr("src","image.action?dt="+new Date().getTime());
		return false;//��ֹhref����
	});
	});
	$(function(){
	$("#login_form").submit(function(){
				if(!username_flag){
				alert("�û�������Ϊ��...");
				return false;
				}
				if(!password_flag){
				alert("���벻��Ϊ��...");
				return false;
				}
				if(!number_flag){
				alert("����֤����Ϣ�д�");
				return false;
				}
				return true;
	});
	});
 </script>
		<META content="MSHTML 6.00.2900.5848" name=GENERATOR>
	</HEAD>
	<BODY>
		<DIV id=div1>
		<form name="login" method="POST" action="login.action" id="login_form">
			<TABLE id="login" height="500px" cellSpacing=0 cellPadding=0 width="800px"
				align=center>
				<TBODY>
					<TR id="main">
						<TD>
							<TABLE height="400px" cellSpacing=0 cellPadding=0 width="100%">
								<TBODY>
<!-- 									<TR > -->
<!-- 										<TD colSpan=4> -->
<!-- 											&nbsp; -->
<!-- 										</TD> -->
<!-- 									</TR> -->
									<TR height="50px;">
										<TD width="230px">
											&nbsp;
										</TD>
										<TD>
											&nbsp;
										</TD>
										<TD>
											&nbsp;
										</TD>
										<TD>
											&nbsp;
										</TD>
									</TR>
									<TR height=40>
										<TD rowSpan=4>
											&nbsp;
										</TD>
										<TD>
											�û�����
										</TD>
										<TD style="width: 190px;">
											<input class=textbox type="text" name="username" id="txtUsername"  />
											<span  id="usernameMsg" style="color:red">${username_error}</span>
										</TD>
										<TD width=120>
											&nbsp;
										</TD>
										
									</TR>
									<TR height=40>
										<TD>
											�� �룺
										</TD>
										<TD>
												<input class=textbox type="password" name="password" id="txtPassword" />
												&nbsp;<span id="passwordMsg" style="color:red">${password_error}</span>
										</TD>
										<TD width=120>
											&nbsp;
										</TD>
									</TR>
									
									<TR height=40>
										<TD>
											��֤�룺
										</TD>
										<TD>
											 <input type="text" size=5 name="number" id="imageCode" style="width: 180px;" /> 
										</TD>
										<td><img id='imgCode' src="image.action" 
												width="100" height="25" />
												<span id="numberMsg" style="color:red"></span>
											<a href="#" id="change">����ͼƬ</a></td>
									</TR>
									<TR height=40>
										<TD></TD>
										<TD align=center>
											<input type="submit" id="login" value="�� ¼" style="width: 200px;height: 50px;display: block; background-color:  #ffbeb8; border: 1px solid #3762bc;color: #fff; padding: 9px 14px;font-size: 15px;border-radius: 5px; position: absolute;" />
										</TD>
										<TD width=120>
											&nbsp;
										</TD>
									</TR>
									<TR height=110>
										<TD colSpan=4>
											&nbsp;
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</TD>
					</TR>
<!-- 					<TR id="root" height=50> -->
<!-- 						<TD> -->
<!-- 							&nbsp; -->
<!-- 						</TD> -->
<!-- 					</TR> -->
				</TBODY>
			</TABLE>
			
			</form>
		</DIV>
		<DIV id=div2 style="DISPLAY: none"></DIV>
		</CONTENTTEMPLATE>
	</BODY>
</HTML>
