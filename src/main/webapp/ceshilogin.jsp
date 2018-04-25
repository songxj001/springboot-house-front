<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <SCRIPT src="js/jquery-3.2.1/jquery-3.2.1.min.js" type="text/javascript"></SCRIPT>
    <script src="checkedCode/gVerify.js"></script>
    <link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.4.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.4.1/themes/icon.css">
    <script type="text/javascript" src="/js/jquery-easyui-1.4.1/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/js/jquery-easyui-1.4.1/locale/easyui-lang-zh_CN.js"></script>


    <!-- 5i5jcss和js -->
    <link href="passprot/css/common.css" rel="stylesheet" type="text/css">
    <link href="passprot/css/tdzSty.css" rel="stylesheet" type="text/css">
    <link rel="icon" href="/passprot/images/5i5j.ico" mce_href="/passport/images/5i5j.ico" type="image/x-icon" />
    <script src="passprot/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="passprot/js/commont.js"></script>
    <script language="JavaScript">var _trackDataType = 'web';var _trackData = _trackData || [];</script>
    <script type="text/javascript" >
        function checkinput(){
            //用户名控制
            var usernamevalue=document.getElementById('username').value;
            usernamevalue = usernamevalue.replace(/[ ]/g,"");
            if(usernamevalue.length==0){
                //  	alert('请输入用户名！');
                $('#namekong').show();
                $('#erromsg').hide();
                $('#passwordkong').hide();
                $('#nameerro').hide();
                document.getElementById('username').focus();
                showBtn();
                return false;
            }else  if(!(/^1[3456789]\d{9}$/.test(usernamevalue)))
            {
                //  alert("手机号码有误，请重填");
                $('#namekong').hide();
                $('#nameerro').show();
                $('#passwordkong').hide();
                $('#erromsg').hide();
                return false;
            }
            var passwordvalue=document.getElementById('password').value;

            //密码控制
            passwordvalue = passwordvalue.replace(/[ ]/g,"");
            if(passwordvalue.length==0){
                // alert('请输入密码！');
                $('#namekong').hide();
                $('#erromsg').hide();
                $('#nameerro').hide();
                $('#passwordkong').show();
                document.getElementById('password').focus();
                showBtn();
                return false;
            }
            if(passwordvalue.length>0 && usernamevalue.length>0 ){
                hideBtn();

                return true;
            }else{
                showBtn();
                return false;
            }
        }


        function phonecheck(){
            //用户名控制
            var usernamevalue=document.getElementById('phone').value;
            usernamevalue = usernamevalue.replace(/[ ]/g,"");
            if(usernamevalue.length==0){
                //   	alert('请输入手机号！');
                $('#phonekong').show();
                $('#phoneerro').hide();
                $('#codekong').hide();
                $('#eer').hide();
                document.getElementById('phone').focus();
                showBtn();
                return false;
            }else  if(!(/^1[3456789]\d{9}$/.test(usernamevalue)))
            {
                //  alert("手机号码有误，请重填");
                $('#phonekong').hide();
                $('#phoneerro').show();
                $('#codekong').hide();
                $('#eer').hide();
                return false;
            }
            var passwordvalue=document.getElementById('phonecode').value;

            //验证码控制
            passwordvalue = passwordvalue.replace(/[ ]/g,"");
            if(passwordvalue.length==0){
                //  alert('请输入密码！');
                $('#phonekong').hide();
                $('#phoneerro').hide();
                $('#codekong').show();
                $('#eer').hide();
                document.getElementById('phonecode').focus();
                showBtn();
                return false;
            }

            if(passwordvalue.length>0 && usernamevalue.length>0 ){
                hideBtn();

                return true;
            }else{
                showBtn();
                return false;
            }
        }
        function loginSubmit(){
            if(event.keyCode==13){
                if(checkinput()){
                    //alert(11);
                    hideBtn();
                    document.getElementById("signinActionForm").submit();
                }
            }
        }
        function showBtn(){
            document.getElementById('login').style.display='';
            document.getElementById('loginload').style.display='none';
        }

        function hideBtn(){
            document.getElementById('login').style.display='none';
            document.getElementById('loginload').style.display='';
        }

        if (document.addEventListener)
        {//如果是Firefox
            document.addEventListener("keypress", fireFoxHandler, true);
        }
        else
        {
            document.attachEvent("onkeypress", ieHandler);
        }
        function fireFoxHandler(evt)
        {
            var usernamevalue=document.getElementById('username').value;
            var passwordvalue=document.getElementById('password').value;
            usernamevalue = usernamevalue.replace(/[ ]/g,"");
            passwordvalue = passwordvalue.replace(/[ ]/g,"");
            if (evt.keyCode == 13 && usernamevalue.length >0 && passwordvalue.length >0)
            {
                if(checkinput()){
                    document.forms[0].submit();
                }
            }
        }
        function ieHandler(evt)
        {   var usernamevalue=document.getElementById('username').value;
            var passwordvalue=document.getElementById('password').value;
            usernamevalue = usernamevalue.replace(/[ ]/g,"");
            passwordvalue = passwordvalue.replace(/[ ]/g,"");
            if (evt.keyCode == 13 && usernamevalue.length >0 && passwordvalue.length >0)
            {
                if(checkinput()){
                    document.forms[0].submit();
                }
            }
        }

        /*账号密码登录  */
        function clicksubmit(){
            if(checkinput()){
                document.forms[0].submit();
            }
        }
        /* 手机号验证码登录 */
        function phonsubmit(){
            if(phonecheck()){
               // document.forms[1].submit();
                $.ajax({
                    url: "<%=request.getContextPath()%>/login/userLoginMethod",
                    type: "post",
                    data: {"phonenumer": $("#phone").val(), "verification": $("#phonecode").val()},
                    dataType: "json",
                    async: true,
                    success: function (data) {
                        if (data.success || data.success == "true") {
                            location.href = "index.jsp";
                        } else {
                            layer.alert("验证码错误");index.jsp
                        }
                    }
                });
            }
        }
        /* 发送验证码跳转后台 */
        function clicksubmitcode(){
            var value=document.getElementById("phone").value;
            document.getElementById("phone1").value=value;

            var valueservice=document.getElementById("service").value;
            document.getElementById("service1").value=valueservice;

            document.forms[2].submit();
        }

        /* 发送验证码验证手机号弹层 */
        function clickyzmBtn(){
            var phonevalue=document.getElementById('phone').value;
            phonevalue = phonevalue.replace(/[ ]/g,"");
            if(phonevalue.length==0){
                //	alert('请输入手机号！');
                $('#phonekong').show();
                $('#phoneerro').hide();
                $('#codekong').hide();
                $('#err').hide();
                document.getElementById('phone').focus();
                showBtn();
                return false;
            }else  if(!(/^1[3456789]\d{9}$/.test(phonevalue)))
            {
                // alert("手机号码有误，请重填");
                $('#phonekong').hide();
                $('#phoneerro').show();
                $('#codekong').hide();
                $('#err').hide();
                return false;
            }else{
                $('#codemessage').hide();
                aa();	//调取生成验证码
                resetCode()
                //$(".tcBox").removeClass("hide");
                /*$(".closeBtn").click(function(){
                    $(".tcBox").addClass("hide");
                })*/
            }
        }
        /*  倒计时*/
        function resetCode(){
            $('#J_getCode').hide();
            $('#J_second').html('60');
            $('#J_resetCode').show();
            var second = 60;
            var timer = null;
            timer = setInterval(function(){
                second -= 1;
                if(second >0 ){
                    $('#J_second').html(second);
                }else{
                    clearInterval(timer);
                    $('#J_getCode').show();
                    $('#J_resetCode').hide();
                }
            },1000);
        }
        function aa(){
            //var temp = new Date().getTime().toString(36);
            //var phone1=document.getElementById('phone').value;
           // document.getElementById('MzImgExpPwd').src = '/passport/verifycode.jsp?phone=' + phone1+'&temp='+temp;
            $.ajax({
                url: "../login/getInterfaceSMS",
                type: "post",
                dataType: "json",
                data: {"phonenumer": $("#phone").val()},
                async: true,
                success: function (data) {
                    if (data.success == 1) {
                        alert("发送成功！请注意查收！");
                    }
                    if (data.success == 2) {
                        alert("该手机号未注册！");
                    }
                    if (data.success == 3) {
                        layer.alert("请稍后！ 亲");
                    }
                    if (data.success == 3) {
                        layer.alert("系统繁忙");
                    }
                }
            });
        }
    </script>

    <title> 统一登录 </title>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
