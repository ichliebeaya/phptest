<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/uatTagLib.tld" prefix="uatTag" %>
<html:html>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-script-type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css" />

<meta name="author" content="Canon ITSolutions Japan Inc.">
<meta name="copyright" content="&copy; Canon ITSolutions Inc. 2011">


<title>Total Manager for Mac</title>

<script type="text/javascript" src="common/js/all.js"></script>
<script type="text/javascript" src="common/js/zool.js"></script>
<!-- <script language="JavaScript" src="js/common.js"></script> -->
<script type="text/javascript" src="common/js/colorful.js"></script>

<link rel="shortcut icon" type="image/png" href="ext/img/fabi_16x16.png" />

<!-- 
<link href="common/css/all.css" rel="stylesheet" type="text/css"   media="all">
<link href="common/css/content.css" rel="stylesheet" type="text/css" media="all">
 -->
<link href="common/css/cmj.css" rel="stylesheet" type="text/css" media="all"> 


<meta name="keywords" content="" />
<meta name="descrition" content="" />
<meta name="verify-pv1" content="" />
<link rel="shortcut icon" href="./ext/img/favicon.ico" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" type="text/css" href="./ext/css/default.css" media="all" />
<link rel="stylesheet" type="text/css" href="./ext/css/page_layout.css" />
<link rel="stylesheet" type="text/css" href="./ext/css/page_layout2.css" />
<link rel="stylesheet" type="text/css" href="./ext/css/page_layout3.css" />
<link rel="stylesheet" type="text/css" href="./ext/css/index.css" />
<script type="text/javascript" src="./ext/js/jquery-1.5.1.min.js"></script>
<link href="./ext/css/css/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" type="text/css" />
<script src="./ext/js/js/jquery-1.6.2.min.js" type="text/javascript"></script>
<script src="./ext/js/js/jquery-ui-1.8.16.custom.min.js" type="text/javascript"></script>
<script src="./ext/js/jquery.activity-indicator.js" type="text/javascript"></script>
<script src="./ext/js/load.js" type="text/javascript"></script>
<script type="text/javascript">

function doAction2(form, type) {
    var clearbody;
    var loading;
    if (document.all) { //IE
        clearbody = document.all.item("clearbody");
        loading = document.all.item("loading");
    } else if (document.getElementById) { //FF
        clearbody = document.getElementById("clearbody");
        loading = document.getElementById("loading");
    }
    clearbody.style.visibility = "hidden";
    window.scroll(0, 0);
    //loading.innerHTML = getLoadingHTML2();
	loadStart();
    form.actionType.value = type;
    form.submit();
}

function doEnter2(keyCode, form, type) {
    if (keyCode == 13) {
       doAction2(form, type);
    }
}

    $(function() {
        // ダイアログボックスの初期化
        $('#dialog').dialog({
            bgiframe: true,
            autoOpen: false,
            width: 380,
            modal: true,
            buttons: {
                // 「キャンセル」ボタンがクリックされた時には、
                // ダイアログボックスを閉じる
                'キャンセル': function() {
                    $(this).dialog('close');
                },
                // 「OK」ボタンがクリックされた時には、
                // ダイアログボックスを閉じて
                // 「○○さんこんにちは」とメッセージを表示する
                '登録': function() {
                    $(this).dialog('close');
                    $('#dialog2').dialog('open');


                }
            }
        });

        $('#dialog2').dialog({
            bgiframe: true,
            autoOpen: false,
            width: 445,
            modal: true,
            buttons: {
                // 「キャンセル」ボタンがクリックされた時には、
                // ダイアログボックスを閉じる
                'キャンセル': function() {
                    $(this).dialog('close');
                },
                // 「OK」ボタンがクリックされた時には、
                // ダイアログボックスを閉じて
                // 「○○さんこんにちは」とメッセージを表示する
                '入力': function() {
                    $(".Index_Tbl").find(".mac_address").eq(tribd - 1).html($('input[name="macaddress"]').val());
                    $(this).dialog('close');
                    $("#dialog6").dialog('open');

                }
            }
        });

        // idが「open_dialog」のリンクがクリックされた時に、
        // ダイアログボックスを開くようにする
        $('.ex_dialog').click(function() {
            // ダイアログボックスを開く
            $('#dialog').dialog('open');
        });

        // idが「open_dialog」のリンクがクリックされた時に、
        // ダイアログボックスを開くようにする
        $('.実行').click(function() {
            // ダイアログボックスを開く
            $('#dialog').dialog('open');
        });
    });



    jQuery(function() {
        jQuery("#jquery-bk-datepicker").datepicker();
    });





    function TOPAGE() {
        document.location = "maintenance_terminal.html";
    }

    // -->

</script>

</head>

<body onLoad="initColorfulInput();document.forms[0].userName.focus();"> 

<div id="all">

<!-- wrapper -->
<div id="wrapper">

	<div class="login">

	<!-- main_contents -->
	
 <div id="main_contents">
	
　　　<div id="category_layout">
	    
        
    <div id="main_block_top">
     <div class="index_block">
</div>
</div>
</div>

<img class="login_logo" src="./ext/img/top/logo.png" />


      <html:form action="/ADLogin">
        <html:hidden property="actionType"/>
        <div id="loading"></div>
        <div id="clearbody">

<div class="login_blc">

          <uatTag:putErrorMessage/>

<div class="login_id">
ユーザーID&nbsp;&nbsp;
<!-- 
<input type="text" name="" size="25px"/>
 -->
                <html:text name="FormADLogin" property="userName" size="25px" maxlength="16" onkeydown="javascript:doEnter2(event.keyCode, document.forms[0], 'OK')"/>
</div><br /><br />
<div class="login_id">パスワード&nbsp;&nbsp;&nbsp;
<!--  
<input type="text" name="" size="25px"/>
 -->
                <html:password name="FormADLogin" property="password" size="25px" maxlength="20" onkeypress="javascript:doEnter2(event.keyCode, document.forms[0], 'OK')"/>
</div>

<a href="javascript:doAction2(document.forms[0], 'OK')">
<img class="login_px"　alt="" src="./ext/img/login/btn_login_off.png" onmouseover="this.src='./ext/img/login/btn_login_on.png'" onmouseout="this.src='./ext/img/login/btn_login_off.png'"/>
</a>
<!--<input class="login_px" type="button"/>-->

</div>

	</div><!-- clearbody -->
      </html:form>


	<!-- /main_contents -->
</div>
</div>

	<!-- footer -->
	<div id="footer">
          <div class="pagefull">
           <div class="footer_font6">
              @Canon IT solutions Inc
	<br />
	<!-- version: 2.0.0_xx --><!-- ,20120130 -->
	version: 2.0.0<!-- ,20120305 -->
           </div>             
          </div>
	</div>
	<!-- /footer -->

</div>
<!-- /wrapper -->

</div><!-- css all end -->

</body>

</html:html>


