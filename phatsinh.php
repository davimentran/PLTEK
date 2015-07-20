<?php
include("index_table.php");
//set_time_limit(0);

if (isset ($_GET["edit"]) && $_GET["edit"] != '') {
  $info_lognv  = $dbf->getInfoColum("phatsinh", (int) $_GET["edit"]);
  if ($info_lognv == - 1) {
    $html->redirectURL("/phatsinh.php");
  }

  $datecreated = date("d-m-y",$info_lognv["datecreated"]);
  $term = $URL=explode("-",$datecreated);
  $info_lognv['ngay'] = $term[0];
  $info_lognv['thang'] = $term[1];
  $info_lognv['nam'] = $term[2];

}else
{
  $ngay = date('d');
  $thang = date('m');
  $nam = date('y');
  $giotao = date('H') . ":" . date('i') . ":" . date('s');
}

if(isset($_GET["delete"])){

  $arrayid = $_POST["arrayid"];
  $arrayid_tmp=$arrayid;
  $arrayid=str_replace(",","','",$arrayid);

  $arrayid="'".$arrayid."'";
  $arrayid=str_replace("''","'-1'",$arrayid);

  $affect=$dbf->deleteDynamic("phatsinh"," id in (".$arrayid.")");
  if($affect>0)
   {
     $html->redirectURL("/phatsinh.php");
   }
}

if(isset($_POST["cmdthemlog"]))
{

    $isvalue      = true;
    $ngay         = $_POST["ngay"];
    $thang        = $_POST["thang"];
    $nam          = $_POST["nam"];
    $giotao       = $_POST["giotao"];
    $datecreated  = strtotime($nam."-".$thang."-".$ngay);

    $title = $_POST["title"];
    $price = $_POST["price"];
    $loai = $_POST["loai"];

    if($ngay=='')
    {
       $isvalue= false;
       $msg.= "Vui lòng nhập ngày <br/>";
    }
    if($thang=='')
    {
       $isvalue= false;
       $msg.= "Vui lòng nhập tháng <br/>";
    }
    if($nam=='')
    {
       $isvalue= false;
       $msg.= "Vui lòng nhập năm <br/>";
    }

    if($title=='')
    {
       $isvalue= false;
       $msg.= "Vui lòng nhập tiêu đề <br/>";
    }

    if($price=='')
    {
       $isvalue= false;
       $msg.= "Vui lòng nhập số giá tiền <br/>";
    }

    if($isvalue){
        $array_col = array("title" => $title, "price" => $price,"loai" => $loai, "datecreated" => $datecreated, "giotao"=>$giotao);
        $affect = $dbf->insertTable("phatsinh", $array_col);
    }
}

if(isset($_POST["cmdcapnhatlog"]))
{

    $isvalue = true;

    $id_log =  (int) $_GET["edit"];

    $ngay         = $_POST["ngay"];
    $thang        = $_POST["thang"];
    $nam          = $_POST["nam"];
    $giotao       = $_POST["giotao"];

    $datecreated  = strtotime($nam."-".$thang."-".$ngay);
    $title  = $_POST["title"];
    $price  = $_POST["price"];
    $loai   = $_POST["loai"];

    if($ngay=='')
    {
       $isvalue= false;
       $msg.= "Vui lòng nhập ngày <br/>";
    }
    if($thang=='')
    {
       $isvalue= false;
       $msg.= "Vui lòng nhập tháng <br/>";
    }
    if($nam=='')
    {
       $isvalue= false;
       $msg.= "Vui lòng nhập năm <br/>";
    }

    if($title=='')
    {
       $isvalue= false;
       $msg.= "Vui lòng nhập tiêu đề <br/>";
    }

    if($price=='')
    {
       $isvalue= false;
       $msg.= "Vui lòng nhập số giá tiền <br/>";
    }

    if($isvalue){
        $array_col = array("title" => $title, "price" => $price, "loai"=>$loai,"datecreated" => $datecreated, "giotao"=>$giotao);
        $dbf->updateTable("phatsinh",$array_col , "id = " . $id_log);
    }
}

$where ='1=1';
if(isset($_POST["cmdSearch"]))
{

   $tungay = $_POST["tungay"];
   $_SESSION['tungay']= $_POST["tungay"];

   $denngay = $_POST["denngay"];
   $_SESSION['denngay']= $denngay;

   $loai = $_POST["loai"];
   $_SESSION['loai']= $loai;


}else
{
  if(!isset($_GET['PageNo']))
  {
      $_SESSION['tungay']="";
      $_SESSION['denngay']="";
  }
}

if($_SESSION['tungay']!='')
{
     $where.=' and datecreated >= "'.strtotime($_SESSION['tungay']).'" ';
}

