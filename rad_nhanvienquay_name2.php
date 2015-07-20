<?php
        @session_start();
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
        $setting = $dbf->getInfoColum("setting",1);

        if($nhanvien_id!='')
        {
           $nhanvien = $dbf->getInfoColum("nhanvien",$nhanvien_id);
           $nameknv = $nhanvien["title"];
        }else
        {
           $nameknv = 'Tất cả';
        }
       
?>
<meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
<link rel="shortcut icon" type="image/x-icon"  href="images/favicon.ico"/>
<link rel="stylesheet"  type="text/css" href="themes/theme_default/style/style.pack.css"/>
<link rel="stylesheet"  type="text/css" href="css/ui.all.css"/>
<link rel="stylesheet"  type="text/css" href="style/jquery.Slidemenu.css"/>
<link rel="stylesheet" href="style/export_detail.css" type="text/css" />

<script language="JavaScript" src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript">
/*<![CDATA[*/
    function settongsoluong(soluong,id)
    {
      $('#'+id).html(soluong);
    }
/*]]>*/
</script>

<div class="swap">

<div class="panelView" id="panelView">
    <h4><?php echo $setting["title"] ?></h4>
    <center>
            <H1>THỐNG KÊ THEO NV NHẬN HÌNH - MẶT HÀNG</H1>
            <p>Từ ngày:&nbsp;<?php echo $_GET['tungay']; ?>&nbsp;&nbsp; Đến ngày:&nbsp;<?php echo $_GET['denngay'];?></p>
    </center>
<h3 style="padding: 0px; margin: 0px 0px 5px;">NV Nhận Hình:<?php echo $nameknv;?></h3>
<table cellspacing="1" cellpadding="1" id="mainTable" style="width: 100%">
<tbody>
    <tr class="titleBottom">
        <td class="itemText">STT</td>
        <td class="itemText">Mã Hàng</td>
        <td class="itemText">Tên Hàng</td>
        <td class="itemCenter">ĐVT</td>
        <td class="itemCenter">Số lượng</td>
        <td class="itemText">Đơn Giá</td>
        <td class="itemText">Chiết khấu</td>
        <td class="itemCenter">Thành tiền</td>
    </tr>
