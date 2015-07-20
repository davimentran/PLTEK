<?php

    ob_start();
    session_start();
    include str_replace('\\','/',dirname(__FILE__)).'/class/class.HTML.php';

    include str_replace('\\','/',dirname(__FILE__)).'/class/class.DEFINE.php';
	include str_replace('\\','/',dirname(__FILE__)).'/class/class.DBFUNCTION.php';
	include str_replace('\\','/',dirname(__FILE__)).'/class/class.SINGLETON_MODEL.php';
	$dbf=SINGLETON_MODEL :: getInstance("DBFUNCTION");

    $html=new HTML();
    $CONFIG = $dbf->loadSetting();

	if(isset($_POST['submit'])){
        $username = $_POST['username'];
        $password = $_POST['password'];
		$msg= $dbf->processLogin($username,$password);
        if($msg=='success')
            $html->redirectURL("index.php");

	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" oncontextmenu="return false">
<head>
      <title>..:: Administrator - ĐĂNG NHẬP HỆ THỐNG ::..</title>
      <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
      <meta name="keywords" content="" />
      <meta name="description" content="" />
      <meta name="copyright" content="" />
      <meta http-equiv="refresh" content="3600"/>
      <link rel="stylesheet"  type="text/css" href="themes/theme_default/style/login.pack.css"/>
      <link rel="icon" type="image/x-icon" href="themes/theme_default/images/control.gif"/>
      <link rel="shortcut icon" type="image/x-icon"  href="themes/theme_default/images/control.gif"/>
      <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
      <script type="text/javascript" src="js/jquery.form.js"></script>

</head>
<body>

<div style="width:100%">
<form id="frmLogin" name="frmLogin" method="post" action=""/>
<div class="swap">
          <table border="0" cellpadding="" cellspacing="0" width="100%" class="main">
              <tr>
                  <td class="login"></td>
                  <td class="loginText">ĐĂNG NHẬP HỆ THỐNG</td>
              </tr>
              <tr>
                  <td colspan="2"><hr size="1" /></td>
              </tr>
              <tr>
                  <td colspan="2">
                       Nhập một Tên đăng nhập và mật khẩu hợp lệ. Sau đó nhấp vào "Đăng nhập" để truy cập quản trị hệ thống.
                  </td>
              </tr>
              <tr>
                  <td colspan="2"><hr size="1" /></td>
              </tr>
              <tr>
                  <td colspan="2"><span id="result" class="saodo"></span></td>
              </tr>
              <tr>
                  <td class="padding">Tên đăng nhập</td>
                  <td><input type="text" maxlength="30" name="username" id="username" /></td>
              </tr>
              <tr>
                  <td class="padding">Mật khẩu</td>
                  <td><input type="password" maxlength="30" name="password" id="password" /></td>
              </tr>
			  <tr style="display: none">
                  <td class="padding"></td>
                  <td>
				  		
							<input type="checkbox" id="persistent" name="persistent" value="y">
							<span class="kmsibold">Tự động đăng nhập trong 2 tuần nếu không đăng xuất.</span><br>
							<span class="subperstxt2">[Bỏ chọn nếu dùng chung máy tính]</span>
						
				  </td>
              </tr>
              <tr>
                  <td>              
                  </td>
                  <td>
                      <input type="submit" class="button" name="submit" id="submit" value="Đăng nhập" />
                      <input type="reset" class="button" name="reset" id="reset" value="Nhập lại" />
                  </td>
              </tr>
              <tr>
                  <td colspan="2"><hr size="1" /></td>
              </tr>

              <tr>
                  <td colspan="2" height="10"></td>
              </tr>
          </table>
  </div>

<script language="javascript">
    $(window).load(function()
    {
       $(".swap").fadeIn(300);
       $("#username").focus();
    });
</script>

</form>
</div>
</body>
</html>