</head>
<body>
<div class="head-logo">
    <div class="head-main mar">
        <a href=https://bj.5i5j.com>
            <img src="passprot/images/Monsters-University-Character-Professor-Knight-Icon.png"></a>
    </div>
</div>

<div class="t-login ">
    <h4 class="tIt"><i></i>登录</h4>
    <div class="login-main clear">
        <div class="login-left lf">
            <ul class="login-tab">
                <li class="cur" id="usernamepassword" onclick='usernamepassword()'>账号密码登录</li><li  id="phoneshow" onclick='phoneshow()'>手机验证码登录</li>
            </ul>
            <div class="login-con">

                <div class="log_main" id="account">

                    <form id="signupForm" method="post" onsubmit="return clicksubmit();" action=/passport/sigin?city=bj>

                        <p class="marTop3 pBgs">
                            <input type="text" autocomplete="off" id="username"  name="username" placeholder="请输入手机号" value=""/>
                        </p>

                        <p class="marTop3 pBgs">
                            <input id="password"  name="password" type="password"  autocomplete="off" placeholder="请输入密码" />
                        </p>
                        <input type="hidden" id="aim" name="aim" value="pc" />
                        <!--  <p class="marTop3 err">错误提示</p> -->
                        <dd class="martop" >
                            <div class="err hide" id="namekong">用户名不能为空</div>
                            <div class="err hide" id="nameerro">请输入正确的手机号</div>
                            <div class="err hide" id="passwordkong">密码不能为空</div>
                        </dd>
                        <p><a class="wpassword" href=/passport/password?service=https://bj.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fbj.5i5j.com%2Fsmart%2Fershoufang%2F&status=1&city=bj>忘记密码</a></p>
                        <div class="signinNow">
                            <a onmousedown="_trackData.push(['addaction','PC_BJ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" href="javascript:void(0)" onclick ="clicksubmit();return false;" name="loginSubmit" id="login" class="setBtn">
                                <span>立 即 登 录</span></a>
                            <span  class="setBtn" style="display:none;" id="loginload" name="loginload">
	    			<!-- <img src="https://secure.dhgate.com/pstimage/2008/web20/seller/img/loadings.gif" /> -->
	    			<span>正 在 登 录</span>
	    		  </span>
                            <p class="register">还没有我爱我家账号？<a class="regBtn" href=/passprot/register?service=register.jsp>立即注册<i></i></a></p>
                        </div>
                        <input type="hidden" id="service" name="service" value="https://bj.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fbj.5i5j.com%2Fsmart%2Fershoufang%2F" />

                        <input type="hidden" id="status" name="status" value="1" />
                    </form>
                </div>
                <div class="log_main hide" id="mobile">
                    <form  method="post" onsubmit="return phonsubmit();" action=/passport/phon?city=bj>
                        <p class="marTop3 pBgs">
           	  <span class="lf">
					<input type="text"  autocomplete="off" id="phone"  name="phone" placeholder="请输入手机号" value=""/>
           	  </span>
                            <a class="yzmBtn" id="J_getCode" href="javascript:void(0)" onclick ="clickyzmBtn();return false;">发送验证码</a>

                            <a class="yzmBtn hide" href="javascript:void(0)" id="J_resetCode" ><span id="J_second">60</span>秒后重发</a>

                        </p>

                        <p class="marTop3 pBgs">
                            <input id="phonecode" name="phonecode" type="text" autocomplete="off"  placeholder="请输入验证码" />
                        </p>
                        <input type="hidden" id="aim" name="aim" value="pc" />
                        <input type="hidden" id="service" name="service" value="https://bj.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fbj.5i5j.com%2Fsmart%2Fershoufang%2F" />
                        <input type="hidden" id="city" name="city" value="bj" />
                        <input type="hidden" id="status" name="status" value="1" />
                        <!--  <p class="marTop3 err">错误提示</p> -->

                        <dd class="martop" >
                            <div class="err hide" id="phonekong">请输入手机号</div>
                            <div class="err hide" id="phoneerro">请输入正确的手机号</div>
                            <div class="err hide" id="codekong">请输入验证码</div>

                            <input type="hidden" name="errorCode" value="" id="errorCode"/>

                        </dd>
                        <p><a class="wpassword"  href=/passport/password?service=https://bj.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fbj.5i5j.com%2Fsmart%2Fershoufang%2F&status=1&city=bj>忘记密码</a></p>
                        <div class="signinNow">
                            <a onmousedown="_trackData.push(['addaction','PC_BJ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');"  href="javascript:void(0)" onclick ="phonsubmit();return false;" name="phonloginSubmit" id="phonlogin" class="setBtn">
                                <span>立 即 登 录</span></a>
                            <span  class="setBtn" style="display:none;" id="loginload" name="loginload">
	    			<!-- <img src="https://secure.dhgate.com/pstimage/2008/web20/seller/img/loadings.gif" /> -->
	    			<span>正 在 登 录</span>
	    		  </span>
                            <p class="register">还没有我爱我家账号？<a class="regBtn" href=/passport/register?service=https://bj.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fbj.5i5j.com%2Fsmart%2Fershoufang%2F&status=1&city=bj>立即注册<i></i></a></p>
                        </div>

                    </form>

                </div>

            </div>
        </div>
        <div class="login-right lf">
            <span class="or">or</span>
            <p>使用以下账号直接登录</p>
            <ul class="sf-login"><li>
            <a onmousedown="_trackData.push(['addaction','PC_BJ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" class="wx" href=/passprot/wxlogin.do?service=https://bj.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fbj.5i5j.com%2Fsmart%2Fershoufang%2F><img src="passprot/images/49-tencent-mm.png"></a></li>
            <li><a onmousedown="_trackData.push(['addaction','PC_BJ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" class="qq" href=/passprot/qqlogin.do?service=https://bj.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fbj.5i5j.com%2Fsmart%2Fershoufang%2F><img src="passprot/images/qq-8.png"></a></li>
            <li><a  onmousedown="_trackData.push(['addaction','PC_BJ_登录页','登录按钮']);ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" class="xl" href=/passprot/wblogin.do?service=https://bj.5i5j.com/reglogin/index?preUrl=https%3A%2F%2Fbj.5i5j.com%2Fsmart%2Fershoufang%2F><img src="passprot/images/68-sina-weibo.png"></a></li>
            </ul>
            <div class="ewmBox"><img src="passprot/images/banking_07.png"><p>[扫描下载我爱我家APP]</p></div>
        </div>
    </div>


