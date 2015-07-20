<?php

include("index_table.php");

?>



<table width="100%" cellspacing="0" cellpadding="0" align="center"><tbody><tr><td class="boxRedInside" colspan="5"><div class="boxRedInside">Thống kê hàng tồn</div></td></tr></tbody></table>

<!--<div class="panelAction" id="panelAction" style="min-height: 3550px;"> !-->



<table cellspacing="1" cellpadding="1" id="mainTable" style="width: 100%">

<tbody>

    <tr class="titleBottom">

        <td class="itemText">STT</td>

        <td class="itemText">Mã Hàng</td>

        <td class="itemText">Tên Hàng</td>

        <td class="itemCenter">ĐVT</td>

        <td class="itemCenter">Số lượng</td>

        <td class="itemText">Giá vốn</td>

        <td class="itemText">Giá bán</td>

        <td class="itemCenter">Thành tiền giá gốc</td>

        <td class="itemCenter">Thành tiền giá bán</td>

    </tr>

    <?php

        $rst_hangton=$dbf->getDynamic("mathang","is_dichvu=0 and dientich=0 and status=1","item_code asc");



        $i=1;
        $tongtien = 0;
        $tongtien_giagoc = 0;
        $thanhtien_giagoc = 0;

        while($rows_hangton= $dbf->nextdata($rst_hangton))

         {

           $id              = $rows_hangton['id'];

           $item_code       = stripcslashes($rows_hangton['item_code']);

           $item_name       = stripcslashes($rows_hangton['item_name']);

           $unit            = stripcslashes($rows_hangton['unit']);

           $price           = stripcslashes($rows_hangton['price']);

           $price_goc       = stripcslashes($rows_hangton['price_goc']);

           $quantity        = stripcslashes($rows_hangton['quantity']);

           $thanhtien_giagoc = $quantity * $price_goc;



           $thanhtien = $quantity * $price;

           $tongtien+= $quantity * $price;

           $tongtien_giagoc+= $quantity * $price_goc;

    ?>



      <tr class="cell2" id="colum_<?php echo $id; ?>">

        <td class="itemText"><?php echo $i;?></td>

        <td class="itemText"><a target="_parent" href="mngMain.php?edit=<?php echo $id; ?>&table_name=mathang&table_return=hangton"><?php echo $item_code;?></a></td>

        <td class="itemText"><a target="_parent" href="mngMain.php?edit=<?php echo $id; ?>&table_name=mathang&table_return=hangton"><?php echo $item_name;?></a></td>

        <td class="itemCenter"><a target="_parent" href="mngMain.php?edit=<?php echo $id; ?>&table_name=mathang&table_return=hangton"><?php echo $unit;?></a></td>

        <td class="itemCenter"><a target="_parent" href="mngMain.php?edit=<?php echo $id; ?>&table_name=mathang&table_return=hangton"> <?php echo $utl->format($quantity);?></a></td>

        <td class="itemText"><?php echo $utl->format($price_goc)?></td>

        <td class="itemText"><?php echo $utl->format($price)?></td>

        <td class="itemText"><?php echo $utl->format($thanhtien_giagoc)?></td>

        <td class="itemText"><?php echo $utl->format($thanhtien)?></td>

    </tr>



    <?php

            $i++;

       }

    ?>

    <tr class="cell2">

        <td colspan="7" style="text-align: right"> Tổng số tiền:</td>

        <td colspan="1" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongtien_giagoc)?> VNĐ</b></td>

        <td colspan="1" style="text-align: left; color: red;font-size:14px;"><b><?php echo $utl->format($tongtien)?> VNĐ</b></td>



       </tr>

</tbody>

</table>



<div id="clear" style="clear: both"></div>

<!--</div>!-->



