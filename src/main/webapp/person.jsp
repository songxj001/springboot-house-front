
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <meta charset="utf-8">
    <title>富家官网</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta charset="UTF-8">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-103163281-2', 'auto');
        ga('create', 'UA-103163281-15', 'auto','clientTracker');
        ga('send', 'pageview');
        var baseUrl = 'https://res.5i5j.com';
    </script>
    <link href="https://res.5i5j.com/pc/common/basic.css?64403f7f9b2dfdfb05503b99538d6625" rel="stylesheet">
    <link href="https://res.5i5j.com/pc/user/index.css?64403f7f9b2dfdfb05503b99538d6625" rel="stylesheet">
    <link href="https://res.5i5j.com/pc/im/css/xxSty.css?64403f7f9b2dfdfb05503b99538d6625" rel="stylesheet">
    <script src="https://res.5i5j.com/pc/common/jquery-1.10.2.min.js?0127560fc843e8f882678d882c03acd1"></script></head>
<body>
<!-- 导航 start -->
<div class="top-bar-box">
    <div class="main top-bar">
        <div class="top-logo"><a href="/" ><h1 style="color: #a6e1ec">富家地产</h1></a></div>
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
            <a href="/user/index" class="log" rel="nofollow">黄山倔子</a>
            <a href="/reglogin/logout" rel="nofollow">退出</a>
        </div>
        <ul class="top-nav">
            <li >
                <a href="/ershoufang/" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_BJ_首页','二手房按钮']);ga('send','event','PC_BJ_首页','二手房按钮','PC_BJ_首页_二手房按钮');">二手房                    </a>
            </li>
            <li >
                <a href="/zufang/" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_BJ_首页','租房按钮']);ga('send','event','PC_BJ_首页','租房按钮','PC_BJ_首页_租房按钮');">租房                    </a>
            </li>
            <li >
                <a href="/xiaoqu/" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_BJ_首页','小区按钮']);ga('send','event','PC_BJ_首页','小区按钮','PC_BJ_首页_小区按钮');">小区                    </a>
            </li>
            <li >
                <a href="/jingjiren/" target="_self" style="" onmousedown="_trackData.push(['addaction','PC_BJ_首页','经纪人按钮']);ga('send','event','PC_BJ_首页','经纪人按钮','PC_BJ_首页_经纪人按钮');">经纪人                    </a>
            </li>
        </ul>
    </div>
</div>
<iframe  id="hideiframe" style="display: none" name="hideiframe" src="/reglogin/ajaxlogin"></iframe>


<script>
    var _trackData = _trackData || [];	//全局变量，一定不要放到一个function里面
    var _trackDataType = 'web';
</script>

