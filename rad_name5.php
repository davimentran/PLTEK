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
        $ngay_timkiem_t = explode("-",$_GET['tungay']);
        $ngay_timkiem =$ngay_timkiem_t[0];

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
            <H1>THỐNG KẾ CHI TIẾT: TIỀN MẶT</H1>
            <p>Từ ngày:&nbsp;<?php echo $_GET['tungay']; ?>&nbsp;&nbsp; Đến ngày:&nbsp;<?php echo $_GET['denngay'];?></p>
    </center>
<table cellspacing="1" cellpadding="1" id="mainTable" style="width: 100%">
<tbody>
    <tr class="titleBottom">
     <td class="itemText">STT</td>
    <td class="itemText">Số HĐ</td>
    <td class="itemText">Khách Hàng</td>
    <td class="itemCenter">Địa chỉ</td>
    <td class="itemText">Hình thức thanh toán</td>
    <td class="itemText">Đặt cọc</td>
    <td class="itemText">Tiền nợ</td>
    <td class="itemText">Thành tiền</td>
    <td class="itemCenter">Ngày tạo</td>
    </tr>
    <?php

        $rs_hoadon=$dbf->getDynamic("hoadon","((datecreated >= ".$tungay." and datecreated <= ".$denngay.") or (dateupdated >= ".$tungay." and dateupdated <= ".$denngay.")) and (thanhtoan_id=8  or thanhtoan_id=5) and status=1","id desc ");
        $total_hoadon = $dbf->totalRows($rs_hoadon);
        if($total_hoadon>0)
        {
            $number_row=1;
            $tongtieno=0;
            $tongsotienthongke = 0;
            $tongsotienthongke_all=0;
            $tongsotienthongke_datcoc = 0;
            $stt_hodon =0;
            while($row_hoadon=$dbf->nextData($rs_hoadon)){
              $id = $row_hoadon['id'];
              $sohoadon = $row_hoadon['sohoadon'];
              $fullname_sell = stripcslashes($row_hoadon['fullname_sell']);
              $fullname_dv = stripcslashes($row_hoadon['fullname_dv']);
              $address = stripcslashes($row_hoadon['address']);
              $mst = stripcslashes($row_hoadon['mst']);
              $thanhtoan_id = stripcslashes($row_hoadon['thanhtoan_id']);
              $info_thanhtoan = $dbf->getInfoColum("thanhtoan",$thanhtoan_id);

              $datcoc = stripcslashes($row_hoadon['datcoc']);

              $nhanvien_id = stripcslashes($row_hoadon['nhanvien_id']);
              $info_nhanvien = $dbf->getInfoColum("nhanvien",$nhanvien_id);
              $ngay = stripcslashes($row_hoadon['ngay']);

              $tongsotien = $row_hoadon['tongsotien'];

              $conlai =  (int)$tongsotien - (int)$datcoc;
              $datecreated = $row_hoadon['datecreated'];
              $dateupdated = $row_hoadon['dateupdated'];

              if($thanhtoan_id==8)
              {
                 $tongsotienmat+=$datcoc;
                 $tongsotienthongke+=$datcoc;
              }else
              {
                  //Tính tiền mặt tại 1 ngày
                  if($tungay==$denngay)
                  {
                      //Ngày cập nhật khác ngày tạo hóa đơn
                      if($datecreated != $dateupdated)
                      {
                          //Ngày cập nhật khác 0 và ngày cập nhật bằng ngày tìm kiềm cùng ngày
                          if($dateupdated!=0 && $dateupdated==$tungay)
                          {
                            $tongsotienmat+=$conlai;
                            $tongsotienthongke+=$conlai;
                            $tongsotien = $conlai;
                          }// ngược lại ngày cập nhật khác ngày tìm kiếm
                          else
                          {
                                //hóa đơn đã được cập nhật
                                if($dateupdated > 0)
                                {
                                $tongsotienmat+=$datcoc;
                                $tongsotienthongke+=$datcoc;
                                $tongsotien = $datcoc;
                                }// hóa đơn chưa được cập nhật cho là tiền mặt luôn
                                else
                                {
                                   $tongsotienmat+=$tongsotien;
                                   $tongsotienthongke+=$tongsotien;
                                }
                          }
                     }// Tim kiem nhieu ngay
                     else
                     {
                       $tongsotienmat+=$tongsotien;
                       $tongsotienthongke+=$tongsotien;
                     }
                  }
                  else
                  {
                     $tongsotienmat+=$tongsotien;
                     $tongsotienthongke+=$tongsotien;
                  }

              }

              $tongsotienthongke_datcoc+=$datcoc;


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
              $stt_hodon ++;
    ?>
    <tr class="<?php echo (($i%2==0)?"cell2":"cell1")?>">

    <td style="width:20px; color:#3F5F7F" class="itemCenter"><?php echo $number_row?></td>
    <td class="itemText"><?php echo $sohoadon?></td>
    <td class="itemText"><?php echo $fullname_dv?></td>
    <td class="itemText"><?php echo $address?></td>
    <td class="itemText"><?php echo $info_thanhtoan['title']?></td>
    <td class="itemText"><?php echo $utl->format($datcoc)?></td>
    <td class="itemText">
        <?php
                if($thanhtoan_id==8)
                {
                    echo $utl->format($tongsotien - $datcoc);
                }else
                {
                   echo 0;
                }
        ?>
    </td>
    <td class="itemText"><?php echo $utl->format($tongsotien);?></td>
    <td class="itemText"><?php echo "Ngày tạo: ".date('d-m-Y',$datecreated);?><?php echo (($dateupdated>0)?"<br/>Cập nhật:".date('d-m-Y',$dateupdated):"");?></td>
    </tr>
    <tr class="<?php echo (($i%2==0)?"cell2":"cell1")?>">
        <td colspan="9" style="background: none">
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
                      <td colspan="5" style="text-align: right">Giảm giá</td><td align="center"><b><?php echo $utl->format($contiengiamgia);?></b></td>
                     </tr>
                    <?php
                  }
                  ?>
                  <tr>
                      <td colspan="5" style="text-align: right">Thành tiền</td><td align="center"><b><?php echo $utl->format($tongsotien);?></b>
                  </td>
                  </tr>
             </table>
        </td>
    </tr>
        <?php
          $number_row++;
        }
       ?>
      <tr class="cell2">
        <td colspan="6" style="text-align: right">Tổng tiền đặt cọc</td>
        <td style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienthongke_datcoc)?> </b></td>

        <td style="text-align: right"> Tổng tiền tiền mặt:</td>
        <td style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienmat)?> </b></td>

       </tr>
      <?php
        $tongsotienthongke_datcoc_all+=$tongsotienthongke_datcoc;
      }else
      {
        echo "<tr class='cell2'><td colspan='12'><h3 style='text-align:left'> =>Không có dữ liệu</h3></td></tr>";
      }
    ?>

    <tr class="cell2">
       <td colspan='8' style="text-align: right"> TỔNG TIỀN MẶT LÀ:</td>
       <td style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienthongke)?> VNĐ</b></td>
     </tr>

     <tr class="cell2">
          <td colspan="9"><h1>Chi phí phát sinh</h1></td>
       </tr>

       <tr class="cell2">
        <td colspan="9">
               <table cellspacing="1" cellpadding="1" id="mainTable">
                <tbody>
                    <tr class="titleBottom">
                    <td class="itemCenter">STT</td>
                    <td class="itemText">Tiêu đề</td>
                    <td class="itemText">Giá</td>
                    <td class="itemText">Loại</td>
                    <td class="itemText">Ngày tạo</td>
                    </tr>
                    <?php
                        $rs_phatsinh=$dbf->getDynamic("phatsinh","datecreated >= ".$tungay." and datecreated <= ".$denngay."","id desc");
                        $total_phatsinh = $dbf->totalRows($rs_phatsinh);
                        if($total_phatsinh>0)
                        {
                            $i=1;
                            $total_phatsinh=0;
                            while($row_phatsinh=$dbf->nextData($rs_phatsinh)){
                              $id = $row_phatsinh['id'];
                              $title  = $row_phatsinh["title"];
                              $price    = $utl->format($row_phatsinh["price"]);
                              $datecreated = date("d-m-Y",$row_phatsinh["datecreated"]);
                              $giotao = $row_phatsinh["giotao"];

                              $loai = $row_phatsinh["loai"];

                              if($loai==1)
                              {
                                $total_phatsinh+=$row_phatsinh["price"];
                              }else
                              {
                                 $total_phatsinh_thu+= $row_phatsinh["price"];
                              }
                    ?>
                    <tr class="<?php echo (($i%2==0)?"cell2":"cell1")?>">
                        <td style="width:20px; color:#3F5F7F" class="itemCenter"><?php echo $i?></td>
                        <td class="itemText"><?php echo $title;?></td>
                        <td class="itemText"><?php echo $price;?></td>
                        <td class="itemText"><?php echo (($loai==1)?"Chi":"Thu");?></td>
                        <td class="itemText"><?php echo $datecreated.":".$giotao;?></td>
                     </tr>
                        <?php
                          $i++;
                        }
                        }
                      ?>
                    </tbody>
                    </table>
        </td>
       </tr>

       <tr class="cell2">
        <td colspan="5" style="text-align: right"> Tổng số phát sinh chi:</td>
        <td colspan="4" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($total_phatsinh)?> VNĐ</b></td>
       </tr>

       <tr class="cell2">
        <td colspan="5" style="text-align: right"> Tổng số phát sinh thu:</td>
        <td colspan="4" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($total_phatsinh_thu)?> VNĐ</b></td>
       </tr>

       <tr class="cell2">
        <td colspan="5" style="text-align: right"> Tổng số tiền thực:</td>
        <td colspan="4" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienthongke - $total_phatsinh + $total_phatsinh_thu)?> VNĐ</b></td>
       </tr>

    </tbody>
    </table>
    <input type="hidden" value="" id="arrayid" name="arrayid">
    </div>
</div>