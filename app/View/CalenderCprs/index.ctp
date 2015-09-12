<script>
    $(document).ready(function () {
        $('.nepaliDatePicker').nepaliDatePicker();
    });
</script>
<div class="calenderCprs index">
<!--<h2><?php echo __('<center>Calender Production Report</center>'); ?></h2> -->
<?= $this->Html->link('Add', array('action' => 'add'), ['class' => 'btn btn-primary pull-right']); ?>
<br><br>
<div class="panel panel-primary">
    <div class="panel-heading">
        <center><h4>Calendar Production Report</center>
        </h4></div>
    <div class="panel-body">
        <!-- row -->
        <div class="row">
            <div class="col-sm-3">
                <table class="table table-bordered table-hover">
                    <tr>
                        <td>Raw Materials</td>
                        <td class="success">1212</td>
                    </tr>
                    <tr>
                        <td>Brought Scrap</td>
                        <td class="success">1122</td>
                    </tr>
                    <tr>
                        <td>Scrap Used</td>
                        <td class="success">11222211</td>
                    </tr>
                    <tr>
                        <td>Dana Used</td>
                        <td class="success">6655</td>
                    </tr>
                </table>
            </div>
            <div class="col-sm-3">
                <table class="table table-bordered table-hover">
                    <tr>
                        <td>Scrap Details</td>
                        <td  class="success">788</td>
                    </tr>
                        <td>Reusable</td>
                        <td class="success">788</td>
                    </tr>
                        <td>Lamps and Plates</td>
                        <td class="success">788</td>
                    </tr>
                        <td>Total Scrap Used</td>
                        <td class="success">788</td>
                    </tr>
                </table>
            </div>
            <div class="col-sm-3">
                <form method="get">
                    <div class="input-group">
                        <input type="text" name="search" class="form-control nepaliDatePicker ndp-nepali-calendar" id="nepaliDatePicker" autocomplete="off" value="<?=isset($_GET['search'])?$_GET['search']:null;?>" placeholder="Search for..." onfocus="showCalendarBox('nepaliDatePicker')">
                  <span class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i>
                        </button>
                  </span>
                    </div>
                </form>
            </div>
            <div class="col-md-3">
                <div class="well">
                    <h4 class="text-danger"><?=$newItemAdded;?> Item is added by Mixing Section</h4>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- edit -->
<div id="myModal_edit" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Scraps Details</h4>
            </div>
            <div class="modal-body">
                <?php echo $this->Form->create('CalenderScrap', array(
                    'url' => array('controller' => 'CalenderScraps', 'action' => 'edit/' . $scraps[0]['calender_scrap']['id']),
                    'class' => 'form-horizontal',
                    'inputDefaults' => array(
                        'format' => array('before', 'label', 'between', 'input', 'error', 'after'),
                        'div' => array('class' => 'control-group'),
                        'label' => array('class' => 'col-sm-2 control-label'),
                        'between' => '<div class="col-xs-10">',
                        'after' => '</div>',
                        'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline')),
                    )));
                ?>
                <fieldset enabled="enabled">
                    <?php
                    $date = date('d-m-Y');
                    echo $this->Form->input('id', array('value' => $scraps[0]['calender_scrap']['id']));
                    echo $this->Form->input('date', array('type' => 'text', 'readonly', 'value' => $scd));
                    echo $this->Form->input('resuable', array('id' => 'reuse1', 'value' => $scraps[0]['calender_scrap']['resuable']));
                    echo $this->Form->input('lamps_plates', array('id' => 'lamps1', 'value' => $scraps[0]['calender_scrap']['lamps_plates'], 'onchange' => 'calculate1();'));
                    echo $this->Form->input('total_scrap_generated', array('id' => 'total1', 'readonly', 'value' => $scraps[0]['calender_scrap']['total_scrap_generated']));
                    ?>
                </fieldset>
            </div>
            <div class="modal-footer">
                <?php echo $this->Form->end(__('Submit'), array('onclick' => 'cal()', 'class' => 'btn btn-warning')); ?>
            </div>
        </div>
    </div>
