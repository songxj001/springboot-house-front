<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2018/3/28
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en-US"><head>
    <title>富家官网</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta charset="UTF-8">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <script src="https://zz.bdstatic.com/linksubmit/push.js"></script><script async="" src="https://www.google-analytics.com/analytics.js"></script><script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-103163281-2', 'auto');
    ga('create', 'UA-103163281-15', 'auto','clientTracker');
    ga('send', 'pageview');
    var baseUrl = 'https://res.5i5j.com';
</script>
    <link href="https://res.5i5j.com/pc/common/basic.css?b5021e52d5229df4a56c77ff96d76afd" rel="stylesheet">
    <link href="https://res.5i5j.com/pc/user/index.css?b5021e52d5229df4a56c77ff96d76afd" rel="stylesheet">
    <link href="https://res.5i5j.com/pc/im/css/xxSty.css?b5021e52d5229df4a56c77ff96d76afd" rel="stylesheet">
    <script src="https://res.5i5j.com/pc/common/jquery-1.10.2.min.js?15d68309f1aa43282ea3386a6e2ecbf1"></script>
    <script type="text/javascript" src="../js/jquery-3.2.1/jquery-3.2.1.js"></script>
    <script src="../js/layui/layui.js"></script>
    <link rel="stylesheet" href="../js/layui/css/layui.css">
</head>
<body style="">
<!-- 导航 start -->
<div class="top-bar-box">
    <div class="main top-bar">
        <div class="top-logo"><a href="/index.jsp" ><h1 style="color: #a6e1ec">富家地产</h1></a></div>
        <div class="top-city"><i class="icon-city"></i>北京</div>
        <input type="hidden" id="searchType" value="sale">
        <div class="top-city-menu clear">
            <span class="city-arrow"></span>
            <ul class="fl">
                <li>
                    <span class="zm fl">B</span>
                    <p class="city fl">
                        <a href="https://bj.5i5j.com/" target="_blank">北京</a>
                    </p>
                </li>
                <li>
                    <span class="zm fl">C</span>
                    <p class="city fl">
                        <a href="https://cd.5i5j.com/" target="_blank">成都</a>
                    </p>
                    <p class="city fl">
                        <a href="https://cs.5i5j.com/" target="_blank">长沙</a>
                    </p>
                </li>
                <li>
                    <span class="zm fl">H</span>
                    <p class="city fl">
                        <a href="https://hz.5i5j.com/" target="_blank">杭州</a>
                    </p>
                </li>
                <li>
                    <span class="zm fl">N</span>
                    <p class="city fl">
                        <a href="https://nj.5i5j.com/" target="_blank">南京</a>
                    </p>
                    <p class="city fl">
                        <a href="https://nn.5i5j.com/" target="_blank">南宁</a>
                    </p>
                </li>
                <li>
                    <span class="zm fl">S</span>
                    <p class="city fl">
                        <a href="https://sh.5i5j.com/" target="_blank">上海</a>
                    </p>
                    <p class="city fl">
                        <a href="https://sz.5i5j.com/" target="_blank">苏州</a>
                    </p>
                </li>
                <li>
                    <span class="zm fl">T</span>
                    <p class="city fl">
                        <a href="https://tj.5i5j.com/" target="_blank">天津</a>
                    </p>
                    <p class="city fl">
                        <a href="https://ty.5i5j.com/" target="_blank">太原</a>
                    </p>
                </li>
                <li>
                    <span class="zm fl">W</span>
                    <p class="city fl">
                        <a href="https://wh.5i5j.com/" target="_blank">武汉</a>
                    </p>
                    <p class="city fl">
                        <a href="https://wx.5i5j.com/" target="_blank">无锡</a>
                    </p>
                </li>
                <li>
                    <span class="zm fl">Z</span>
                    <p class="city fl">
                        <a href="https://zz.5i5j.com/" target="_blank">郑州</a>
                    </p>
                </li>
            </ul>
        </div>
        <div class="top-login" id="userlogin">
            <input type="hidden" id="userid" value="${user.loginnumber}">
            <a href="javascript:toshowUser()" target="" class="log" id="loginnumberid">${user.loginnumber}</a>
            <a href="javascript:toremove()" target="" id="removeloginnumber">退出</a>
        </div>
        <ul class="top-nav">
            <li>
                <a href="../house/list.do" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_BJ_首页','二手房按钮']);ga('send','event','PC_BJ_首页','二手房按钮','PC_BJ_首页_二手房按钮');">二手房                    </a>
            </li>
            <li>
                <a href="../house/zuFang.do" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_BJ_首页','租房按钮']);ga('send','event','PC_BJ_首页','租房按钮','PC_BJ_首页_租房按钮');">租房                    </a>
            </li>

            <li>
                <a href="../quarters/jumpQuarters" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_BJ_首页','小区按钮']);ga('send','event','PC_BJ_首页','小区按钮','PC_BJ_首页_小区按钮');">小区                    </a>
            </li>
            <li>
                <a href="../user/tolist.do" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_BJ_首页','经纪人按钮']);ga('send','event','PC_BJ_首页','经纪人按钮','PC_BJ_首页_经纪人按钮');">经纪人                    </a>
            </li>
        </ul>
    </div>
</div>
<iframe id="hideiframe" style="display: none" name="hideiframe" src="/reglogin/ajaxlogin"></iframe>


<script>
    var _trackData = _trackData || [];	//全局变量，一定不要放到一个function里面
    var _trackDataType = 'web';
</script>