</div>
<div class="footer-con mar"><p>北京我爱我家房地产经纪有限公司 版权所有 | 网络经营许可证 京ICP备11021901号-16  ©2016 5i5j.com, all rights reserved.</p></div>
<!-- 登录 End -->


<!-- 验证码弹层 --><%--
<div class="tcBox hide" >
    <form  method="post" onsubmit="return clicksubmitcode();"action=/passport/code?city=bj>
        <div class="yz-tan ">
            <p class="pTit">请先输入以下图形验证码</p>
            <div class="pSty">
                <input type="text" autocomplete="off" id="code"  name="code">
                <input type="hidden" id="phone1"  name="phone1" >
                <input type="hidden" id="service1"  name="service1">
                <input type="hidden" id="typecode"  name="typecode" value="2" >
                <input type="hidden" id="aim"  name="aim" value="pc" >

                <input type="hidden" id="status" name="status" value="1" />
                <span>
			 <a href="#" onclick="aa()">
					<img id="MzImgExpPwd" />
			 </a>
		</span>

            </div>
            <!-- <p class="err">错误提示</p> -->

            <a href="javascript:void(0)" onclick ="clicksubmitcode();return false;" name="logincode" id="logincode"  class="qBtn">
                <span>确定</span></a>
            <!-- 	<a class="qBtn">确定</a> -->
            <a class="closeBtn">关闭</a>
        </div>
    </form>


    <input type="hidden" id="pcusername"  name="pcusername" value="" >
    <input type="hidden" id="pcuserid"  name="pcuserid" value="" >

    <input type="hidden" id="error"  name="error" value="" >
    <input type="hidden" id="succee"  name="succee" value="" >
    <input type="hidden" id="pcmsg"  name="pcmsg" value="" >

