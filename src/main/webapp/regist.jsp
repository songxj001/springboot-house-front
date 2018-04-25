<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2018/3/26
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en"><head>
    <link rel="icon" href="/passport/images/5i5j.ico" mce_href="/passport/images/5i5j.ico" type="image/x-icon">
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script language="JavaScript">var _trackDataType = 'web';var _trackData = _trackData || [];</script>
    <script type="text/javascript">

        /* 发送验证码验证手机号弹层 */
        function clickyzmBtn(){
            var phonevalue=document.getElementById('phonenumer').value;
            phonevalue = phonevalue.replace(/[ ]/g,"");
            if(phonevalue.length==0){
                //	alert('请输入手机号！');
                $("#phonekong").show();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();

                document.getElementById('phonenumer').focus();
                showBtn();
                return false;
            }else  if(!(/^1[3456789]\d{9}$/.test(phonevalue)))
            {
                //  alert("手机号码有误，请重填");

                $("#phonekong").hide();
                $("#phoneerro").show();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                return false;
            }else{
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#codemessage').hide();
                /*$(".tcBox").removeClass("hide");
                $(".closeBtn").click(function(){ b
                    $(".tcBox").addClass("hide");
                })*/
                getma();
            }
        }

        /*  发送验证码到后台*/
       /* function clicksubmitcode(){
            var valuephone=document.getElementById("phonenumer").value;
            document.getElementById("phone1").value=valuephone;

            var valueservice=document.getElementById("service").value;
            document.getElementById("service1").value=valueservice;


            document.forms[1].submit();

        }*/

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
        /* 注册效验 */
        function checkinput(){
            //用户名控制
            var phone=document.getElementById('phonenumer').value;
            phonevalue = phone.replace(/[ ]/g,"");
            if(phonevalue.length==0){
                //	alert('请输入手机号！');
                $("#phonekong").show();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('phonenumer').focus();
                showBtn();
                return false;
            }else  if(!(/^1[3456789]\d{9}$/.test(phonevalue)))
            {
                // alert("手机号码有误，请重填");
                $("#phonekong").hide();
                $("#phoneerro").show();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                return false;
            }

//验证码控制
            var phonecode=document.getElementById('phonecode').value;
            phonecodevalue = phonecode.replace(/[ ]/g,"");
            if(phonecodevalue.length==0){
                //     alert('请输验证码！');
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").show();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('phonecode').focus();
                showBtn();
                return false;
            }

//昵称控制
            var nickname=document.getElementById('nickname').value;
            nickname = nickname.replace(/[ ]/g,"");
            if(nickname.length==0){
                hideBtn();
                /*   return true; */
            }else if(!(/^[a-zA-Z0-9_\u4E00-\u9FA5]{2,16}$/.test(nickname))){
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').show();
                document.getElementById('nickname').focus();
                showBtn();
                return false;
            }


//密码控制
            var pwd=document.getElementById('password').value;
            pwdvalue = pwd.replace(/[ ]/g,"");
            if(pwdvalue.length==0){
                // alert('请输入密码！');
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").show();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('password').focus();
                showBtn();
                return false;
            }else if(!(/^[\x21-\x7E]{6,20}$/.test(pwdvalue))){
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').show();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('passwword').focus();
                showBtn();
                return false;

            }
//再次确认密码控制
            var password=document.getElementById('pwdss').value;
            passwordvalue = password.replace(/[ ]/g,"");
            if(passwordvalue.length==0){
                // alert('请输入确认密码！');
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").show();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('pwdss').focus();
                showBtn();
                return false;
            }else if(password!=password){
                // alert('与第一次输入的密码不一致！');
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").show();
                $('#err').hide();
                $('#kk').hide();
                $('#xy').hide();
                $('#nn').hide();
                document.getElementById('pwdss').focus();
                showBtn();
                return false;

            }

            if(!document.getElementById("xybox").checked){
                $("#phonekong").hide();
                $("#phoneerro").hide();
                $("#codekong").hide();
                $("#pwdkong").hide();
                $("#cc").hide();
                $("#dd").hide();
                $('#err').hide();
                $('#kk').hide();
                $('#nn').hide();
                $('#xy').show();
                showBtn();
                return false;
            }



            if(phonecodevalue.length>0 && phonevalue.length>0 ){
                hideBtn();

                return true;
            }else{
                showBtn();
                return false;
            }
        }

        /*注册  */
        function clicksubmit(){
            /*if(checkinput()){
                document.forms[0].submit();
            }*/
            $.ajax({
                url: "../regist/regist.do",
                type: "post",
                dataType: "json",
                data: $('#form1').serialize(),
                async: true,
                success: function (data) {
                    alert("注册成功");
                    location.href="ceshilogin.jsp"
                }
            })

        }


        function showBtn(){
            document.getElementById('register').style.display='';
            document.getElementById('registerload').style.display='none';
        }

        function hideBtn(){
            document.getElementById('register').style.display='none';
            document.getElementById('registerload').style.display='';
        }
        //请求后台获取短信验证码
        function getma(){

           /* var temp = new Date().getTime().toString(36);
            var phone1=document.getElementById('registerphone').value;
            document.getElementById('MzImgExpPwd').src = '/passport/verifycode.jsp?phone=' + phone1+'&temp='+temp;*/
            //发送后台验证码
            //执行发送短信的ajax
           /* $.ajax({
                url:"../user/sendInfo.do",
                type:"post",
                data:{'phonenumber':$("#phonekong").val()},
                dataType:"json",
                success:function (map) {
                    if(map.success){
                       alert("请在5分钟内输入验证码！")
                    }
                }
            })*/
            $.ajax({
                url: "../login/getInterfaceSMS",
                type: "post",
                dataType: "json",
                data: {"phonenumer": $("#phonenumer").val()},
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
    <title> 注册   </title>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <link href="/passport/css/common.css" rel="stylesheet" type="text/css">
    <link href="/passport/css/tdzSty.css" rel="stylesheet" type="text/css">

    <script src="/js/jquery-3.2.1/jquery-3.2.1.min.js"></script>

</head>

<body style="">

<div class="head-logo"><div class="head-main mar">


    <a href="/index.jsp" ><h1 style="color: #a6e1ec">富家房产</h1></a>
</div></div>


<!-- 注册  -->
<div class="zcBox mar">
    <form method="post" action="../regist/regist.do"  id="form1"> bbbbbbbbbbbb
        <h4 class="tIt"><i></i>创建账户</h4>
        <div class="login-main clear">
            <div class="login-left lf">
                <div class="login-con">
                    <div class="log_main cjUser">
                        <p class="pBgs"><span class="lf"><input id="phonenumer" name="phonenumer" type="text" placeholder="请输入手机号" value=""></span>
                            <a class="yzmBtn" id="J_getCode" href="javascript:void(0)" onclick="clickyzmBtn();return false;">发送验证码</a>
                            <a class="yzmBtn hide" href="javascript:void(0)" id="J_resetCode"><span id="J_second">60</span>秒后重发</a>
                        </p>

                        <p class="pBgs"><input id="phonecode" name="phonecode" type="text" autocomplete="off" placeholder="请输入短信验证码"></p>
                        <p class="pBgs"><input id="nickname" name="name" type="text" autocomplete="off" placeholder="请输入2-16个字的昵称" value=""></p>
                        <p class="pBgs"><input id="password" name="password" type="password" autocomplete="off" placeholder="请输入密码(6-20位字母、数字)" value=""></p>
                        <p class="pBgs"><input id="pwdss" name="pwdss" type="password" autocomplete="off" placeholder="请确认密码" value=""></p>
                        <input type="hidden" id="service" name="service" value="http://bj.5i5j.com/reglogin/index?preUrl=https://bj.5i5j.com/">
                        <input type="hidden" id="status" name="status" value="1">

                        <!-- <p class="err">您输入的短信验证码有误</p> -->



                        <div class="err hide" id="phonekong">请输入手机号</div>
                        <div class="err hide" id="phoneerro">请输入正确的手机号</div>
                        <div class="err hide" id="codekong">请输入验证码</div>
                        <div class="err hide" id="pwdkong">请设置登录密码</div>
                        <div class="err hide" id="cc">请确认密码</div>
                        <div class="err hide" id="dd">两次输入的密码不一致</div>
                        <div class="err hide" id="kk">请设置密码为6-20位字母或数字</div>
                        <div class="err hide" id="nn">请输入2-16个字的昵称</div>
                        <div class="err hide" id="xy">请勾选《我爱我家用户使用协议》</div>

                        <!-- <a class="zcBtn">注册</a> -->

                        <a onmousedown="_trackData.push(['addaction','PC_BJ_注册页','注册按钮']);	ga('send','event','PC_BJ_注册页','注册按钮','PC_BJ_注册页_注册按钮');" href="javascript:void(0)" onclick="clicksubmit();return false;"  name="register" id="register" class="zcBtn">
                            <span>注册</span></a>
                        <span class="zcBtn" style="display:none;" id="registerload" name="registerload">
	    			<!-- <img src="https://secure.dhgate.com/pstimage/2008/web20/seller/img/loadings.gif" /> -->
	    			<span>正 在 注册</span>
	    		  </span>


                        <p class="xieyi"><input type="checkbox" id="xybox" checked="checked">我已阅读并同意<a class="xyBtn">《我爱我家用户使用协议》</a></p>

                    </div>

                </div>
            </div>
            <div class="login-right lf">
                <span class="or">or</span>
                <p>已有我爱我家账号：<span class="marTop10"><a class="regBtn log-in marTop10" href="javascript:toLogin()">直接登录<i></i></a></span></p>
                <p>使用以下账号直接登录</p>
                <ul class="sf-login"><li><a onmousedown="_trackData.push(['addaction','PC_BJ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" class="wx" href="/passport/wxlogin.do?service=http://bj.5i5j.com/reglogin/index?preUrl=https://bj.5i5j.com/">微信</a></li><li><a onmousedown="_trackData.push(['addaction','PC_BJ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" class="qq" href="/passport/qqlogin.do?service=http://bj.5i5j.com/reglogin/index?preUrl=https://bj.5i5j.com/">QQ</a></li><li><a onmousedown="_trackData.push(['addaction','PC_BJ_登录页','登录按钮']);	ga('send','event','PC_BJ_登录页','登录按钮','PC_BJ_登录页_登录按钮');" class="xl" href="/passport/wblogin.do?service=http://bj.5i5j.com/reglogin/index?preUrl=https://bj.5i5j.com/">新浪</a></li></ul>
                <div class="ewmBox"><img src="/passport/images/ewm.png"><p>[扫描下载我爱我家APP]</p></div>
            </div>
        </div>
    </form>
</div>
<!-- 注册  End -->

<div class="footer-con mar"><p>北京我爱我家房地产经纪有限公司 版权所有 | 网络经营许可证 京ICP备11021901号-16  ©2016 5i5j.com, all rights reserved.</p></div>



<!-- 验证码弹层 -->
<%--<div class="tcBox hide">--%>
    <%-- <form method="post" onsubmit="return clicksubmitcode();" action="/passport/code?city=bj">
         <div class="yz-tan ">
             <p class="pTit">请先输入以下图形验证码</p>
             <div class="pSty">
                 <input type="text" id="code" autocomplete="off" name="code">
                 <input type="hidden" id="phone1" name="phone1">
                 <input type="hidden" id="service1" name="service1">
                 <input type="hidden" id="typecode" name="typecode" value="1">
                 <input type="hidden" id="aim" name="aim" value="pc">

                 <input type="hidden" id="status" name="status" value="1">
                 <span>
              <a href="#" onclick="aa()">
                     <img id="MzImgExpPwd">
              </a>
         </span>

             </div>
             <!-- 	<p class="err">错误提示</p> -->

             <a href="javascript:void(0)" onclick="clicksubmitcode();return false;" name="registercode" id="registercode" class="qBtn">
                 <span>确定</span></a>
             <a class="closeBtn">关闭</a>
         </div>
    </form>--%>
<%--</div>--%>
<!-- 服务条款 End -->
<div class="f-tan hide">
    <div class="fwtk ">
        <h3><i></i>伟业我爱我家 网站服务条款</h3>
        <div class="tk">
            <p>第一条 为了规范互联网信息服务活动，促进互联网信息服务健康有序发展，制定本办法。</p>
            <p>第二条 在中华人民共和国境内从事互联网信息服务活动，必须遵守本办法。本办法所称互联网信息服务，是指通过互联网向上网用户提供信息的服务活动。</p>
            <p>第三条 互联网信息服务分为经营性和非经营性两类。</p>
            <p>经营性互联网信息服务，是指通过互联网向上网用户有偿提供信息或者网页制作等服务活动。</p>
            <p>非经营性互联网信息服务，是指通过互联网向上网用户无偿提供具有公开性、共享性信息的服务活动。</p>
            <p>第四条 国家对经营性互联网信息服务实行许可制度；对非经营性互联网信息服务实行备案制度。未取得许可或者未履行备案手续的，不得从事互联网信息服务。</p>
            <p>第五条 从事新闻、出版、教育、医疗保健、药品和医疗器械等互联网信息服务，依照法律、行政法规以及国家有关规定须经有关主管部门审核同意的，在申请经营许可或者履行备案手续前，应当依法经有关主管部门审核同意。</p>
            <p>第六条 从事经营性互联网信息服务，除应当符合《中华人民共和国电信条例》规定的要求外，还应当具备下列条件：</p>
            <p>（一）有业务发展计划及相关技术方案；</p>
            <p>（二）有健全的网络与信息安全保障措施，包括网站安全保障措施、信息安全保密管理制度、用户信息安全管理制度；</p>
            <p>（三）服务项目属于本办法第五条规定范围的，已取得有关主管部门同意的文件。</p>
            <p>第七条 从事经营性互联网信息服务，应当向省、自治区、直辖市电信管理机构或者国务院信息产业主管部门申请办理互联网信息服务增值电信业务经营许可证（以下简称经营许可证）。省、自治区、直辖市电信管理机构或者国务院信息产业主管部门应当自收到申请之日起60日内审查完毕，作出批准或者不予批准的决定。予以批准的，颁发经营许可证；不予批准的，应当书面通知申请人并说明理由。申请人取得经营许可证后，应当持经营许可证向企业登记机关办理登记手续。 </p>
            <p>第八条 从事非经营性互联网信息服务，应当向省、自治区、直辖市电信管理机构或者国务院信息产业主管部门</p>
        </div>
        <a class="fClose">关闭</a>
    </div>
    <input type="hidden" id="error" name="error" value="">
    <input type="hidden" id="succee" name="succee" value="">
</div>
<!-- 服务条款 End -->

<script src="/passport/js/tdz.js"></script>
<script type="text/javascript">
    /* 发送成功后显示倒计时 */
    var succee=document.getElementById('succee').value;
    if(succee){
        resetCode()
    }

</script>

<script type="text/javascript">
    /* 发送失败停留在手机页面 */
    var error=document.getElementById('error').value;
    if(error){
        aa();
        $(".tcBox").removeClass("hide");
        $(".closeBtn").click(function(){
            $(".tcBox").addClass("hide");
        })

    }


</script>

<script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', '', 'auto');
    ga('create', 'UA-103163281-15', 'auto','clientTracker');
    ga('send', 'pageview');
</script>



<script id="phpstat_js_id_10000001" src="/passport/js/10000002.js?v=201711021538"></script>


</body>
    <script>
        //跳转登录页面
        function toLogin() {
            location.href="../ceshilogin.jsp";
        }
    </script>

</html>