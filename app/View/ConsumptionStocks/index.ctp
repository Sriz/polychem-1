<script>
    $(document).ready(function () {
        var value = ''
        $('.popupDatepicker').nepaliDatePicker();
        // Trigger On change/Selected event
        $.onChangeDatepicker_Ravindra = function (selectedDate) {
            value = $("#popupDatepicker").val();
            $.ajax({
                url: "/polychem/ConsumptionStocks/create_mixingpdf",
                type: "POST",
                cache: false,
                data: {city_id: value}
            });
        }
    });
</script>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            <strong>
                <center>Consumption Stock</center>
            </strong>
        </h3>
    </div>
    <div class="panel-body">
        <table>
            <?php echo '<tr><td>' . $this->Search->create('', array('class' => 'form-inline', 'type' => 'post')) . '</td>';
            echo '<td>' . $this->Search->input('filter1', array('id' => 'popupDatepicker', 'class' => 'popupDatepicker')) . '</td>';

            echo '<td>' . $this->Search->end(__('Search', true)) . '</td>';
            ?>
            <td>
                <button class="btn btn-primary"
                        onclick="window.location.href='<?php echo Router::url(array('controller' => 'ConsumptionStocks', 'action' => 'add')) ?>'">
                    Add
                </button>
            </td>
            <td>
                <button class="btn btn-primary"
                        onclick="window.open('<?php echo Router::url(array('controller' => 'ConsumptionStocks', 'action' => 'create_mixingpdf')) ?>')">
                    Print
                </button>


            </td>
        </table>
    </div>
</div>

<ul class="pagination pagination-sm">
    <?php
    echo '<li>' . $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled')) . '</li>';
    echo '<li>' . $this->Paginator->numbers(array('separator' => '')) . '</li>';
    echo '<li>' . $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled')) . '</li>';
    //print_r($this->Paginator->last());
    ?>
</ul>
<!--<div class="row" id="print">
    <div class="col-lg-4">
        <div class="row">
            <div class="col-xs-13">
                <table class="table  table-hover">
                    <tr>
                        <td class="success">Action</td>
                    </tr>
                    <tr>
                        <td class="success">Date</td>
                    </tr>
                    <tr>
                        <td class="success">Brand</td>
                    </tr>
                    <tr>
                        <td class="success">Quality</td>
                    </tr>
                    <tr>
                        <td class="success">Color</td>
                    </tr>
                    <tr>
                        <td class="success">Dimension</td>
                    </tr>
                    <?php
/*
                    //print'<pre>';print_r($mixingraws);print'</pre>';
                    if (is_array($mixingraws)) {
                        $mixingraws = array_reverse($mixingraws);
                    }
                    foreach ($mixingraws as $mixing):
                        echo "<tr>";
                        echo "<td>";
                        echo $mixing;
                        echo "</td>";
                        echo "</tr>";
                    endforeach;
                    */?>
                    <tr>
                        <td>Total</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <?php
/*    $i = 1;
    $flag = 1;
    $count = 1;
    $number = count($mixingraws);
    //$consumptionStock['ConsumptionStocks']['quantity'];
    $consumptionStocks = array_reverse($consumptionStocks, true);
    /* $arr = [];
     $arr1 = [];
     $n =count($consumptionStocks);
     for ($i=1; $i<$n; $i++){
         $arr[] = $consumptionStocks[$i];
         if($i%($n/4) ==0)
         {
             $arr1[] = $arr;
             $arr[]=array();
         }
     }
     echo '<pre>';
     var_dump($arr1);exit;*/
/*
    foreach ($consumptionStocks as $consumptionStock):
        if ($i <= 1) {
            echo '<div class="col-lg-2 pull-right">';
            echo '<table class="table">';
            echo '<tr><td class="success" align="right">' . $this->Html->link(__('Edit'), array('action' => 'edit', $consumptionStock['ConsumptionStock']['consumption_id'])) . '&nbsp'
                .
                $this->Form->postLink(__('Delete'), array('action' => 'delete', $consumptionStock['ConsumptionStock']['consumption_id']), null, __('Are you sure you want to delete # %s?', $consumptionStock['ConsumptionStock']['consumption_id'])) .
                '</td></tr>';
            echo '<tr><td class="success" align="right">' . $consumptionStock['ConsumptionStock']['nepalidate'] . '</td></tr>';
            echo '<tr><td class="success" align="right">' . $consumptionStock['ConsumptionStock']['brand'] . '</td></tr>';
            echo '<tr><td class="success" align="right">' . $consumptionStock['ConsumptionStock']['quality_id'] . '</td></tr>';
            echo '<tr><td class="success" align="right">' . $consumptionStock['ConsumptionStock']['color'] . '</td></tr>';
            echo '<tr><td class="success" align="right">' . $consumptionStock['ConsumptionStock']['dimension'] . '</td></tr>';
            $i = 2;
            $number--;
        }
        //$flag=1 at first, $number =number of materials in mixing-materials i.e. 34
        if ($flag <= $number) {
            echo '<tr>';
            //echo '<td>'.$consumptionStock['ConsumptionStock']['material_id'].'</td>';
            echo '<td style="text-align:right;" class="xedit" id="' . $consumptionStock['ConsumptionStock']['consumption_id'] . '" key="quantity">' . number_format($consumptionStock['ConsumptionStock']['quantity'], 2) . '</td>';
            echo '</tr>';
            $number = $number - 1;
        } else {
            //from this line  i need to break the table
            echo '<tr>';
            echo '<td style="text-align:right;" class="xedit" id="' . $consumptionStock['ConsumptionStock']['consumption_id'] . '" key="quantity">' . number_format($consumptionStock['ConsumptionStock']['quantity'], 2) . '</td>';
            echo '</tr>';
            echo '<tr>';
            echo '<td style="text-align:right;" id="' . $consumptionStock['ConsumptionStock']['total'] . '" key="quantity"><strong>' . number_format($consumptionStock['ConsumptionStock']['total'] ? $consumptionStock['ConsumptionStock']['total'] : '0', 2) . '</strong></td>';
            echo '</tr>';
            $i = 1;
            $number = count($mixingraws);
            $count = 1;
            echo '</table>';
            echo '</div>';
        }
    endforeach;
    */?>