if($_SESSION['denngay']!='')
{
     $where.=' and datecreated <= "'.strtotime($_SESSION['denngay']).'" ';
}

if($_SESSION['loai']!='')
{
     $where.=' and loai = "'.$_SESSION['loai'].'" ';
}


$PageSize=100;
$function_permission = $_SESSION['permission'][$dbf->getValueOfQuery('SELECT id FROM sys_table WHERE table_name="phatsinh"')];
//print_r($function_permission);

?>
<table width="100%" cellspacing="0" cellpadding="0" align="center"><tbody><tr><td class="boxRedInside" colspan="5"><div class="boxRedInside">Chi phí phát sinh</div></td></tr></tbody></table>
<div class="panelAction" id="panelAction" style="height:60px">
  <div style="float:left;width:16%;">
    <table cellspacing="1" cellpadding="1" id="panelTable">
	<tbody><tr>
        <td><a href="phatsinh.php" id="lnkaction" title="Insert">Thêm mới</a></td>
        <?php if($function_permission["is_delete"]){?>
        <td class="cellAction1"><a onclick="return deleteCommon('phatsinh.php?');" href="javascript:void(0);" title="Delete"><img border="0" title="Delete" src="themes/theme_default/images/b_delete.gif"></a></td><td><a onclick="return deleteCommon('phatsinh.php?');" href="javascript:void(0);" id="lnkaction" title="Delete">Xóa</a></td>
        <?php } ?>
        </tr>
	</tbody></table>
   </div>
   <div style="float: right; text-align: left; width:82%;">
      Từ ngày<input type="text" onfocus="fo(this)" onblur="lo(this)" maxlength="12" value="<?php echo $_SESSION['tungay'];?>" id="tungay" name="tungay" >
  	  <script type="text/javascript">
  		$(function() {
  			$('#tungay').datepicker({
  				changeMonth: true,
  				changeYear: true,
  				dateFormat: 'dd-mm-yy'
  			});
  		});
  	  </script>

      Đến Ngày<input type="text" onfocus="fo(this)" onblur="lo(this)" maxlength="12" value="<?php echo $_SESSION['denngay'];?>" id="denngay" name="denngay" >
  	  <script type="text/javascript">
  		$(function() {
  			$('#denngay').datepicker({
  				changeMonth: true,
  				changeYear: true,
  				dateFormat: 'dd-mm-yy'
  			});
  		});
  	  </script>
      Loại: <select name="loai">
                <option value="">-- Chọn loại --</option>
                <option <?php echo (($_SESSION["loai"]==1)?"selected":"")?> value="1">Chi</option>
                <option <?php echo (($_SESSION["loai"]==2)?"selected":"")?> value="2">Thu</option>
           </select>
       <input type="submit" name="cmdSearch" id="cmdSearch" value="Tìm kiếm" />
   </div>
    <div id="clear"></div>
</div>

