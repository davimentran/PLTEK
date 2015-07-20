<?php
    ob_start("zlib output compression");
    session_start();
	error_reporting(0);

    if(empty($_SESSION["user_login"])) {
        session_unregister("user_login");
		echo "<script>window.location.href='login.php'</script>";
        exit;
	}
    include str_replace('\\','/',dirname(__FILE__)).'/content_spaw/spaw.inc.php';
    include str_replace('\\','/',dirname(__FILE__)).'/class/class.DEFINE.php';
    include str_replace('\\','/',dirname(__FILE__)).'/class/class.HTML.php';
    include str_replace('\\','/',dirname(__FILE__)).'/class/class.JAVASCRIPT.php';
    include str_replace('\\','/',dirname(__FILE__)).'/class/class.UTILITIES.php';
    include str_replace('\\','/',dirname(__FILE__)).'/class/class.CSS.php';
    include str_replace('\\','/',dirname(__FILE__)).'/class/class.SINGLETON_MODEL.php';
    include str_replace('\\','/',dirname(__FILE__)).'/class/simple_html_dom.php';
    include str_replace('\\','/',dirname(__FILE__)).'/class/class.BUSINESSLOGIC.php';
    include str_replace('\\','/',dirname(__FILE__)).'/class/template.php';
	include str_replace('\\','/',dirname(__FILE__)).'/Cache_Lite/Lite/Function.php';

    $html=SINGLETON_MODEL::getInstance("HTML");
	$js=SINGLETON_MODEL::getInstance("JAVASCRIPT");
	$css=SINGLETON_MODEL::getInstance("CSS");
    $utl=SINGLETON_MODEL::getInstance("UTILITIES");
    $dbf=SINGLETON_MODEL::getInstance("BUSINESSLOGIC");
	$html->docType();

$id = $_GET["edit"];
if((int)$id)
{
  $info_hoadon = $dbf->getInfoColum("hoadon", (int)$id);
  $thanhtoan_id = $info_hoadon["thanhtoan_id"];
}



//print_r($info_hoadon);
?>
<link rel="stylesheet"  type="text/css" href="themes/theme_default/style/style.pack.css"/>
<link rel="stylesheet"  type="text/css" href="css/ui.all.css"/>

<table width="100%" cellspacing="0" cellpadding="0" align="center"><tbody><tr><td class="boxRedInside" colspan="5"><div class="boxRedInside">Sửa hình thức thanh toán</div></td></tr></tbody></table>
<div class="panelAction" id="panelAction" style="height:50px">
       <?php
        if(isset($_POST["cmdSuathanhtoan"]))
        {
           $id_hoadon       = $_POST["id_hoadon"];
           $thanhtoan_id    = $_POST["thanhtoan_id"];
           $ngay = date('d');
           $thang = date('m');
           $nam = date('y');
           $dateupdated = strtotime($nam . "-" . $thang . "-" . $ngay);

           if($dbf->updateTable("hoadon", array("thanhtoan_id" =>$thanhtoan_id,"dateupdated"=>$dateupdated), "id = " . $id_hoadon))
           {
              $info_thanhtoan = $dbf->getInfoColum("thanhtoan", (int)$thanhtoan_id);
              echo "<div style='color:red'><b>Cập nhật thành công</b></div>";
           ?>
                <script language="JavaScript" type="text/javascript">
                /*<![CDATA[*/
                //alert('Cập nhật thành công');
               // parent.window.location.reload();
               // parent.document.forms["frm"].submit();
               // parent.$.fancybox.close();
                  parent.document.getElementById("tt_<?php echo $id_hoadon?>").innerHTML="<?php echo  $info_thanhtoan['title']?>";
                /*]]>*/
                </script>
           <?php
           }else
           {
              echo "<div style='color:red'><b>Cập nhật thất bại. Vui lòng thực hiện lại</b></div>";
           }


        }
       ?>
       HT thanh toán: Khách hàng : <b><?php echo $info_hoadon["fullname_dv"] ?></b>
       <form name="frmthanhtoan" action="" method="post">
       <select name="thanhtoan_id" id="thanhtoan_id" style="width:100px;">
        <?php
              $rst_thanhtoan=$dbf->getDynamic("thanhtoan","status=1","title asc");
              $toal_thanhtoan = $dbf->totalRows($rst_thanhtoan);

              if($toal_thanhtoan >0)
              {

                while($rows_thanhtoan= $dbf->nextdata($rst_thanhtoan))
                 {
                   $id    = $rows_thanhtoan['id'];
                   $title = stripcslashes($rows_thanhtoan['title']);
                   echo '<option '.(($id== $thanhtoan_id)?"selected":"").' value="'.$id.'">'.$title.'</option>';

                 }
              }
          ?>
       </select>
       <input type="hidden" name="id_hoadon" id="id_hoadon" value="<?php echo $info_hoadon["id"]; ?>">
       <input type="submit" name="cmdSuathanhtoan" id="cmdSuathanhtoan" value="Sửa" />
       </form>
</div>