</div>-->
<!--------------------------------------- new table ----------------------------------->
<div class="clearfix"></div>
<hr><br>
<h2>New Table</h2>
<?php
//echo '<pre>';
//var_dump($consumptionStocks);
//$consumptionStocks --material_id
//var_dump($mixingraws);exit;
//$mixingraws = array_reverse($mixingraws);
//$consumptionStocks = array_reverse($consumptionStocks, true);
echo $count = count($consumptionStocks);
?>
<?php
$date_arr = [];
$brand_arr = [];
$quality_arr = [];
$color_arr = [];
$dimension_arr = [];
$id_arr = [];

foreach ($mixingraws as $m):
    $count = 0;
    foreach ($consumptionStocks as $c):
        if ($c['ConsumptionStock']['material_id'] == $m) {
            $count = $count + 1;
            !isset($date_arr[$count]) ? $date_arr[$count] = $c['ConsumptionStock']['nepalidate'] : null;
            !isset($brand_arr[$count]) ? $brand_arr[$count] = $c['ConsumptionStock']['brand'] : null;
            !isset($quality_arr[$count]) ? $quality_arr[$count] = $c['ConsumptionStock']['quality_id'] : null;
            !isset($color_arr[$count]) ? $color_arr[$count] = $c['ConsumptionStock']['color'] : null;
            !isset($dimension_arr[$count]) ? $dimension_arr[$count] = $c['ConsumptionStock']['dimension'] : null;
            !isset($id_arr[$count]) ? $id_arr[$count] = $c['ConsumptionStock']['consumption_id'] : null;
        }
    endforeach;
endforeach;
?>
<table class="table table-bordered table-hover">
    <tr class="success">
        <td>Action</td>
        <?php foreach ($id_arr as $i): ?>
            <td class="text-center"><?= $this->Html->link(__('Edit'), array('action' => 'edit', $i)); ?> || <?= $this->Html->link(__('Delete'), array('action' => 'delete', $i)); ?></td>
        <?php endforeach; ?>
    </tr>
    <tr class="success">
        <td>Date</td>
        <?php foreach ($date_arr as $d): ?>
            <td><?= $d; ?></td>
        <?php endforeach; ?>
    </tr>
    <tr class="success">
        <td>Brand</td>
        <?php foreach ($brand_arr as $d): ?>
            <td><?= $d; ?></td>
        <?php endforeach; ?>
    </tr>
    <tr class="success">
        <td>Quality</td>
        <?php foreach ($quality_arr as $d): ?>
            <td><?= $d; ?></td>
        <?php endforeach; ?>
    </tr>
    <tr class="success">
        <td>Color</td>
        <?php foreach ($color_arr as $d): ?>
            <td><?= $d; ?></td>
        <?php endforeach; ?>
    </tr>
    <tr class="success">
        <td>Dimension</td>
        <?php foreach ($dimension_arr as $d): ?>
            <td><?= $d; ?></td>
        <?php endforeach; ?>
    </tr>
    <?php foreach ($mixingraws as $m): ?>
        <tr>
            <td><?= $m; ?></td>
            <?php $count = 0; ?>
            <?php foreach ($consumptionStocks as $c):
                if ($c['ConsumptionStock']['material_id'] == $m) {
                    $count = $count + 1;
                    echo "<td title='" . $c['ConsumptionStock']['nepalidate'] . "'>" . $c['ConsumptionStock']['quantity'] . "</td>";
                    //!isset($arr[$count])?$arr[$count] =$c['ConsumptionStock']['nepalidate']:null;
                }
            endforeach;
            if ($count < 4) {
                for ($i = 0; $i < 4 - $count; $i++) {
                    echo '<td>0</td>';
                }
            }
            ?>

        </tr>
    <?php endforeach; ?>
</table>


<script type="text/javascript">
    jQuery(document).ready(function () {
        $.fn.editable.defaults.mode = 'inline';
        $('.xedit').editable();
        $(document).on('click', '.editable-submit', function () {
            var key = $(this).closest('.editable-container').prev().attr('key');
            var x = $(this).closest('.editable-container').prev().attr('id');
            var y = $('.input-sm').val();
            var z = $(this).closest('.editable-container').prev().text(y);

            $.ajax({
                url: "/polychem/ConsumptionStocks/ajaxupdate?id=" + x + "&data=" + y + '&key=' + key,
                type: 'POST',
                success: function (s) {
                    if (s == 'status') {
                        $(z).html(y);
                    }
                    if (s == 'error') {
                        alert('Error Processing your Request!');
                    }
                },
                error: function (e) {
                    alert('Error Processing your Request!!');
                }
            });
        });
    });
</script>