</div>--%>


<%--
<script type="text/javascript">
    发送失败停留在手机页面
    var error=document.getElementById('error').value;
    if(error){
        aa();
        $(".tcBox").removeClass("hide");
        $(".closeBtn").click(function(){

            $(".tcBox").addClass("hide");
        })
        $('#mobile').show();
        $('#account').hide();
        $('#usernamepassword').removeClass("cur");
        $('#phoneshow').addClass("cur");
    }


</script>
--%>
<%--
<script type="text/javascript">
    // 发送成功后停留在手机号页面
    //var succee=
    var succee=document.getElementById('succee').value;
    if(succee){
        resetCode()
        $('#mobile').show();
        $('#account').hide();
        $('#usernamepassword').removeClass("cur");
        $('#phoneshow').addClass("cur");
    }

</script>--%>
<%--
<script type="text/javascript">
    //注册失败停留在手机号登录table页面
    //var pcmsg=
    var pcmsg=document.getElementById('pcmsg').value;
    if(pcmsg){
        $('#mobile').show();
        $('#account').hide();
        $('#usernamepassword').removeClass("cur");
        $('#phoneshow').addClass("cur");
    }

</script>--%>
<script type="text/javascript">
    //账号手机切换
    function usernamepassword(){
        $('#mobile').hide();
        $('#account').show();
        $('#phoneshow').removeClass("cur");
        $('#usernamepassword').addClass("cur");
    }

    function phoneshow(){
        $('#mobile').show();
        $('#account').hide();
        $('#usernamepassword').removeClass("cur");
        $('#phoneshow').addClass("cur");

    }

</script>
<script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', '', 'auto');//需传对应城市ID的ga
    ga('create', 'UA-103163281-15', 'auto','clientTracker');
    ga('send', 'pageview');
</script>



<script id="phpstat_js_id_10000001" src="/passprot/js/10000002.js?v=201711021538"></script>







<!-- <script src="/passport/js/private.js"></script>   -->

</body>
</html>