<script>
    //易分析
    var isLogin = '0';
    var register = '';
    var userId = '2280896';
    var userName = 'UID_9681CACD5DB5CD7F486420D0E5DAD7BF';
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
            <img src="https://qzapp.qlogo.cn/qzapp/101411981/F8A77640B3EB515C03B02B4CC2A6DE8F/30" alt="头像">	<span class="mask"></span>
        </div>
        <div class="mem-name">
            <a href="javascript:void(0);">
                黄山倔子	</a>
        </div>
        <div class="mem-guanzhu">
            <p class="m-guanzhu"><i class="icon-gz"></i>关注房源</p>
            <p class="m-num"></p>
        </div>
    </div>
    <div class="member-box clear">
        <div class="mem-nav-box">
            <ul class="mem-nav">
                <li class="cur"><a href="/user">首页</a></li>
                <%--<li class=""><a href="/user/smarthouse">选房卡</a></li>--%>
                <li class=""><a href="/index.jsp">我的足迹</a></li>
                <li class=''><a href="/user/search">搜索条件</a></li>
                <li class=''><a href="/user/myfocus/2">关注的房源</a></li>
                <li class=""><a href="/user/myfocus/3">关注的小区</a></li>
                <li class=""><a href="/user/myfocus/4">我的经纪人</a></li>
                <%--<li><a href="/tools/qualification">购房工具</a></li>--%>
                <li class="">
                    <a href="/user/hetong">合同查询</a>
                </li>
                <%--<li class=""><a href="/user/set">设置</a></li>--%>
            </ul>
        </div>

        <div class="mem-con-box">
            <h2 class="mem-tit"><span class="line"></span>最新房源动态</h2>
            <div class="mem-house-list">
                <ul class="mem-tab" id="indextype">
                    <!--<li class="cur">全部<span></span></li>-->
                    <li class="cur" actdata="1">新上<span></span></li>
                    <li class="" actdata="2">调价<span></span></li>
                    <li class=""actdata="3">成交<span></span></li>
                </ul>
                <div class="mem-tc">
                    <div class="mem-tab-con show">
                        <ul class="mem-tc-list" id="indexdata">

                            <div class="mem-tab-con mem-list2 ershou show">
                                <div class="no-guanzhu">
                                    <p class="no-img"><img src="https://res.5i5j.com/pc/user/images/no-house.png" alt="没有发现新动态"/></p>
                                    <p class="no-wz">没有发现新动态</p>
                                    <a href="/ershoufang/" class="more-link" target="_blank">关注更多二手房</a>
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
    var userId = "2280896";
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
            <div class="foot-logo"><a href="/" ><h1>富家地产</h1></a>
            </div>
            <ul class="footer-nav">
                <li><a href="https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=%E5%AF%8C%E5%AE%B6%E5%9C%B0%E4%BA%A7&rsv_pq=85d7878b00014c1f&rsv_t=9993h1lbBsOetLzP05Zgtxy%2FJ6doQd8GRi8xJQkKzqe584WuONlCp2b0i7g&rqlang=cn&rsv_enter=1&rsv_sug3=20&rsv_sug1=18&rsv_sug7=100&rsv_sug2=0&inputT=9251&rsv_sug4=10139" target="_blank" rel="nofollow">友情链接</a></li>
            </ul>
        </div>
        <div class="footer-info">
            <dl class="f-iphone">
                <dt><i class="icon-phone"></i></dt>
                <dd>客服电话</dd>
                <dd class="kf-num">15562200650</dd>
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
<script id="phpstat_js_id_10000001" src="https://res.5i5j.com/pc/common/10000001.js?2018040308"></script>
<!--图片默认资源-->
<!--script  src="https://res.5i5j.com/pc/common/image-error.js?20180403"></script-->
<!-- 底部 end -->
<!-- bottom end -->
<script>
    var filter = "0";
</script>
<script src="https://res.5i5j.com/pc/common/basic.js?0127560fc843e8f882678d882c03acd1"></script>
<script src="https://res.5i5j.com/pc/common/image-error.js?0127560fc843e8f882678d882c03acd1"></script>
<script src="https://res.5i5j.com/pc/common/online.service.js?0127560fc843e8f882678d882c03acd1"></script>
<script src="https://res.5i5j.com/pc/user/imagecropper.js?0127560fc843e8f882678d882c03acd1"></script>
<script src="https://res.5i5j.com/pc/user/index.js?0127560fc843e8f882678d882c03acd1"></script>
<script src="https://res.5i5j.com/pc/user/set.js?0127560fc843e8f882678d882c03acd1"></script>        <style>
    .webim-msg-img {
        max-width: 100%;
        vertical-align: middle;
        cursor: pointer;
        border-radius: 4px;
    }
</style>
<!--span onclick="addBroker(287071)"></span-->
<%--<div class="xBox talk-box">
    <!-- 单列 -->
    <div class="one_list">
        <!-- 默认  -->
        <div class="xiaoxiBox"><div class="mo"><p class="zhankai" id="total">咨询经纪人<i class="nums hide" id="num_total">0</i><a class="hide"></a></p></div></div>
        <!-- 消息列表 -->
        <ul class="xList hide" id="im_list">
            <div class="w-login">
                <img src="https://res.5i5j.com/pc/im/images/wu.png">
                <p>暂时没有新消息！</p>
            </div>
        </ul>
    </div>
    <!-- 消息内容 -->
    <div class="two_cons hide">
        <div class="closed"><p><a>关闭</a></p></div>
        <ul class="t_Mains" id="t_Mains">
            <!--经纪人爱聊-->

        </ul>
    </div>
</div>--%>
<input type="hidden" id="toReceiver" value="">
<input type="hidden" id="lastData" value="">
<script>
    var contactUserId = '2280896';
    var isActived = '1'; //是否是禁言
    var userName = '黄山倔子';
    var userPic = "https://qzapp.qlogo.cn/qzapp/101411981/F8A77640B3EB515C03B02B4CC2A6DE8F/30";
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
        "phonenum": ''
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
</script>	        <script>
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
</script>    </body>
</html>

