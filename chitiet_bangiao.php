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
        $ngay = strtotime($_GET['ngay']);

?>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<link rel="shortcut icon" type="image/x-icon"  href="images/favicon.ico"/>
<link rel="stylesheet"  type="text/css" href="themes/theme_default/style/style.pack.css"/>
<link rel="stylesheet"  type="text/css" href="css/ui.all.css"/>
<link rel="stylesheet"  type="text/css" href="style/jquery.Slidemenu.css"/>
<link rel="stylesheet" href="style/export_detail.css" type="text/css" />
<div class="swap">

<div class="panelView" id="panelView">
    <h4><?php echo $setting["title"] ?></h4>
    <center>
            <H1>CHI TIẾT BÀN GIAO</H1>
            <p>Ngày:&nbsp;<?php echo $_GET['ngay']; ?></p>
    </center>
<table cellspacing="1" cellpadding="1" id="mainTable" style="width: 100%">
<tbody>
    <tr class="titleBottom">
     <td class="itemText">STT</td>
    <td class="itemText">Số HĐ</td>
    <td class="itemText">Khách Hàng</td>
    <td class="itemCenter">Địa chỉ</td>
    <td class="itemText">Hình thức thanh toán</td>
    <td class="itemText">Thành tiền</td>
    <td class="itemCenter">Ngày tạo</td>
    </tr>
    <?php

        $rs_hoadon=$dbf->getDynamic("bangiao","date_bangiao = ".$ngay."","id desc");
        $total_hoadon = $dbf->totalRows($rs_hoadon);
        if($total_hoadon>0)
        {
            $number_row=1;
            $tongsotienthongke = 0;
            while($row_hoadon=$dbf->nextData($rs_hoadon)){
              $id = $row_hoadon['id'];
              $sohoadon = $row_hoadon['sohoadon'];
              $fullname_sell = stripcslashes($row_hoadon['fullname_sell']);
              $fullname_dv = stripcslashes($row_hoadon['fullname_dv']);
              $address = stripcslashes($row_hoadon['address']);
              $mst = stripcslashes($row_hoadon['mst']);
              $thanhtoan_id = stripcslashes($row_hoadon['thanhtoan_id']);
              $info_thanhtoan = $dbf->getInfoColum("thanhtoan",$thanhtoan_id);

              $nhanvien_id = stripcslashes($row_hoadon['nhanvien_id']);
              $info_nhanvien = $dbf->getInfoColum("nhanvien",$nhanvien_id);

              if($thanhtoan_id==8)
              {
                $tongsotien = stripcslashes($row_hoadon['tongsotien']);
                $tongsotien = $tongsotien - (int)$row_hoadon['datcoc'];

              }else
              {
                $tongsotien = stripcslashes($row_hoadon['tongsotien']);
              }

              $tongsotienthongke+= $tongsotien;

              $array_mathang_id   = explode("|o0o|",$row_hoadon["array_mathang_id"]);
              $array_item_code    = explode("|o0o|",$row_hoadon["array_item_code"]);
              $array_hanghoa      = explode("|o0o|",$row_hoadon["array_hanghoa"]);
              $array_donvitinh    = explode("|o0o|",$row_hoadon["array_donvitinh"]);
              $array_soluong      = explode("|o0o|",$row_hoadon["array_soluong"]);
              $array_dongia       = explode("|o0o|",$row_hoadon["array_dongia"]);
              $array_giamgia      = explode("|o0o|",$row_hoadon["array_giamgia"]);
              $array_ghichu       = explode("|o0o|",$row_hoadon["array_ghichu"]);

              $number_field_dichvu = count($array_soluong);


              $ngay = stripcslashes($row_hoadon['ngay']);
              $thang = stripcslashes($row_hoadon['thang']);
              $nam = stripcslashes($row_hoadon['nam']);
              $giotao = stripcslashes($row_hoadon['giotao']);
              $ngaytao = $ngay."-".$thang."-20".$nam.":".$giotao;
              $status = stripcslashes($row_hoadon['status']);
    ?>
    <tr class="<?php echo (($i%2==0)?"cell2":"cell1")?>">

    <td style="width:20px; color:#3F5F7F" class="itemCenter"><?php echo $number_row?></td>
    <td class="itemText"><?php echo $sohoadon?></td>
    <td class="itemText"><?php echo $fullname_dv?></td>
    <td class="itemText"><?php echo $address?></td>
    <td class="itemText"><?php echo $info_thanhtoan['title']?></td>
    <td class="itemText"><?php echo $utl->format($tongsotien)?></td>
    <td class="itemText"><?php echo $ngaytao?></td>
    </tr>
    <tr class="<?php echo (($i%2==0)?"cell2":"cell1")?>">
        <td colspan="7" style="background: none">
             <table class="table_dichvu">
              <?php
                  $stt=1;
                  $contiengiamgia=0;
                  for ($i = 0; $i <$number_field_dichvu; $i++)
                  {
                     $congtienhang_thuc+=$array_soluong[$i]*$array_dongia[$i];
                     $contiengiamgia+= $array_giamgia[$i];
                     if($array_soluong[$i])
                     {


                  ?>
                    <tr id="field_<?=$i?>">
                      <td style="text-align: left"><?=$array_item_code[$i]?></td>
                      <td style="text-align: left"><?=$array_hanghoa[$i]?></td>
                      <td style="text-align: center"><?=$array_soluong[$i]?></td>
                      <td style="text-align: center"><?=$array_donvitinh[$i]?></td>
                      <td style="text-align: center"><?=$array_giamgia[$i]?></td>
                      <td style="text-align: center"><?=$utl->format($array_soluong[$i]*$array_dongia[$i])?></td>
                    </tr>
                  <?
                      $stt++;
                      }
                  }
              ?>
                  <?php if($contiengiamgia!=0){
                    ?>
                     <tr>
                      <td colspan="5" style="text-align: right">Giảm giá</td><td align="center"><b><?=$utl->format($contiengiamgia)?></b></td>
                     </tr>
                    <?php
                  }
                  ?>
                  <tr>
                      <td colspan="5" style="text-align: right">Thành tiền</td><td align="center"><b><?=$utl->format($tongsotien)?></b></td>
                  </tr>
             </table>
        </td>
    </tr>
        <?php
          $number_row++;
        }
      ?>
       <tr class="cell2">
        <td colspan="5" style="text-align: right"> Tổng số tiền:</td>
        <td colspan="2" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienthongke)?> VNĐ</b></td>

       </tr>
      <?php
      }else
      {
        echo "<tr class='cell2'><td colspan='12'><h3 style='text-align:left'> =>Không có dữ liệu</h3></td></tr>";
      }
    ?>
    </tbody>
    </table>
    <input type="hidden" value="" id="arrayid" name="arrayid">
    </div>
</div>