<script>
    //易分析
    var isLogin = '0';
    var register = '';
    var userId = '2210502';
    var userName = '17611437257';
    var domainUrl = 'bj.5i5j.com';
    var cityName = "bj";

    //登陆上报
    if(isLogin!='0'){
        _trackData.push(["userset", 'loginregis', 'login']);
        _trackData.push(["userset", 'userid',userId]);
        _trackData.push(["userset", 'username',userName]);

        //登陆成功事件
        cityName = cityName.toUpperCase();
        _trackData.push(['addaction','PC_'+cityName+'_登录页','登录成功']);
    }

    function ajaxLogin(userName){
        $("#userlogin").html('<a href="/user/index" class="log" rel="nofollow">'+userName+'</a>' +
            '<a href="/reglogin/logout" rel="nofollow">退出</a>');
    }
</script>
<!-- 导航 end -->
<div class="main">
    <div class="member-top">
        <div class="mem-tx">
            <img src="https://res.5i5j.com/pc/user/images/txNew.png" alt="头像">	<span class="mask"></span>
        </div>
        <div class="mem-name">
            <a href="javascript:void(0);">
                ${user.nickname}
            </a>
        </div>
        <a href="/user/set" class="mem-modify"><i class="icon-modify"></i>修改</a>
        <div class="mem-guanzhu">
            <p class="m-guanzhu"><i class="icon-gz"></i>关注房源</p>
            <p style="color: orange;font-size: 50"   id="attentHousecount">
            </p>
        </div>
    </div>
    <div class="member-box clear">
        <div class="mem-nav-box">
            <ul class="mem-nav">
                <li class=""  id="mainpageid">
                    <a href="/user">首页</a>
                </li>
                <li class="" id="footid">
                    <a href="javascript:showFoot()">我的足迹</a>
                </li>
                <%--<li class="">
                    <a href="javascript:searchWhere()">搜索条件</a>
                </li>--%>
                <li class="" id="attenthouseid">
                    <a href="javascript:attentHouse()" >关注的房源</a>
                </li>
                <li class="" id="attentcommunityid">
                    <a href="javascript:attentCommunity()">关注的小区</a>
                </li>
                <li class="" id="attentempid">
                    <a href="javascript:attentEmp()">我的经纪人</a>
                </li>
                <li class="">
                    <a href="javascript:queryHetongByWhere()">合同查询</a>
                </li>
                <li class="no-border">
                    <a href="javascript:settingUser()">设置</a>
                </li>
            </ul>
        </div>

        <div class="mem-con-box">
            <h2 class="mem-tit"><span class="line"></span>最新房源动态</h2>
            <div class="mem-house-list">
                <ul class="mem-tab" id="indextype">
                    <li class="cur" actdata="1">新上<span></span></li>
                    <li class="" actdata="2">调价<span></span></li>
                    <li class="" actdata="3">成交<span></span></li>
                </ul>
                <div class="mem-tc">
                    <div class="mem-tab-con show">
                        <ul class="mem-tc-list" id="indexdata">
                            <div class="mem-tab-con mem-list2 ershou show">
                                <div   id="contentid">

                                </div>
                            </div>
                        </ul>
                        <!-- 页码 -->
                        <div class="pageBox">
                        </div>
                        <!-- 页码 End-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 主体 end-->
<!-- right start-->
<!-- 右侧条 start-->
<script>
    var onlinecityid = "1";
    var userId = "2210502";
    var workName = "周一至周日   09:00 ~ 20:00";
    var workWeek = "1,2,3,4,5,6,0";
    var workAM = "09:00";
    var workPM = "20:00";
</script>
<!--<script type="text/javascript" src="/pc/common/online.service.js?"></script>--><!-- right end-->
<!-- bottom start -->
<!--友情链接 start-->
<!--友情链接 end-->
<!-- 底部 start -->
<div class="footer-box">
    <div class="main">
        <div class="footer-nav-box">
            <div class="top-logo"><a href="/" ><h1 style="color: #a6e1ec">富家地产</h1></a></div>
            </div>
            <ul class="footer-nav">
                <li><a href="/about" target="_blank" rel="nofollow">关于我们</a></li>
                <!-- <li><a href="#" target="_blank" rel="nofollow">客户服务</a></li> -->
                <li><a href="/about/contact" target="_blank" rel="nofollow">联系我们</a></li>
                <!-- <li><a href="#" target="_blank" rel="nofollow">电子杂志</a></li> -->
                <!-- <li><a href="#" target="_blank" rel="nofollow">客户投诉</a></li> -->
                <li><a href="/websitemap" target="_blank">站点地图</a></li>
                <!-- <li><a href="#" target="_blank" rel="nofollow">网站记事</a></li> -->
                <li><a href="/friendlink" target="_blank" rel="nofollow">友情链接</a></li>
            </ul>
        </div>
        <div class="footer-info">
            <dl class="f-iphone">
                <dt><i class="icon-phone"></i></dt>
                <dd>客服电话</dd>
                <dd class="kf-num">155-6220-0650</dd>
            </dl>
            <dl>
                <dd>地理位置</dd>
                <dd>朝阳区朝来科技园二期创远路36号院8号楼</dd>
                <dd>邮编： 100012</dd>
            </dl>

        </div>
        <div class="footer-cr">北京富家房地产经纪有限公司 版权所有 | 网络经营许可证 京ICP备09041444号-1 ©2017 5i5j.com, all rights reserved.
        </div>
    </div>
</div>
<script type="text/javascript">
    var phpstaturl = 'https://stat.bacic5i5j.com';
</script>
<script id="phpstat_js_id_10000001" src="https://res.5i5j.com/pc/common/10000001.js?2018032815"></script>
<!--图片默认资源-->
<!--script  src="https://res.5i5j.com/pc/common/image-error.js?20180328"></script-->
<!-- 底部 end -->
<!-- bottom end -->
<script>
    var filter = "0";
