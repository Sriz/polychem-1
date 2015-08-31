<?php
//echo '<pre>';
//var_dump($consumptions);exit;

/*echo '<pre>';
print_r($consumptions);
print_r($material_lists);
exit;*/

?>

<div class="container">
    <div class="row">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <p class="text-center">Consumption</p>
            </div>
            <div class="panel-footer">

                <table class="table table-bordered table-hover">
                    <tr  class="success">
                        <td>Actions</td>
                        <?php for($i=0; $i<5; $i++):?>
                        <td class="text-center"><?=$this->Html->link('Edit', array('action' => 'edit',$consumptions[$i]['TblConsumptionStock']['id'])); ?>  ||  <?=$this->Html->link('Delete', array('action' => 'delete',$consumptions[$i]['TblConsumptionStock']['id'])); ?>  </td>
                        <?php endfor;?>
                    </tr>
                    <tr class="success">
                        <td>Nepalidate</td>
                        <?php for($i=0; $i<5; $i++):?>
                        <td><?=$consumptions[$i]['TblConsumptionStock']['nepalidate'];?></td>
                        <?php endfor;?>
                    </tr>
                    <tr class="success">
                        <td>Shift</td>
                        <?php for($i=0; $i<5; $i++):?>
                            <td><?=$consumptions[$i]['TblConsumptionStock']['shift'];?></td>
                        <?php endfor;?>
                    </tr>
                    <tr class="success">
                        <td>Brand</td>
                        <?php for($i=0; $i<5; $i++):?>
                            <td><?=$consumptions[$i]['TblConsumptionStock']['brand'];?></td>
                        <?php endfor;?>
                    </tr>
                    <tr class="success">
                        <td>Quality</td>
                        <?php for($i=0; $i<5; $i++):?>
                            <td><?=$consumptions[$i]['TblConsumptionStock']['quality'];?></td>
                        <?php endfor;?>
                    </tr>
                    <tr class="success">
                        <td>Color</td>
                        <?php for($i=0; $i<5; $i++):?>
                            <td><?=$consumptions[$i]['TblConsumptionStock']['color'];?></td>
                        <?php endfor;?>
                    </tr>
                    <tr class="success">
                        <td>Dimension</td>
                        <?php for($i=0; $i<5; $i++):?>
                            <td><?=$consumptions[$i]['TblConsumptionStock']['dimension'];?></td>
                        <?php endfor;?>
                    </tr>
                    <?php foreach($material_lists as $m):?>
                        <tr>
                            <td class="success"><?=$m['MixingMaterial']['name'];?></td>
                            <?php for($i=0; $i<5; $i++):?>
                            <td>
                                <?php
                                    $materials = json_decode($consumptions[$i]['TblConsumptionStock']['materials']);
                                    echo isset($materials->$m['MixingMaterial']['id'])?$materials->$m['MixingMaterial']['id']?$materials->$m['MixingMaterial']['id']:0:0;
                                ?>
                            </td>
                            <?php endfor;?>
                        </tr>
                    <?php endforeach;?>
                </table>
            </div>
        </div>
    </div>
</div>











<br><hr>
<br>
<h2>Table Format 2</h2>
<div class="container">
    <div class="row">
        <div class="col-md-4 pull-left">
            <table class="table">
                <tr><td>Action</td></tr>
                <tr><td>Nepalidate</td></tr>
                <tr><td>Shift</td></tr>
                <tr><td>Brand</td></tr>
                <tr><td>Quality</td></tr>
                <tr><td>Color</td></tr>
                <tr><td>Dimension</td></tr>
                <?php foreach($material_lists as $m):?>
                    <tr><td><?=$m['MixingMaterial']['name'];?></td></tr>
                <?php endforeach;?>
            </table>
        </div>
            <?php foreach ($consumptions as $c): ?>
                <div class="col-md-2 pull-left">
                <table class="table">
                    <tr><td class="text-center"><a href="#"><i class="glyphicon glyphicon-edit"> </i></a> | <a href="#"><i class="glyphicon glyphicon-trash"> </i></a> </td></tr>
                    <tr>
                        <td><?= $c['TblConsumptionStock']['nepalidate']; ?></td>
                    </tr>
                    <tr>
                        <td><?= $c['TblConsumptionStock']['shift']; ?></td>
                    </tr>
                    <tr>
                        <td><?= $c['TblConsumptionStock']['brand']; ?></td>
                    </tr>
                    <tr>
                        <td><?= $c['TblConsumptionStock']['quality']; ?></td>
                    </tr>
                    <tr>
                        <td><?= $c['TblConsumptionStock']['color']; ?></td>
                    </tr>
                    <tr>
                        <td><?= $c['TblConsumptionStock']['dimension']; ?></td>
                    </tr>
                    <?php $materials = json_decode($c['TblConsumptionStock']['materials']); ?>
                    <?php foreach ($materials as $key => $m): ?>
                        <tr>
                            <td><?=$m?$m:'0';?></td>
                        </tr>
                    <?php endforeach; ?>

                </table>
        </div>
            <?php endforeach; ?>

    </div>
</div>