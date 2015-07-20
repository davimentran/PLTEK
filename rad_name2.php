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
       
?>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
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
            <H1>CHI TIẾT BÀN GIAO</H1>
            <p>Ngày:&nbsp;<?php echo $_GET['tungay']; ?></p>
    </center>
<table cellspacing="1" cellpadding="1" id="mainTable" style="width: 100%">

<?php
            //$rst_khachhang=$dbf->doSQL("SELECT DISTINCT array_mathang_id,  FROM hoadon where datecreated >= ".$tungay." and datecreated <= ".$denngay." and status=1");
            $rs_mathang=$dbf->getDynamic("hoadon","datecreated >= ".$tungay." and datecreated <= ".$denngay." and status=1","id desc ");
            $toal_mathang = $dbf->totalRows($rs_mathang);

            if($toal_mathang >0)
            {
              $tongsotienthongke =0;
              $tongsoluong_all=0;
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

           //print_r($id_mathang2)."</pre>";
           //echo "<br/>";
           //print_r($code2)."</pre>";
           //echo "<br/>";
           //print_r($name2);
           //echo "<br/>";

           //sort($id_mathang2)."</pre>";
           //print_r($id_mathang2)."</pre>";
           //echo "<br/>";
           //print_r($code2);
           //exit();







 ?>

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
    $stt_number =1;
    $number_field = count($array_hoadon_id);

    foreach ($code2 as $key => $value)
    {

      $mathang_colum = $dbf->getInfoColum_code("mathang",$value);
      //print_r($mathang_colum);
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
            $tongsoluong =0;
            for ($j = 0; $j < $number_field; $j++)
            {
               for ($l = 0; $l < count($array_item_code2[$j]); $l++)
               {
                     if($value == $array_item_code2[$j][$l] )
                     {
                       $tongsotien+=($array_soluong[$j][$l]*$array_dongia[$j][$l])-$array_giamgia[$j][$l];
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
            //$tongsotienthongke+=$tongsotien;
            $tongsumsoluong_sp=0;
            $stt_number++;
        }
        ?>
       <tr class="cell2">
            <td colspan="4" style="text-align: right"> Số lượng:</td>
            <td colspan="1" style="text-align: center"> <b><?php echo $tongsoluong_all;?></b></td>
            <td colspan="2" style="text-align: right"> Tổng số tiền:</td>
            <td colspan="1" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienthongke)?> VNĐ</b></td>
       </tr>

        <tr class="cell2">
          <td colspan="8"><h1>Chi phí phát sinh</h1></td>
       </tr>

       <tr class="cell2">
        <td colspan="8">
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
        <td colspan="3" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($total_phatsinh)?> VNĐ</b></td>
       </tr>

       <tr class="cell2">
        <td colspan="5" style="text-align: right"> Tổng số phát sinh thu:</td>
        <td colspan="3" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($total_phatsinh_thu)?> VNĐ</b></td>
       </tr>

       <tr class="cell2">
        <td colspan="5" style="text-align: right"> Tổng số tiền thực:</td>
        <td colspan="3" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongsotienthongke - $total_phatsinh + $total_phatsinh_thu)?> VNĐ</b></td>
       </tr>

    </tbody>

    </table>
    <input type="hidden" value="" id="arrayid" name="arrayid">
    </div>
</div>