</script>
<script src="https://res.5i5j.com/pc/common/basic.js?15d68309f1aa43282ea3386a6e2ecbf1"></script>
<script src="https://res.5i5j.com/pc/common/image-error.js?15d68309f1aa43282ea3386a6e2ecbf1"></script>
<script src="https://res.5i5j.com/pc/common/online.service.js?15d68309f1aa43282ea3386a6e2ecbf1"></script>
<script src="https://res.5i5j.com/pc/user/imagecropper.js?15d68309f1aa43282ea3386a6e2ecbf1"></script>
<script src="https://res.5i5j.com/pc/user/index.js?15d68309f1aa43282ea3386a6e2ecbf1"></script>
<script src="https://res.5i5j.com/pc/user/set.js?15d68309f1aa43282ea3386a6e2ecbf1"></script>        <style>
    .webim-msg-img {
        max-width: 100%;
        vertical-align: middle;
        cursor: pointer;
        border-radius: 4px;
    }
</style>
<!--span onclick="addBroker(287071)"></span-->

<input type="hidden" id="toReceiver" value="">
<input type="hidden" id="lastData" value="">
<script>
    var contactUserId = '2210502';
    var isActived = '1'; //是否是禁言
    var userName = '17611437257';
    var userPic = "https://res.5i5j.com/pc/user/images/mem-tx.jpg";
    var RESOURCES = 'https://res.5i5j.com';
    var cityId = 1;
    var city_domain = 'bj';
    var host = '.5i5j.com';
    var imloginurl = "/reglogin?preUrl=https://bj.5i5j.com/user/index/";
    var textext = {
        //"ChatUserName": "zhuanzhu_user_0cac0d10d70574f363e1b61f",
        "userhid": contactUserId+'uid',
        "nickname": userName,
        "imageurl": userPic,
        "phonenum": '17611437257'
    };
    var imHouse = {};
    var cityIdDomain = {"1":"bj","2":"hz","5":"sz","6":"ty","7":"tj","8":"nj","9":"sh","15":"cd","16":"nn","18":"zz","19":"wx","20":"wh","22":"cs"};

    var MESSAGE_TYPE_COMMUNITY_NEWS = 5;
    var MESSAGE_TYPE_HOUSE_NEWS = 6;
    var MESSAGE_TYPE_SMART_CARD = 7;

    var facePath = "https://res.5i5j.com/pc/im/images/face/";
    var faceMap = {"[):]":"ee_1.png","[:D]":"ee_2.png","[;)]":"ee_3.png","[:-o]":"ee_4.png","[:p]":"ee_5.png","[(H)]":"ee_6.png","[:@]":"ee_7.png","[:s]":"ee_8.png","[:$]":"ee_9.png","[:(]":"ee_10.png","[:'(]":"ee_11.png","[:|]":"ee_12.png","[(a)]":"ee_13.png","[8o|]":"ee_14.png","[8-|]":"ee_15.png","[+o(]":"ee_16.png","[<o)]":"ee_17.png","[|-)]":"ee_18.png","[*-)]":"ee_19.png","[:-#]":"ee_20.png","[:-*]":"ee_21.png","[^o)]":"ee_22.png","[8-)]":"ee_23.png","[(|)]":"ee_24.png","[(u)]":"ee_25.png","[(S)]":"ee_26.png","[(*)]":"ee_27.png","[(#)]":"ee_28.png","[(R)]":"ee_29.png","[({)]":"ee_30.png","[(})]":"ee_31.png","[(k)]":"ee_32.png","[(F)]":"ee_33.png","[(W)]":"ee_34.png","[(D)]":"ee_35.png"};
    var org_name = "5i5j";
    var app_name = "moshou";
    var wsIP = "websocket.5i5j.com:4431";
    var wsWS = "wss";

    $(function() {
        $(document).on('mouseover', '.face-icon',
            function () {
                $(this).unbind();
                var toReceiver = $("#toReceiver").val();
                $(this).qqFace({
                    id: 'facebox', //表情盒子的ID
                    assign: 'chat_'+toReceiver, //给那个控件赋值
                    //path:'face/'	//表情存放的路径
                    path: facePath,	//表情存放的路径
                    map : faceMap
                });
            }
        )
    })
    //查看结果
    function replace_em(msg){
        //console.log(WebIM.utils.parseEmoji);
        var path =  facePath ; /*表情包路径*/
        var map = faceMap;
        for (var face in map) {
            while (msg.indexOf(face) > -1) {
                msg = msg.replace(face, '<img style="display: inline" src="' + path + map[face] + '" />');
            }
        }
        return msg;
    }
    function defaultBrokerError(obj) {//经纪人列表页404图片
        obj.onerror = "";
        obj.src = RESOURCES+"/pc/common/images/brokerList404.jpg";
        obj.onerror=null;
    }

    var timestamp = new Date().getTime();
</script>
<script src="https://res.5i5j.com/pc/im/js/xxJs.js"></script>
<script src="https://res.5i5j.com/pc/im/js/webim.config.js"></script>
<script src="https://res.5i5j.com/pc/im/js/socket.js"></script>
<script src="https://res.5i5j.com/pc/im/js/strophe-1.2.8.min.js"></script>
<script src="https://res.5i5j.com/pc/im/js/websdk-1.4.13.js"></script>
<!--script src="https://res.5i5j.com/pc/im/js/swfobject.js"></script-->
<script src="https://res.5i5j.com/pc/im/js/web_socket.js"></script>
<script src="https://res.5i5j.com/pc/im/js/im.init.js"></script>
<script src="https://res.5i5j.com/pc/im/js/jquery.browser.js"></script>
<script src="https://res.5i5j.com/pc/im/js/jquery.qqFace.js"></script>
<script src="https://res.5i5j.com/wap/common/jquery.cookie.js"></script>