<div class="panelView" id="panelView">
<?php if(!isset($_POST["cmdSearch"])) { ?>

<?php
if(isset ($_GET["edit"]) && $_GET["edit"] != '')
{

?>

<fieldset>
    <legend style="color: #000080"><b>Cập nhật chi phí phát sinh</b></legend>
    <?php
    if(isset($msg) && $msg !='')
    {
       echo "<div style='color:red'>".$msg."</div>";
    }
    ?>
    <table>
        <tr>
            <td class="boxGrey">Ngày</td>
            <td class="boxGrey2">
            <input type="text" value="<?php echo $info_lognv["ngay"];?>" class="nd2" onblur="lo(this);" onfocus="fo(this);" id="ngay" name="ngay" style="width:40px;"> /
            <input type="text" value="<?php echo $info_lognv["thang"];?>" class="nd2" onblur="lo(this);" onfocus="fo(this);" id="thang" name="thang" style="width:40px;">/
            <input type="text" value="<?php echo $info_lognv["nam"];?>" class="nd2" onblur="lo(this);" onfocus="fo(this);" id="nam" name="nam" style="width:40px;">
            <span>Giờ:</span>
            <input type="text" value="<?php echo $info_lognv["giotao"];?>" class="nd2" onblur="lo(this);" onfocus="fo(this);" id="giotao" name="giotao" style="width:80px;">
            </td>
            </tr>
     </table>
     Tiêu đề:  <input name="title" type="text" value="<?php echo $info_lognv["title"]; ?>" style="width:200px" />
     Giá tiền: <input name="price" id="price" type="text" value="<?php echo $info_lognv["price"]; ?>" style="width:100px"  onkeypress="return nhapso(event,'price')" />
     Loại: <select name="loai">
                <option <?php echo (($info_lognv["loai"]==1)?"selected":"")?> value="1">Chi</option>
                <option <?php echo (($info_lognv["loai"]==2)?"selected":"")?> value="2">Thu</option>
           </select>
     <input type="submit" name="cmdcapnhatlog" value="Cập nhật" />

</fieldset>

<?php

}
else
{
?>

<fieldset>
    <legend style="color: #000080"><b>Thêm chi phí phát sinh</b></legend>
    <?php
    if(isset($msg) && $msg !='')
    {
       echo "<div style='color:red'>".$msg."</div>";
    }
    ?>
    <table>
        <tr>
            <td class="boxGrey">Ngày</td>
            <td class="boxGrey2">
            <input type="text" value="<?php echo $ngay;?>" class="nd2" onblur="lo(this);" onfocus="fo(this);" id="ngay" name="ngay" style="width:40px;"> /
            <input type="text" value="<?php echo $thang;?>" class="nd2" onblur="lo(this);" onfocus="fo(this);" id="thang" name="thang" style="width:40px;">/
            <input type="text" value="<?php echo $nam;?>" class="nd2" onblur="lo(this);" onfocus="fo(this);" id="nam" name="nam" style="width:40px;">
            <span>Giờ:</span>
            <input type="text" value="<?php echo $giotao;?>" class="nd2" onblur="lo(this);" onfocus="fo(this);" id="giotao" name="giotao" style="width:80px;">
            </td>
            </tr>
     </table>
     Tiêu đề:  <input name="title" type="text" value="<?php echo $title; ?>" style="width:200px" />
     Giá tiền: <input name="price" id="price" type="text" value="<?php echo $price; ?>" style="width:100px"  onkeypress="return nhapso(event,'price')" />
     Loại: <select name="loai">
                <option <?php echo (($loai==1)?"selected":"")?> value="1">Chi</option>
                <option <?php echo (($loai==2)?"selected":"")?> value="2">Thu</option>
           </select>
     <input type="submit" name="cmdthemlog" value="Thêm" />

</fieldset>
<?php
}
}
?>

<table cellspacing="1" cellpadding="1" id="mainTable">
<tbody>
    <tr class="titleBottom">
    <td class="itemCenter">
        <input type="checkbox" onclick="docheck(this.checked,0);" value="1" id="chkall" name="chkall">
    </td>
    <td class="itemCenter">STT</td>
    <td class="itemText">Tiêu đề</td>
    <td class="itemText">Giá</td>
    <td class="itemText">Loại</td>
    <td class="itemText">Ngày tạo</td>
    </tr>
    <?php
        $url="/phatsinh.php?";
        $mang = $dbf->paging("phatsinh","".$where."","id desc",$url,$PageNo,$PageSize,$Pagenumber,$ModePaging);


        $rs_hoadon = $mang[0];
        $total_hoadon = $dbf->totalRows($rs_hoadon);
        if($total_hoadon>0)
        {
            $i=1;
            while($row_hoadon=$dbf->nextData($rs_hoadon)){
              $id = $row_hoadon['id'];
              $title  = $row_hoadon["title"];
              $price    = $utl->format($row_hoadon["price"]);
              $loai = $row_hoadon["loai"];
              $datecreated = date("d-m-Y",$row_hoadon["datecreated"]);
              $giotao = $row_hoadon["giotao"];

    ?>
    <tr class="<?php echo (($i%2==0)?"cell2":"cell1")?>">
        <td class="itemCenter"><input type="checkbox" class="" style="" onclick="docheckone();" value="<?php echo $id?>" id="chk" name="chk"> </td>
        <td style="width:20px; color:#3F5F7F" class="itemCenter"><?php echo $i?></td>
        <td class="itemText"><a href="phatsinh.php?edit=<?php echo $id?>" id="itemText"><?php echo $title;?></a></td>
        <td class="itemText"><a href="phatsinh.php?edit=<?php echo $id?>" id="itemText"><?php echo $price;?></a></td>
        <td class="itemText"><a href="phatsinh.php?edit=<?php echo $id?>" id="itemText"><?php echo (($loai==1)?"Chi":"Thu");?></a></td>
        <td class="itemText"><a href="phatsinh.php?edit=<?php echo $id?>" id="itemText"><?php echo $datecreated.":".$giotao;?></a></td>
     </tr>
        <?php
          $i++;
        }
      ?>
         <tr class="cell2">
            <td colspan="13"><?php echo $mang[1]?></td>
         </tr>
      <?php
        }
      ?>
    </tbody>
    </table>
    <input type="hidden" value="" id="arrayid" name="arrayid">
    </div>