</div>
<table class="table table-bordered table-hover" align="left">
    <tr class="success">
        <th>Nepalidate</th>
        <th>Shift</th>
        <th>Brand</th>
        <th>Quality</th>
        <th>Color</th>
        <th>Dimension</th>
        <th style="text-align:right">Length</th>
        <th style="text-align:right">NTWT</th>
        <th style="text-align:right">TotalOfMaterials</th>
        <th class="actions"><?php echo __('Actions'); ?></th>
    </tr>
    <?php $totalOfCurrentData = 0;//for currentTotal ?>
    <?php foreach ($consumptionItems as $c): ?>
        <tr>
            <td><?= $c['tbl_consumption_stock']['nepalidate']; ?></td>
            <td><?= $c['tbl_consumption_stock']['shift']; ?></td>
            <td><?= $c['tbl_consumption_stock']['brand']; ?></td>
            <td><?= $c['tbl_consumption_stock']['quality']; ?></td>
            <td><?= $c['tbl_consumption_stock']['color']; ?></td>
            <td><?= $c['tbl_consumption_stock']['dimension']; ?></td>
            <td><?= h(number_format($c['tbl_consumption_stock']['length'])); ?></td>
            <td><?= h(number_format($c['tbl_consumption_stock']['ntwt'])); ?></td>
            <td>
                <?php
                $total = 0;
                //total of current items calculation
                $materials = json_decode($c['tbl_consumption_stock']['materials']);
                foreach ($material_lists as $m):
                    $total = $total + $materials->$m['mixing_materials']['id'];
                endforeach;
                ?>
                <?= h(number_format($total)); ?>
                <?php $totalOfCurrentData += $total; ?>
            </td>
            <!-- <td align="right"><?php // echo h(number_format($calenderCpr['CalenderCpr']['length'])); ?>&nbsp;</td> -->


            <td class="actions">
                <?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $c['tbl_consumption_stock']['id'])); ?>
                <?php /* echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $calenderCpr['CalenderCpr']['id']), null, __('Are you sure you want to delete # %s?', $CalenderCpr['CalenderCpr']['id'])); */ ?>
            </td>
        </tr>
    <?php endforeach; ?>

    <?php
    //total netwt of current data
    $length_current = 0;
    $ntwt_current = 0;
    $mixing_wt_current = 0;
    $total = 0;

    foreach ($consumptionItems as $c):
        $length_current = $c['tbl_consumption_stock']['length'] + $length_current;
        $ntwt_current = $c['tbl_consumption_stock']['ntwt'] + $ntwt_current;
        $mixing_wt_current = $totalOfCurrentData;
    endforeach;
    foreach ($totalMaterials as $t):
        $material = json_decode($t['tbl_consumption_stock']['materials']);
        foreach ($material_lists as $m):
            $total = $total + $material->$m['mixing_materials']['id'];
        endforeach;
    endforeach;
    ?>

    <tr class="success">
        <td align="right" colspan="6"><strong>Total of current data</strong></td>
        <td align="right"><strong><?= h(number_format($length_current, 2)); ?></strong></td>
        <td align="right"><strong><?= h(number_format($ntwt_current, 2)); ?></strong></td>
        </td>
        <td align="right"><strong><?= h(number_format($mixing_wt_current, 2)); ?></strong></td>
        <td></td>
    </tr>
    <tr class="warning">
        <td align="right" colspan="6"><strong>Total</strong></td>
        <td align="right">
            <strong><?= h(number_format($lengthTotal, 2));?></strong>
        </td>
        <td align="right">
            <strong><?= h(number_format($ntwtTotal, 2)); ?></strong>
        </td>
        </td>
        <td align="right">
            <strong><?=h(number_format($total));?></strong>
        <td
    </tr>
</table>


<!-- pagination -->
<nav>
    <ul class="pagination pull-right">
        <?php if($pagination->currentPage-1>=1):?>
            <li><a href="<?=$this->Html->url(null,true).(isset($_GET['search'])?'?search='.$_GET['search'].'&page_id='.($pagination->currentPage-1):'?page_id='.($pagination->currentPage-1));?>" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
        <?php endif;?>

        <!-- first page -->
        <?php if($pagination->currentPage>1):?>
            <li><a href="<?=$this->Html->url(null,true).(isset($_GET['search'])?'?search='.$_GET['search'].'&page_id=1':'?page_id=1'); ?>">1</a></li>
        <?php endif;?>
        <!-- end first page -->
        <?php if($pagination->currentPage>3):?>
            <li><a href="#">...</a> </li>
        <?php endif;?>

        <?php if(2<$pagination->currentPage):?>
            <li><a href="<?=$this->Html->url(null,true).(isset($_GET['search'])?'?search='.$_GET['search'].'&page_id='.($pagination->currentPage-1):'?page_id='.($pagination->currentPage-1)); ?>"><?=$pagination->currentPage-1;?></a></li>
        <?php endif;?>
        <!-- current page -->
        <?php if($pagination->totalPage!=1):?>
            <li class="<?=isset($_GET['page_id'])==1?'active':'';?>"><a href="<?=$this->Html->url(null,true).(isset($_GET['search'])?'?search='.$_GET['search'].'&page_id='.$pagination->currentPage:'?page_id='.$pagination->currentPage); ?>"><?=$pagination->currentPage;?></a></li>
        <?php endif;?>
        <!-- end current page -->

        <?php if($pagination->totalPage>$pagination->currentPage+1):?>
            <li><a href="<?=$this->Html->url(null,true).(isset($_GET['search'])?'?search='.$_GET['search'].'&page_id='.($pagination->currentPage+1):'?page_id='.($pagination->currentPage+1)); ?>"><?=$pagination->currentPage+1;?></a></li>
        <?php endif;?>

        <?php if($pagination->totalPage>$pagination->currentPage+2):?>
            <li><a href="<?=$this->Html->url(null,true).(isset($_GET['search'])?'?search='.$_GET['search'].'&page_id='.($pagination->currentPage+2):'?page_id='.($pagination->currentPage+2)); ?>"><?=$pagination->currentPage+2;?></a></li>
        <?php endif;?>

        <?php if($pagination->totalPage-3>=$pagination->currentPage):?>
            <li><a href="#">...</a> </li>
        <?php endif;?>

        <!-- last page -->
        <?php if($pagination->currentPage!=$pagination->totalPage):?>
            <li><a href="<?=$this->Html->url(null,true).(isset($_GET['search'])?'?search='.$_GET['search'].'&page_id='.$pagination->totalPage:'?page_id='.$pagination->totalPage); ?>"><?=$pagination->totalPage;?></a></li>
        <?php endif;?>
        <!-- end last page -->

        <?php if($pagination->currentPage<$pagination->totalPage):?>
            <li><a href="<?=$this->Html->url(null,true).(isset($_GET['search'])?'?search='.$_GET['search'].'&page_id='.($pagination->currentPage+1):'?page_id='.($pagination->currentPage+1)); ?>" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
        <?php endif;?>
    </ul>
</nav>
<!-- end pagination -->
</div>

