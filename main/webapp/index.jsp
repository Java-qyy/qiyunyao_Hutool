<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery/jquery-1.8.1.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/bootstrap-4.5.0-dist/css/bootstrap.min.css"/>
<title>Insert title here</title>
 <style type="text/css">
   	html{   
    width: 100%;   
    height: 100%;   
    overflow: hidden;   
    font-style: sans-serif;   
}   
body{   
    width: 100%;   
    height: 100%;   
    font-family: 'Open Sans',sans-serif;   
    margin: 0;   
    
}   
#login{   
    position: absolute;   
    top: 50%;   
    left:50%;   
    margin: -150px 0 0 -150px;   
    width: 300px;   
    height: 300px;   
   
}   
#login h1{   
    color: mediumblue;   
    letter-spacing: 1px;   
    text-align: center;   
}   
h1{   
    font-size: 2em;   
    margin: 0.67em 0;   
}   
input{   
    width: 278px;   
    height: 18px;   
    margin-bottom: 10px;   
    outline: none;   
    padding: 10px;   
    font-size: 13px;   
       
    text-shadow:1px 1px 1px;   
    border-top: 1px solid #312E3D;   
    border-left: 1px solid #312E3D;   
    border-right: 1px solid #312E3D;   
    border-bottom: 1px solid #56536A;   
    border-radius: 4px;   
   
}   
.but{   
    width: 300px;   
    min-height: 20px;   
    display: block;   
    background-color: #4a77d4;   
    border: 1px solid #3762bc;   
    color: #fff;   
    padding: 9px 14px;   
    font-size: 15px;   
    line-height: normal;   
    border-radius: 5px;   
    margin: 0;   
}  
   </style>
</head>
<body id="backgroundimg">  
    <div id="login">  
    	
        <h1>注册</h1>  
        <form  id="from1">  
            <input type="text" required="required" placeholder="用户名"  id="user" name="user" ></input>  
            <input type="password" required="required" placeholder="请输入密码"  id="password"  name="possword" ></input>  
			<input type="password" required="required" placeholder="再次输入密码"  id="zcpassword"  name="zcpossword" ></input>
            <input type="text" required="required" placeholder="请输入验证码"  id="yzm"  name="yzm" ></input>
            <img id="imgs" alt="" >
            <button id="huan" >看不清</button>
            <input type="text" required="required" placeholder="邮箱"  id="yx"  name="yx" ></input>
            <button id="youxiang" >发送邮箱</button>
         
            <button class="but" type="button" id="sub">注册</button>  
        </form>  
    </div>  
    <script type="text/javascript">
    var yzm_nr=null;

    $(function(){
    	var url = "<%=request.getContextPath()%>/pic.do?method=yzm"
			$.post(url,{},function(data){
				$("#imgs").attr("src","../qiyunyao_Hutool/imgs/pic.png")
				
				yzm_nr=data;
			})
			
    })
    $("#huan").click(function bdjg() {
    	var url = "<%=request.getContextPath()%>/pic.do?method=yzm"
			$.post(url,{},function(data){
				$("#imgs").attr("src","../qiyunyao_Hutool/imgs/pic.png")
				yzm_nr=data;
			})
    })
    	
    $("#youxiang").click(function () {
    	var url = "<%=request.getContextPath()%>/pic.do?method=yx"
			$.post(url,{},function(data){
				
			})
    	
    })
    
    
    $("#sub").click(function bdjg() {
		if ($("#user").val()=="") {
			alert("请输入用户名")
		} else if ($("#password").val() == "") {
			alert("请输入密码")
		} else if($("#zcpassword").val() == ""){
			alert("请输入密码")
		}else if($("#yzm").val() == ""){
			alert("请输入验证码")
		}else if($("#yzm").val() != yzm_nr){
			alert("验证码错误")
			huan();
		}else{
			alert("注册成功")
		}
	})
    </script>
</body>  
</html>