<!-- 提示弹层 -->
<style>
    /*弹窗*/
    .popup-box-common{width:100%;height:100%;background: none;}
    .popup-mask{width:100%;height:100%;background:#000;filter:alpha(opacity=60);opacity:0.6;position:fixed;top:0;left:0;z-index:1100;}
    .popup-con{min-width:160px;padding:20px;line-height:36px;background:#fff;position:fixed;top:20%;left:50%;margin-left:-100px;z-index:1111;}
    .popup-wz1{font-size:16px;text-align:center;color:#535d6a;padding-left:10px}
    .popup-wz2{font-size:14px;text-align:center;}
    .popup-wz3{text-indent:2em;line-height:28px;margin-top:20px;}
    .popup-btn{text-align:center;margin-top:40px;}
    .popup-btn a{display:inline-block;width:116px;line-height:34px;font-size:16px;border-radius:3px;border:1px solid #f0a92d;}
    .popup-btn .popup-btn1{background:#f9af3f;color:#fff;margin-right:70px;}
    .popup-btn .popup-btn2{background:#fff;color:#f9af3f;}
    .popup-close{width:24px;height:24px;background:url(https://res.5i5j.com/pc/common/images/pop-close.png) no-repeat;position:absolute;right:20px;top:20px;}
    .popup-con2{width:700px;margin-left:-390px;padding:40px 0 60px 40px;top:10%;}
    .popup-tit{font-size:24px;padding-bottom:20px;border-bottom:1px solid #ececec;}
    .popup-tit .popup-line{width:5px;height:36px;display:inline-block;margin-right:18px;background:#f9af3f;vertical-align:middle;}
    .popup-info{height:400px;padding-top:28px;padding-right:40px;overflow-y:auto;}
    .hide{display:none;}
    .cg-icon,.loser-icon{width:26px;height:26px;float:left;margin-top:5px; margin-right: 10px;}
    .cg-icon{background:url(https://res.5i5j.com/pc/common/images/cg-icon.png) no-repeat;}
    .loser-icon{background:url(https://res.5i5j.com/pc/common/images/loser-icon.png) no-repeat;}
</style>
<div class="popup-box-common hide">
    <div class="popup-mask"></div>
    <div class="popup-con popup_1 hide">
        <p class="popup-wz1 popup_title"></p>
        <p class="popup-wz3 popup_content"></p>
    </div>
    <div class="popup-con popup_2 hide">
        <p class="popup-wz1 popup_title"></p>
        <p class="popup-wz2 popup_content"></p>
    </div>
    <div class="popup-con popup_3 hide">
        <p class="popup-wz1 popup_title"></p>
        <p class="popup-wz2 popup_content"></p>
        <div class="popup-btn">
            <a href="javascript:void(0);" status="1" class="popup-btn1">删除</a>
            <a href="javascript:void(0);" status="0" class="popup-btn2">取消</a>
        </div>
    </div>
</div>
<script>

    $(".popup-btn2").on("click",function(){
        $(".popup-box-common").addClass("hide");

    });
    function openPop(titel, content, type) {

        var reutrnHide = $(".popup-con").hasClass("hide");//判断弹框是否隐藏
        if(reutrnHide){
            $(".popup-con").addClass("hide");
        }
        $(".popup-box-common").removeClass("hide");//全屏变灰
        $(".popup_" + type).removeClass("hide");//1,小提示框2，大提示框
        if(titel) {
            var losericon = '';
            var cgicon = '';
            if(type == 1){//成功
                cgicon = '<div class="cg-icon fl"></div>'; //关注失败图标
                $(".popup_title").html(cgicon+titel);//加粗提示的话语
                closeSetTime();
            }else if(type == 2){//失败
                losericon = '<div class="loser-icon fl"></div>'; //关注失败图标
                $(".popup_title").html(losericon+titel);//加粗提示的话语
                closeSetTime();
            }else if(type == 3){//按钮
                $(".popup_title").html(titel);//加粗提示的话语
                $(".popup-btn .popup-btn2").on("click",function(){
                    closePop();
                });
            }
        } else {
            $(".popup_title").remove();
        }
        if(content) {
            $(".popup_content").html(content);//普通提示语
        } else {
            $(".popup_content").remove();
        }
        function closeSetTime(){
            window.setTimeout('closePop()', 2000);
        }
//  if(type) {
//      window.setTimeout('closePop()', 2000); //
//  }
    }

    function closePop(type) {
        $(".popup-box-common").addClass("hide");
    }
    $(document).on('click', ".popup-btn .popup-btn2,.popup-close", function(){
        closePop();
    });
</script>
<script>
    (function(){
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>


</body>
    <script>
        //-----------------------------------------足迹------------------------------------------------------
        //展示我的足迹
        function showFoot() {
            $("#indextype").html('<li actdata="1"><a href="javascript:twoHouse()">二手房</a><span></span></li><li  actdata="2"><a href="javascript:rentHouse()">租房</a><span></span></li>');
            twoHouse();

        }
        //查看足迹的租房信息
        function rentHouse() {
            $.ajax({
                url:"../foot/footSelect.do",
                type:"post",
                data:{"type":1,"uid":1},
                dataType:"json",
                success:function (data) {

                    if(data.length==0){
                        $("#contentid").html("暂时无租房数据")
                    }else{
                        var content='';
                        for(var i=0;i<data.length;i++){
                            content+=
                                '<div class="mem-list-con clear">'+
                                '<div class="list-img"><a href="https://bj.5i5j.com/ershoufang/37251303.html" target="_blank"><img src="'+data[i].photo+'" onerror="houseimgerror(this);"></a></div>'+
                                ' <div class="list-con">'+
                                '<h3 class="list-tit"><a href="https://bj.5i5j.com/ershoufang/37251303.html" target="_blank" "="">'+data[i].title+'</a></h3>'+
                                '<div class="list-info">'+
                                ' <p><i class="icon1"></i>'+data[i].room+'室'+data[i].hall+'厅&nbsp;·&nbsp;'+data[i].house_area+'平米&nbsp;·&nbsp;'+' · 楼层/'+data[i].house_floor+'层</p>'+
                                '<p><i class="icon3"></i>515人关注&nbsp;·&nbsp;共28次带看&nbsp;·&nbsp;2017-03-17发布</p>'+
                                '<div class="price">'+
                                ' <p class="redC"><strong>'+data[i].rent_money+'</strong>元/月</p>'+
                                '</div>'+
                                '</div>'+
                                '</div>'+
                                '</div>';
                            $("#contentid").html(content)
                        }
                    }

                }
            })
        }
        //查询足迹的二手房房源信息
        function twoHouse() {
            $.ajax({
                url:"../foot/footSelect.do",
                data:{"type":2,"uid":1},
                type:"post",
                dataType:"json",
                success:function (data) {
                    if(data.length==0){
                        $("#contentid").html("暂时无二手房数据")
                    }else{
                        var content='';
                        for(var i=0;i<data.length;i++){content+=
                            '<div class="mem-list-con clear">'+
                            '<div class="list-img"><a href="https://bj.5i5j.com/ershoufang/37251303.html" target="_blank"><img src="'+data[i].photo+'" onerror="houseimgerror(this);"></a></div>'+
                            ' <div class="list-con">'+
                            '<h3 class="list-tit"><a href="https://bj.5i5j.com/ershoufang/37251303.html" target="_blank" "="">'+data[i].title+'</a></h3>'+
                            '<div class="list-info">'+
                            ' <p><i class="icon1"></i>'+data[i].room+'室'+data[i].hall+'厅&nbsp;·&nbsp;'+data[i].house_area+'平米&nbsp;·&nbsp;'+' · 楼层/'+data[i].house_floor+'层</p>'+
                            '<p><i class="icon3"></i>515人关注&nbsp;·&nbsp;共28次带看&nbsp;·&nbsp;2017-03-17发布</p>'+
                            '<div class="price">'+
                            ' <p class="redC"><strong>'+data[i].rent_money+'</strong>元/月</p>'+
                            '</div>'+
                            '</div>'+
                            '</div>'+
                            '</div>';
                            $("#contentid").html(content)
                        }
                    }
                }
            })
        }
        //-----------------------------------------足迹------------------------------------------------------

        //------------------------------------------关注的房源------------------------------------------------------
        //关注的房源
        function attentHouse() {
            $("#indextype").html('<li actdata="1"><a href="javascript:attentTwoHouse()">二手房</a><span></span></li><li  actdata="2"><a href="javascript:attentRentHouse()">租房</a><span></span></li>');
            attentTwoHouse();
        }
        //查看关注房源的二手房
        function attentTwoHouse() {
            $.ajax({
                url:"../my/queryAttentHouse.do",
                type:"post",
                dataType:"json",
                success:function (data) {
                    if(data.length==0){
                        $("#contentid").html("暂时无二手房数据")
                    }else{
                        var content='';
                        for(var i=0;i<data.length;i++){
                            content+=
                                '<div class="mem-list-con clear">'+
                                '<div class="list-img"><a href="https://bj.5i5j.com/ershoufang/37251303.html" target="_blank"><img src="'+data[i].img+'" onerror="houseimgerror(this);"></a></div>'+
                                ' <div class="list-con">'+
                                '<h3 class="list-tit"><a href="https://bj.5i5j.com/ershoufang/37251303.html" target="_blank" "="">'+data[i].title+'</a></h3>'+
                                '<div class="list-info">'+
                                ' <p><i class="icon1"></i>'+data[i].room+'室'+data[i].hall+'厅&nbsp;·&nbsp;'+data[i].area+'平米&nbsp;·&nbsp;'+data[i].room_direction+' · 楼层/'+data[i].floor+'层</p>'+
                                '<p><i class="icon3"></i>515人关注&nbsp;·&nbsp;共28次带看&nbsp;·&nbsp;2017-03-17发布</p>'+
                                '<div class="price">'+
                                ' <p class="redC"><strong>'+data[i].unit_price*data[i].area+'</strong>元</p>'+
                                '<p>单价'+data[i].unit_price+'元/㎡</p>'+
                                '<div><input type="button" value="取消关注" onclick="noAttenthouse('+data[i].id+')"></div>'+
                                '</div>'+
                                '</div>'+
                                '</div>'+
                                '</div>';
                            $("#contentid").html(content)
                        }
                    }
                }
            })
        }
        //查看关注租房的数据
        function attentRentHouse() {
            $.ajax({
                url:"../my/queryAttentRentHouse.do",
                type:"post",
                dataType:"json",
                success:function (data) {
                    if(data.length==0){
                        $("#contentid").html("暂时无租房数据")
                    }else{
                        var content='';
                        for(var i=0;i<data.length;i++){
                            content+=
                                '<div class="mem-list-con clear">'+
                                '<div class="list-img"><a href="https://bj.5i5j.com/ershoufang/37251303.html" target="_blank"><img src="'+data[i].img+'" onerror="houseimgerror(this);"></a></div>'+
                                ' <div class="list-con">'+
                                '<h3 class="list-tit"><a href="https://bj.5i5j.com/ershoufang/37251303.html" target="_blank" "="">'+data[i].title+'</a></h3>'+
                                '<div class="list-info">'+
                                ' <p><i class="icon1"></i>'+data[i].room+'室'+data[i].hall+'厅&nbsp;·&nbsp;'+data[i].area+'平米&nbsp;·&nbsp;'+data[i].room_direction+' · 楼层/'+data[i].floor+'层</p>'+
                                '<p><i class="icon3"></i>515人关注&nbsp;·&nbsp;共28次带看&nbsp;·&nbsp;2017-03-17发布</p>'+
                                '<div class="price">'+
                                ' <p class="redC"><strong>'+data[i].rentmoney+'</strong>元/月</p>'+
                                '<div><input type="button" value="取消关注" onclick="noAttenthouse('+data[i].id+')"></div>'+
                                '</div>'+
                                '</div>'+
                                '</div>'+
                                '</div>';
                            $("#contentid").html(content)
                        }
                    }

                }
            })
        }
        //取消关注
        function noAttenthouse(id) {
            if(confirm("是否取消关注?")){
               $.ajax({
                   url:"../my/delAttentHouse.do",
                   type:"post",
                   data:{'id':id},
                   dataType:"json",
                   success:function (map) {
                       if(map.success){
                           alert("删除成功");
                           location.href=location;
                       }
                   }
               })
            }
        }
    //------------------------------------------------关注的房源------------------------------------------------------------------

    //---------------------------------------------关注的小区------------------------------------------------------------
        function attentCommunity() {
            $("#indextype").html('<li actdata="1">关注的小区<span></span></li>');
            $.ajax({
                url:"../my/queryAttentCommunity.do",
                type:"post",
                dataType:"json",
                success:function (data) {
                    var content="";
                    for (var i=0;i<data.length;i++){
                    content+=
                        '<div class="mem-list-con clear no-border">'+
                        '<div class="list-img"><a href="http://bj.5i5j.com/xiaoqu/51045.html" target="_blank">'+
                        '<img src="'+data[i].img+'" onerror="houseimgerror(this);"></a></div>'+
                        '<div class="list-con">'+
                        '<h3 class="list-tit"><a href="" target="_blank">'+data[i].name+'</a></h3>'+
                        '<div class="list-info">'+
                        '<p><i class="icon4"></i>'+data[i].shoucount+'套在售&nbsp;·&nbsp;'+
                        ''+data[i].zucount+'套在租</p>'+
                        '<p><i class="icon5"></i>'+data[i].architectureYears+'年建成</p> <p><i class="icon6"></i>'+data[i].full_name+'</p>'+
                        '<div class="price">'+
                        ' <p class="redC">'+
                        ' <strong>'+data[i].quartersPrice+'</strong>元/m²</p>'+
                        '<p>'+data[i].quartersBetween+'</p>'+
                        '<div><input type="button" value="取消关注" onclick="noAttentCommunity('+data[i].id+')"></div>'+
                        '</div>'+
                        '</div>'+
                        ' </div>'+
                        '<a href="javascript:;" class="mem-gz hide" onclick="cancelfocus(51045)"><i class="icon-gz"></i>取消关注</a>'+
                        '</div>';
                    }
                    $("#contentid").html(content)
                }
            })
        }
    //取消关注小区
        function noAttentCommunity(id) {
            if(confirm("是否取消关注?")){
                $.ajax({
                    url:"../my/delAttentCommunity.do",
                    type:"post",
                    data:{'id':id},
                    dataType:"json",
                    success:function (map) {
                        if(map.success){
                            alert("删除成功");
                            location.href=location;
                        }
                    }
                })
            }
        }
        //---------------------------------------------关注的小区------------------------------------------------------------

        //-----------------------------------------------我的经济人---------------------------------------------------------------------
        function attentEmp() {
            $("#indextype").html('<li actdata="1">我的经济人<span></span></li>');

            $.ajax({
                url:"../emp/showEmp.do",
                type:"post",
                dataType:"json",
                success:function (data) {

                    for(var i=0;i<data.length;i++){
                        //alert(data[i].name);
                        $("#contentid").append(' <div class="agent-con-box clear">\n' +
                            '            <div class="agent-img lf">\n' +
                            '             <input type="hidden" value="'+data[i].flag+'" id="flag"/>   <a href="javascript:showJJR('+'\''+data[i].id+'\''+')" target="_blank">\n' +
                            '                    <img alt="系统出错" src="'+data[i].photo+'" onerror="brokerError(this);">\n' +
                            '                </a>\n' +
                            '            </div>\n' +
                            '            <div class="agent-con lf">\n' +
                            '                <div  class="agent-tit">\n' +
                            '                    <a href="javascript:showJJR('+'\''+data[i].id+'\''+')" target="_blank">\n' +
                            '                        <span class="name"><h3>'+data[i].name+'</h3></span>\n' +
                            '                    </a>\n' +
                            '                    <a id="test0'+i+'" isfours="0" href="javascript:duanxin('+'\''+data[i].id +'\''+','+i+')" class="duanxin"></a>\n' +
                            '                    <span class="line"></span>\n' +
                            '                    <a href="javascript:yuyue()" class="weixin wxcodeshow">\n' +
                            '                        <div class="fxcode jjrlistcode">\n' +
                            '                            <img src="https://image.5i5j.com/picture/weixin_image/648230.png" onerror="brokerwxerror(this)">\n' +
                            '                        </div>\n' +
                            '                    </a>\n' +
                            '                </div>\n' +
                            '                <div class="agent-info">\n' +
                            '                    <p class="iconsleft">'+data[i].address+''+data[i].hiredateCount+'年 </p>\n' +
                            '                    <!--<p class="iconsleft1">历史成交13套</p>-->\n' +
                            '                    <p class="iconsleft1">历史成交 (买卖'+data[i].sellHouse+'套 租赁'+data[i].rentHouse+'套)</p>\n' +
                            '                    <p class="eye-icons">近30天带看房'+data[i].lookHouse+'次</p>\n' +
                            '                </div>\n' +
                            '                <div class="contacty">\n' +
                            '                    <span>'+data[i].phonenumer+'</span>\n' +
                            '                    <label>联系方式</label>\n' +
                            '                </div>\n' +
                            '            </div>\n' +
                            '\n' +
                            '            <a href="javascript:updateAttentio('+i+','+data.length+','+'\''+data[i].id+'\''+');" class="guanzhu-btn" id="up'+i+'">\n' +
                            '                <i  class="icon-gz" isfocus="0"></i><span>'+data[i].attention+'</span></a>\n' +
                            '        </div>');
                    }
                    /*
                    var content='';
                    for(var i=0;i<data.length;i++){
                        content+=
                         '<div class="agent-con-box clear">'+
                         ' <div class="agent-img lf">'+
                         '<a href="/jingjiren/648230.html" target="_blank">'+
                        '<img src="'+data[i].photo+'" alt="" onerror="brokerError(this);">'+
                        ' </a>'+
                        '</div>'+
                        '<div class="agent-con rf">'+
                        '<div class="agent-tit">'+
                        '<a href="/jingjiren/648230.html" target="_blank">'+
                        '<span class="name">'+data[i].name+'</span>'+
                        ' </a>'+
                        '<a href="javascript:addBroker(648230);" class="duanxin"></a>'+
                        '<span class="line"></span>'+
                        ' <div class="weixinicon wxcodeshow">'+
                        '<div class="fxcode jjrwxcode">'+
                        ' <img src="http://image.5i5j.com/picture//weixin_image/648230.png" onerror="qrcodeerror(this);">'+
                        ' </div>'+
                        ' </div>'+
                        '</div>'+
                        '<div class="agent-info">'+
                        '<p class="iconsleft1">'+
                        '历史成交'+
                        ' <a href="/jingjiren/648230.html#chengjiaoershoufangs" target="_blank">12</a>'+
                        '套，近30天带看房49次'+
                        ' </p>'+
                        '<div><input type="button" value="取消关注" onclick="noAttentEmp('+data[i].id+')"></div>'+
                        '</div>'+
                        '<div class="contacty"><span>'+data[i].phonenumer+'</span>'+
                        '<label>联系方式</label></div>'+
                        ' </div>'+
                        '</div>';
                    }
                    $("#contentid").html(content)*/
                }
            })
        }

        //取消关注经济人
        function noAttentEmp(id) {
            if(confirm("是否取消关注?")){
                $.ajax({
                    url:"../my/delAttentEmpByid.do",
                    type:"post",
                    data:{'id':id},
                    dataType:"json",
                    success:function (map) {
                        if(map.success){
                            alert("删除成功");
                            location.href=location;
                        }
                    }
                })
            }
        }

        //-----------------------------------------------我的经济人结束---------------------------------------------------------------------
        //---------------------------------------------设置开始--------------------------------------------------------------------

        function settingUser() {
            $("#indextype").html('<li actdata="1"><a href="javascript:updateNickname()">修改昵称</a><span></span></li><li  actdata="2"><a href="javascript:updatePassword()">修改密码</a><span></span></li>');
            updateNickname();
        }
        //加入修改昵称内容
        function updateNickname() {
                var content=" <div style=\"width:300px;height: 300px;margin-left: 35%;margin-top: 10%\">\n" +
                    "                <label >修改昵称:</label>&nbsp;&nbsp;&nbsp;&nbsp;\n" +
                    "            <div class=\"layui-input-inline\">\n" +
                    "                <input type=\"text\" name=\"nickname\" required  lay-verify=\"required\" placeholder=\"请输入需要修改的昵称\" autocomplete=\"off\" class=\"layui-input\">\n" +
                    "                </div>\n" +
                    "                <div class=\"layui-input-inline\" style=\"margin-top: 10%;margin-left: 10%\">\n" +
                    "                <button class=\"layui-btn  layui-btn-lg\"  lay-filter=\"formDemo\" onclick='updatenicheng()'>立即修改</button>\n" +
                    "                </div>\n" +
                    "                </div>";

                $("#contentid").html(content);
        }
        //执行后台修改昵称
        function updatenicheng() {
            $.ajax({
                url:"../user/updateNickname.do",
                type:"post",
                data:{'nickname':$("[name='nickname']").val()},
                dataType:"json",
                success:function (map) {
                    if(map.success){
                       alert("修改成功");
                        location.href=location;
                    }
                }
            })
        }
        //加入修改密码的内容
        function updatePassword() {
            var content='    <div style="width:300px;height: 300px;margin-left: 35%;margin-top: 10%">\n' +
                '                                        <div>\n' +
                '                                            <label >输入旧密码:</label>&nbsp;&nbsp;&nbsp;&nbsp;\n' +
                '                                            <div class="layui-input-inline">\n' +
                '                                                <input type="password" name="password" required  lay-verify="required" placeholder="请输入旧密码" autocomplete="off" class="layui-input">\n' +
                '                                            </div>\n' +
                '                                        </div>\n' +
                '                                        <div>\n' +
                '                                            <label >输入新密码:</label>&nbsp;&nbsp;&nbsp;&nbsp;\n' +
                '                                            <div class="layui-input-inline" style="margin-top: 20px">\n' +
                '                                                <input type="password" id="newpassword1" required  lay-verify="required" placeholder="请输入新密码" autocomplete="off" class="layui-input">\n' +
                '                                            </div>\n' +
                '                                        </div>\n' +
                '                                       <div>\n' +
                '                                           <label >确认新密码:</label>&nbsp;&nbsp;&nbsp;&nbsp;\n' +
                '                                           <div class="layui-input-inline" style="margin-top: 20px">\n' +
                '                                               <input type="password" id="newpassword2" required  lay-verify="required" placeholder="请确认新密码" autocomplete="off" class="layui-input">\n' +
                '                                           </div>\n' +
                '                                       </div>\n' +
                '                                        <div class="layui-input-inline" style="margin-top: 20px;margin-left: 40px">\n' +
                '                                            <button class="layui-btn  layui-btn-lg"  lay-filter="formDemo" onclick=\'updatemima()\'>立即修改</button>\n' +
                '                                        </div>\n' +
                '\n' +
                '                                    </div>';
            $("#contentid").html(content);
        }
        //执行后台修改密码
        function updatemima() {
            //验证该用户旧密码
            password="";
            $.ajax({
                url:"../user/queryPasswordByid.do",
                type:"post",
                dataType:"json",
                async:false,
                success:function (map) {
                    password=  map.password
                }
            })
            if(password!=$("[name='password']").val()){
                alert("旧密码输入错误")
            }else {
                if($("#newpassword1").val()==""||$("#newpassword2").val()==""||$("#newpassword1").val()!=$("#newpassword2").val()){
                    alert("两次输入密码不一致，且都不能为空!")
                }else{
                    //执行修改密码的后台
                   $.ajax({
                       url:"../user/updatePassword.do",
                       type:"post",
                       data:{'password':$("#newpassword1").val()},
                       dataType:"json",
                       success:function (map) {
                           if(map.success){
                               alert("修改成功")
                               location.href=location;
                           }
                       }
                   })
                }
            }

        }
        //----------------------------------------------设置结束-----------------------------------------------------------------------

        //--------------------------------------------搜索条件开始---------------------------------------------------------------
        function searchWhere() {
            $("#contentid").attr('class','no-guanzhu')
            var content=
                "\t<p class=\"no-img\"><img src=\"https://res.5i5j.com/pc/user/images/no-house.png\" alt=\"没有保存的搜索条件\"></p>\n" +
                "\t<p class=\"no-wz\">您还没保存搜索条件，去保存吧~</p>\n" +
                "\t<a href=\"../house/list.do\" class=\"more-link\" target=\"_blank\">查看房源列表</a>"

            $("#contentid").html(content)
        }
        //--------------------------------------------搜索条件结束---------------------------------------------------------------
        //----------------------------------------------合同查询开始-----------------------------------------------------------------------------
        //合同查询添加内容
        function queryHetongByWhere() {
            $("#indextype").html('<li actdata="1">合同查询<span></span></li>');
            var content=" <div style=\"width:300px;height: 300px;margin-left: 35%;margin-top: 10%\">\n" +
                "                                        <div>\n" +
                "                                            <label >证件号码:</label>&nbsp;&nbsp;&nbsp;&nbsp;\n" +
                "                                            <div class=\"layui-input-inline\">\n" +
                "                                                <input type=\"text\" name=\"idcard\" required  lay-verify=\"required\" placeholder=\"请输入身份证号\" autocomplete=\"off\" class=\"layui-input\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "\n" +
                "                                        <div  style=\"margin-top: 10%\">\n" +
                "                                            <label >客户姓名:</label>&nbsp;&nbsp;&nbsp;&nbsp;\n" +
                "                                            <div class=\"layui-input-inline\">\n" +
                "                                                <input type=\"text\" name=\"username\" required  lay-verify=\"required\" placeholder=\"请输入客户名称\" autocomplete=\"off\" class=\"layui-input\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "\n" +
                "                                        <div class=\"layui-input-inline\" style=\"margin-top: 20px;margin-left: 100px\">\n" +
                "                                            <button class=\"layui-btn  layui-btn-lg\"  lay-filter=\"formDemo\" onclick='toqueryHetongByWhere()'>提交</button>\n" +
                "                                        </div>\n" +
                "\n" +
                "                                    </div>";
            $("#contentid").html(content)
        }
        //跳转查询合同页面
        function toqueryHetongByWhere() {
            location.href="../my/toqueryHetongByWhere.do?idcard="+$("[name='idcard']").val()+"&username="+$("[name='username']").val();
        }

        //----------------------------------------------合同查询结束-----------------------------------------------------------------------------

        //查询关注房源的个数
        $.ajax({
            url:"../my/queryAttentHouseCount.do",
            type:"post",
            dataType:"json",
            success:function (count) {
                $("#attentHousecount").html(count);

            }
        })

        //查询关注房源的个数
        $.ajax({
            url:"../my/queryAttentHouseCount.do",
            type:"post",
            dataType:"json",
            success:function (count) {
                $("#attentHousecount").html(count);

            }
        })
        //注销
        function toremove() {
            location.href="../user/removeUser.do"
        }
        //跳转到本页面
        function toshowUser() {
            location.href="../user/toshowUser.do";
        }

    </script>
</html>