<?php
            $tongsotienthongke =0;
            $tongsoluong_all=0;
            if($nhanvien_id!='')
            {
               $rst_nhanvien=$dbf->getDynamic("nhanvien","id = ".(int)$nhanvien_id." and status=1","id asc");
            }else
            {
              $rst_nhanvien=$dbf->getDynamic("nhanvien","is_nvquay=1 and status=1","id asc");
            }

            $toal_nhanvien = $dbf->totalRows($rst_nhanvien);

            if($toal_nhanvien >0)
            {

            while($rows_nhanvien= $dbf->nextdata($rst_nhanvien))
            {
                 $id_nhanvien    = $rows_nhanvien['id'];
                 $title_nhanvien = stripcslashes($rows_nhanvien['title']);

            //$rst_nhanvien=$dbf->doSQL("SELECT DISTINCT array_mathang_id,  FROM hoadon where datecreated >= ".$tungay." and datecreated <= ".$denngay." and status=1");
            $rs_mathang=$dbf->getDynamic("hoadon","datecreated >= ".$tungay." and datecreated <= ".$denngay." and nhanvien_quay_id='".$id_nhanvien."' and status=1","id desc ");
            $toal_mathang = $dbf->totalRows($rs_mathang);

            if($toal_mathang >0)
            {

              while($rows_mathang= $dbf->nextdata($rs_mathang))
               {
                 $array_hoadon_id[]   = $rows_mathang['id'];
                 $sohoadon[]          = $rows_mathang['sohoadon'];
                 $array_mathang_id    = explode("|o0o|",$rows_mathang["array_mathang_id"]);
                 $array_item_code     = explode("|o0o|",$rows_mathang["array_item_code"]);
                 $array_hanghoa       = explode("|o0o|",$rows_mathang["array_hanghoa"]);
                 $tongsotienthongke+=(int)$rows_mathang['tongsotien'];

                 //luu de tinh
                  $array_mathang_id2[]  = explode("|o0o|",$rows_mathang["array_mathang_id"]);
                  $array_item_code2[]   = explode("|o0o|",$rows_mathang["array_item_code"]);
                  $array_hanghoa2[]     = explode("|o0o|",$rows_mathang["array_hanghoa"]);
                  $array_donvitinh[]    = explode("|o0o|",$rows_mathang["array_donvitinh"]);
                  $array_soluong[]      = explode("|o0o|",$rows_mathang["array_soluong"]);
                  $array_dongia[]       = explode("|o0o|",$rows_mathang["array_dongia"]);
                  $array_giamgia[]      = explode("|o0o|",$rows_mathang["array_giamgia"]);
                  $array_ghichu[]       = explode("|o0o|",$rows_mathang["array_ghichu"]);

                 for ($i = 0; $i <count($array_mathang_id); $i++)
                 {
                    if($array_mathang_id[$i]!=''){
                       $array_mathang_id_thuc[]     =   $array_mathang_id[$i];
                       $array_mathang_code_thuc[]   =   $array_item_code[$i];
                       $array_mathang_name_thuc[]   =   $array_hanghoa[$i];
                       // tinh
                    }
                 }
               }
            }
           //print_r($array_mathang_id2);
           //exit;
           $id_mathang2 = array_unique($array_mathang_id_thuc);
           $code2       = array_unique($array_mathang_code_thuc);
           $name2       = array_unique($array_mathang_name_thuc);
           sort($code2);
           //print_r($id_mathang2);
           //echo "<br/>";
          // print_r($code2);
           //echo "<br/>";
            //print_r($name2);
           //echo "<br/>";




 ?>

    <tr class="cell1">
        <td colspan="8"><h2>NV Nhận hình:<i><?php echo $title_nhanvien ?></i></h2></td>
    </tr>

    <?php
    $stt_number =1;
    $tongsotienthongke2 =0;
    $tongsoluong =0;
    $number_field = count($array_hoadon_id);
    foreach ($code2 as $key => $value)
    {
      $mathang_colum = $dbf->getInfoColum_code("mathang",$value);
      //echo $value;
      //exit;

    ?>

    <tr class="<?php echo (($stt_number%2==0)?"cell2":"cell1")?>">

          <td style="width:20px; color:#3F5F7F" class="itemCenter"><?php echo $stt_number?></td>
          <td class="itemText"><b><i><?php echo $value?></i></b></td>
          <td class="itemText" colspan="2"><b><i><?php echo $mathang_colum['item_name'];?></i></b></td>
          <td class="itemText" colspan="4">
             <?php
                $ramdom = rand(1,1000);
             ?>
            <b><i id="slsum_<?php echo $key;?>_<?php echo $ramdom?>"></i></b>
          </td>
    </tr>
        <?php
            $tongsotien=0;
            for ($j = 0; $j < $number_field; $j++)
            {
               for ($l = 0; $l < count($array_mathang_id2[$j]); $l++)
               {
                     if($value == $array_item_code2[$j][$l] )
                     {
                       $tongsotien+=($array_soluong[$j][$l]*$array_dongia[$j][$l]) - $array_giamgia[$j][$l];
                       //$tongsotienthongke+=($array_soluong[$j][$l]*$array_dongia[$j][$l])-$array_giamgia[$j][$l];
                       $tongsotienthongke2+=($array_soluong[$j][$l]*$array_dongia[$j][$l])-$array_giamgia[$j][$l];
                        $tongsoluong+= $array_soluong[$j][$l];
                       $tongsoluong_all+= $array_soluong[$j][$l];
                        $tongsumsoluong_sp+= $array_soluong[$j][$l];
                  ?>
                       <tr class="<?php echo (($j%2==0)?"cell2":"cell1")?>">
                            <td class="itemText" colspan="3">Mã phiếu:<b><?=$sohoadon[$j]?></b></td>
                            <td class="itemText"><?=$array_donvitinh[$j][$l]?></td>
                            <td class="itemText"><?=$array_soluong[$j][$l]?></td>
                            <td class="itemText"><?=$array_dongia[$j][$l]?></td>
                            <td class="itemText"><?=$array_giamgia[$j][$l]?></td>
                            <td class="itemText"><?=$utl->format(($array_soluong[$j][$l]*$array_dongia[$j][$l])-$array_giamgia[$j][$l])?></td>
                       </tr>
                  <?
                      }

                }
            }
        ?>
        <tr class="cell2">
          <td colspan="7" style="text-align: right">Thành tiền</td><td align="center"><b><?=$utl->format($tongsotien)?></b></td>
        </tr>
         <script language="JavaScript" type="text/javascript">
        /*<![CDATA[*/
           settongsoluong('<?php echo $tongsumsoluong_sp;?>','slsum_<?php echo $key;?>_<?php echo $ramdom?>');
        /*]]>*/
        </script>
        <?php
            $tongsumsoluong_sp=0;
            $stt_number++;
        }
     ?>
      <tr class="cell2">
            <td colspan="4" style="text-align: right"> Số lượng:</td>
            <td colspan="1" style="text-align: right"> <?php echo $tongsoluong;?></td>
            <td colspan="2" style="text-align: right"> Tổng số tiền theo nv:</td>
            <td colspan="1" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienthongke2)?> VNĐ</b></td>
      </tr>
     <?php
                  unset($array_hoadon_id);
                  $array_hoadon_id = array_values($array_hoadon_id);

                  unset($sohoadon);
                  $sohoadon = array_values($sohoadon);
                  unset($array_mathang_id);
                  $array_mathang_id = array_values($array_mathang_id);
                  unset($array_item_code);
                  $array_item_code = array_values($array_item_code);
                  unset($array_hanghoa);
                  $array_hanghoa = array_values($array_hanghoa);

                  unset($array_mathang_id2);
                  $array_mathang_id2 = array_values($array_mathang_id2);
                  unset($array_item_code2);
                  $array_item_code2 = array_values($array_item_code2);
                  unset($array_hanghoa2);
                  $array_hanghoa2 = array_values($array_hanghoa2);
                  unset($array_donvitinh);
                  $array_donvitinh = array_values($array_donvitinh);
                  unset($array_soluong);
                  $array_soluong = array_values($array_soluong);
                  unset($array_dongia);
                  $array_dongia = array_values($array_dongia);
                  unset($array_giamgia);
                  $array_giamgia = array_values($array_giamgia);
                  unset($array_ghichu);
                  $array_ghichu = array_values($array_ghichu);

                  unset($array_mathang_id_thuc);
                  $array_mathang_id_thuc = array_values($array_mathang_id_thuc);
                  unset($array_mathang_code_thuc);
                  $array_mathang_code_thuc = array_values($array_mathang_code_thuc);
                  unset($array_mathang_name_thuc);
                  $array_mathang_name_thuc = array_values($array_mathang_name_thuc);

                   unset($id_mathang2);
                   $id_mathang2 = array_values($array_ghichu);
                   unset($code2);
                   $code2 = array_values($code2);
                   unset($name2);
                   $name2 = array_values($name2);
     }
     }
     ?>
       <tr class="cell2">
            <td colspan="4" style="text-align: right"> Tổng số lượng:</td>
            <td colspan="1" style="text-align: right"> <?php echo $tongsoluong_all;?></td>

            <td colspan="2" style="text-align: right"> Tổng số tiền:</td>
            <td colspan="1" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienthongke)?> VNĐ</b></td>
       </tr>

    </tbody>

    </table>
    <input type="hidden" value="" id="arrayid" name="arrayid">
    </div>
</div>