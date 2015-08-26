<script>

 $(document).ready(function(){
           			var value = ''
       			$('.nepalidatepicker').nepaliDatePicker();
       			// Trigger On change/Selected event
       			$.onChangeDatepicker_Ravindra = function(selectedDate){
       				value = $("#nepalidatepicker").val();
                                $.ajax({
                                    url: "/polychem/CalenderCprs/create_calenderpdf",
                                    type: "POST",
                                    cache: false,
                                    data: {city_id: value}
                                });

       							}

       		});

    function calculate() {
        var resuable = $('#reuse').val();
        var lamps = $('#lamps').val();
        $('#total').val(parseInt(resuable) + parseInt(lamps));
    }
    function calculate1() {
        var resuable1 = $('#reuse1').val();
        var lamps1 = $('#lamps1').val();
        $('#total1').val(parseInt(resuable1) + parseInt(lamps1));
    }
</script>
<div class="calenderCprs index">
    <!--<h2><?php echo __('<center>Calender Production Report</center>'); ?></h2> -->
    <div class="panel panel-primary">
        <div class="panel-heading">
            <center><h4>Calendar Production Report</center>
            </h4></div>
        <div class="panel-body">
            <!-- row -->
            <div class="row">
                <div class="col-lg-3">
                    <table width=100% class="table">
                        <tr>
                            <td>Raw Materials</td>
                            <td align="right">
                                <?php
                                foreach ($mixingraws as $mix): echo(number_format($mix['0']['sum'], 2));  endforeach?>
                            </td>
                        </tr>
						 <tr>
                            <td>Brought Scrap</td>
                            <td align="right">
							<?php
							//print_r($du);
                                foreach ($du as $bs): echo(number_format($bs['0']['total'], 2));  endforeach?></td>
                        </tr>
                        <tr>
                            <td>Scrap Used</td>
                            <td align="right"><?php
                                foreach ($scraptotal as $sptot): echo(number_format($sptot['0']['scrap_total'], 2));  endforeach?></td>
                        </tr>
                        <tr>
                            <td>Dana Used</td>
                            <td align="right"><?php foreach ($danaused as $danas): echo(number_format($danas['0']['totdana'], 2));  endforeach?></td>
                        </tr>
                        <tr>
                            <td><strong>Total</strong></td>
                            <td align="right"><strong><?php
                                //print_r($total);
                                foreach ($total as $t):
                                    echo(number_format($t['0']['total'], 2));
                                endforeach;
                                ?></strong></td>
                        </tr>
                    </table>
                </div>
                <div class="col-lg-3">
                    <table width=100% class="table">
                        <tr>
                            <td class="success">Scrap Details</td>
                            <td>

                            <td>

                                <?php foreach ($scraps as $scrap): ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Reusable</td>
                            <td> <?php echo $scrap['calender_scrap']['resuable']; ?></td>
                        </tr>
                        <tr>
                            <td>Lamps and Plates</td>
                            <td><?php echo $scrap['calender_scrap']['lamps_plates']; ?></td>
                        </tr>
                        <tr>
                            <td>Total Scrap used</td>
                            <td><?php echo $scrap['calender_scrap']['total_scrap_generated']; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </table>
                    <div class="alert alert-info fade in">
                                     <?php if($ct['0']['0']['count']>0)

                                     echo 'New Item Being added by Mixing Section';

                                     ?>
                                 </div>
                </div>
                <div class="col-lg-3">
                    <table>
                        <?php
                        echo $this->Search->create();
                        echo '<tr><td>' . $this->Search->input('filter1', array('id' => 'nepalidatepicker', 'class' => 'nepalidatepicker')) . '</td>';
                        echo '<td>' . $this->Search->end(__('Search', true)) . '</td>';
                        ?>
                        <td>
                            <button class="btn btn-primary"
                                    onclick="window.open('<?php echo Router::url(array('controller' => 'CalenderCprs', 'action' => 'download_calenderpdf')) ?>')">
                                Print
                            </button>
                        </td>
                        <td>
                            <button class="btn btn-primary"
                                    onclick="window.open('<?php echo Router::url(array('controller' => 'CalenderCprs', 'action' => 'add')) ?>')">
                                ADD
                            </button>
                        </td>
                        </tr>
                    </table>

                </div>

            </div>

        </div>
    </div>

    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Scraps Details</h4>
                </div>
                <div class="modal-body">
                    <?php echo $this->Form->create('CalenderScrap', array(
                        'url' => array('controller' => 'CalenderScraps', 'action' => 'add'),
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
                        <script>
                            $(document).ready(function () {
                                $('.nepali-datepicker').nepaliDatePicker();
                            });

                            $(document).ready(function () {
                                $("#nepali-datepicker").focus(function (e) {
                                    //$("span").css("display", "inline").fadeOut(2000);
                                    console.log("focus")
                                    showCalendarBox('nepali-datepicker');
                                });
                            });
                        </script>
                        <script>
                            function cal() {
                                $("#but1").attr("disabled", "disabled");
                            }
                        </script>
                        <?php
                        $date = date('d-m-Y');
                        echo $this->Form->input('date', array('id' => 'nepali-datepicker', 'class' => 'nepali-datepicker', 'type' => 'text', 'value' => $scd,'readonly'));
                        echo $this->Form->input('resuable', array('id' => 'reuse'));
                        echo $this->Form->input('lamps_plates', array('id' => 'lamps', 'onchange' => 'calculate();'));
                        echo $this->Form->input('total_scrap_generated', array('id' => 'total','readonly'));
                        ?>
                    </fieldset>
                    <?php echo $this->Form->end(__('Submit'), array('onclick' => 'cal();')); ?>
                </div>
                <div class="modal-footer">
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
                        'url' => array('controller' => 'CalenderScraps', 'action' => 'edit/'.$scraps[0]['calender_scrap']['id']),
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
                        echo $this->Form->input('id', array('value' =>$scraps[0]['calender_scrap']['id'] ));
                        echo $this->Form->input('date', array('type' => 'text','readonly', 'value' => $scd));
                        echo $this->Form->input('resuable', array('id' => 'reuse1', 'value' =>$scraps[0]['calender_scrap']['resuable']));
                        echo $this->Form->input('lamps_plates', array('id' => 'lamps1','value'=>$scraps[0]['calender_scrap']['lamps_plates'], 'onchange' => 'calculate1();'));
                        echo $this->Form->input('total_scrap_generated', array('id' => 'total1','readonly','value'=>$scraps[0]['calender_scrap']['total_scrap_generated']));
                        ?>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <?php echo $this->Form->end(__('Submit'), array('onclick' => 'cal()','class'=>'btn btn-warning')); ?>
                </div>
            </div>
        </div>
    </div>


    <table class="col-md-12 table-bordered table-striped table-condensed cf" align="left">
        <tr>
            <th><?php echo $this->Paginator->sort('date'); ?></th>
            <th><?php echo $this->Paginator->sort('shift'); ?></th>
            <th><?php echo $this->Paginator->sort('type'); ?></th>
            <th><?php echo $this->Paginator->sort('quality'); ?></th>
            <th><?php echo $this->Paginator->sort('color'); ?></th>
            <th><?php echo $this->Paginator->sort('embossing'); ?></th>
            <th><?php echo $this->Paginator->sort('Dimension'); ?></th>
            <th style="text-align:right"><?php echo $this->Paginator->sort('length'); ?></th>
            <th style="text-align:right"><?php echo $this->Paginator->sort('NTWT'); ?></th>
            <th style="text-align:right"><?php echo $this->Paginator->sort('Mixing WT'); ?></th>


            <th class="actions"><?php echo __('Actions'); ?></th>
        </tr>
        <?php foreach ($calenderCprs as $calenderCpr): ?>
            <tr>
                <td><?php echo h($calenderCpr['CalenderCpr']['date']); ?>&nbsp;</td>
                <td><?php echo h($calenderCpr['CalenderCpr']['shift']); ?>&nbsp;</td>
                <td><?php echo h($calenderCpr['CalenderCpr']['type']); ?>&nbsp;</td>
                <td><?php echo h($calenderCpr['CalenderCpr']['quality']); ?>&nbsp;</td>
                <td><?php echo h($calenderCpr['CalenderCpr']['color']); ?>&nbsp;</td>
                <td><?php echo h($calenderCpr['CalenderCpr']['embossing']); ?>&nbsp;</td>
                <td><?php echo h($calenderCpr['CalenderCpr']['Dimension']); ?>&nbsp;</td>
                <td align="right"><?php echo h(number_format($calenderCpr['CalenderCpr']['length'])); ?>&nbsp;</td>
                <td align="right"><?php echo h(number_format($calenderCpr['CalenderCpr']['ntwt'])); ?>&nbsp;</td>
                <td align="right"><?php echo h($calenderCpr['CalenderCpr']['total']); ?>&nbsp;</td>


                <td class="actions">
                    <?php echo $this->Html->link(__('View'), array('action' => 'view', $calenderCpr['CalenderCpr']['id'])); ?>
                    <?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $calenderCpr['CalenderCpr']['id'])); ?>
 		   <?php /* echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $calenderCpr['CalenderCpr']['id']), null, __('Are you sure you want to delete # %s?', $CalenderCpr['CalenderCpr']['id'])); */?>
                                    </td>
            </tr>
        <?php endforeach; ?>
        <tr>
            <td></td>
            <td>
            <td></td>
            </td>
            <td></td>
            <td></td>
            <td></td>
            <td align="right"><strong>Total</strong></td>
            <td align="right">
                <strong><?php foreach ($netwt as $ntwt): echo number_format($ntwt['0']['total'], 2); endforeach; ?></strong>
            </td>
            <td align="right">
                <strong><?php foreach ($leng as $ntwt): echo number_format($ntwt['0']['total'], 2); endforeach; ?></strong>
            </td>
            </td>
            <td align="right">
                <strong><?php

 foreach ($mxwt as $ntwt): echo number_format($ntwt['0']['total'],2); endforeach; ?></strong>
            <td
        </tr>


    </table>


    <ul class="pagination">
       <li> <?php
        echo  $this->Paginator->prev(' ' . __('previous'), array(), null, array('class' => 'prev disabled'));
        echo $this->Paginator->numbers(array('separator' => ''));
        echo $this->Paginator->next(__('next') . ' ', array(), null, array('class' => 'next disabled'));
        ?>
</li>
    </ul>
</div>

