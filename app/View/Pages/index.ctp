<script type="text/javascript">
    function getval(sel) {
        var strUser = sel.value;
        var dataString = 'id=' + strUser;
        $.ajax
        ({
            type: "POST",
            url: "/polychem/Pages/t",
            data: dataString,
            cache: false,
            success: function (html) {
                $(".dimension").html(html);
            }
        });
    }

</script>
<script>
    function gets(sel) {
        var strUser = sel.value;
        var brnd = $(".brnd option:selected").text();
        var dataString = 'id=' + strUser + '&type=' + brnd;
        $.ajax
        ({
            type: "POST",
            url: "/polychem/Pages/data",
            data: dataString,
            cache: false,
            success: function (html) {
                $(".content").html(html);
            }
        });

    }


</script>
<script>
    function generate_report(sel) {
        //code
        var strUser = sel.value;
        var dataString = 'id=' + strUser;
        $.ajax
        ({
            type: "POST",
            url: "/polychem/ConsumptionStocks/monthly_report",
            data: dataString,
            cache: false,
            success: function (html) {
                $(".mon").html(html);
            }
        });


    }
</script>

<script>
    function month(sel) {
        //code
        var strUser = sel.value;
        var dataString = 'id=' + strUser;
        //var dataString = 'id='+ strUser;
        $.ajax
        ({
            type: "POST",
            url: "/polychem/Pages/s",
            data: dataString,
            cache: false,
            success: function (html) {
//$(".content").html(html);
                $(".consumption").html(html);
            }
        });


    }


</script>


<div class="row">
    <div class="col-lg-12">
        <?php if (AuthComponent::user('id') and AuthComponent::user('role') == 'admin') { ?>
            <h1>Welcome to Administration Area</h1>

            <ol class="breadcrumb">
                <li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
            </ol>
        <?php } ?>



        <?php if (AuthComponent::user('id') and AuthComponent::user('role') == 'store') { ?>
            <h1>Yeti Polychem Pvt. Ltd.</h1>
            <h3> Calendar Raw Material Consumtion and Stock Position<i>page 1</i></h3>

            <ol class="breadcrumb">
                <li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
            </ol>


        <?php } ?>

        <!--mixing department-->
        <?php if (AuthComponent::user('id') and AuthComponent::user('role') == 'mixing'){ ?>

    <?php

    switch ($latestmonth) {
        case "01":
            $monthname = "Baishak";
            break;
        case "02":
            $monthname = "Jestha";
            break;
        case "03":
            $monthname = "Ashad";
            break;
        case "04":
            $monthname = "Shrawan";
            break;
        case "05":
            $monthname = "Bhadra";
            break;
        case "06":
            $monthname = "Ashoj";
            break;
        case "07":
            $monthname = "Kartik";
            break;
        case "08":
            $monthname = "Mangsir";
            break;
        case "09":
            $monthname = "Poush";
            break;
        case "10":
            $monthname = "Magh";
            break;
        case "11":
            $monthname = "Falgun";
            break;
        case "12":
            $monthname = "Chaitra";
            break;
    }

    ?>
        <h1>Welcome to Mixing Department</h1>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Number of Days Operated
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered table-hover">


                                </tr>
                                <tr>
                                    <td>In this Month (<?php echo $monthname; ?>)</td>
                                    <td align="right">
                                        <?php echo $month[0][0]['month']; ?>
                                    </td>

                                </tr>
                                <tr>
                                    <td>In this Year (<?php echo $latestyear; ?>)</td>
                                    <td align="right">
                                        <?php echo $year[0][0]['year'];
                                        ?>
                                    </td>

                                </tr>

                                </tr></table>
                        </div>
                    </div>
                </div>


            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Consumption
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered table-hover">
                                <tr>
                                    <strong>
                                        <th></th>
                                        <th>To Date<br/> (<?php echo $latestdate; ?>-<?php echo $latestmonth; ?>
                                            -<?php echo $latestyear; ?>)
                                        </th>
                                        <th>To Month<br/>(<?php echo $monthname; ?>)</th>
                                        <th>To Year<br/>(<?php echo $latestyear; ?>-<?php echo $latestyear + 1; ?>)</th>
                                    </strong>
                                <tr>
                                    <td>Raw Material</td>
                                    <td align="right">

                                        <?php $totald = 0;
                                        foreach ($todayrw as $trw):
                                            $totaltr = $trw[0]['todayrwsum'];
                                            echo number_format($trw[0]['todayrwsum'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                    <td align="right">
                                        <?php $totalm = 0;
                                        foreach ($toMrw as $trw):
                                            $totalmr = $trw[0]['toMrwsum'];
                                            echo number_format($trw[0]['toMrwsum'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                    <td align="right">
                                        <?php $totaly = 0;
                                        foreach ($toyrw as $trw):
                                            $totalyr = $trw[0]['toyrwsum'];
                                            echo number_format($trw[0]['toyrwsum'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Bought Scrap</td>
                                    <td align="right">
                                        <?php foreach ($todaybs as $trw):
                                            $totalbst = $trw[0]['todaybs'];
                                            echo number_format($trw[0]['todaybs'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                    <td align="right">
                                        <?php foreach ($toMbs as $trw):
                                            $totalbsm = $trw[0]['toMbs'];
                                            echo number_format($trw[0]['toMbs'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                    <td align="right">
                                        <?php foreach ($toybs as $trw):
                                            $totalbsy = $trw[0]['toybs'];
                                            echo number_format($trw[0]['toybs'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Scrap</td>
                                    <td align="right">
                                        <?php foreach ($todayscrap as $trw):
                                            $totalsd = $trw[0]['todaysrapsum'];
                                            echo number_format($trw[0]['todaysrapsum'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                    <td align="right">
                                        <?php foreach ($toMscrap as $trw):
                                            $totalsm = $trw[0]['toMsrapsum'];
                                            echo number_format($trw[0]['toMsrapsum'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                    <td align="right">
                                        <?php foreach ($toyscrap as $trw):
                                            $totalsy = $trw[0]['toysrapsum'];
                                            echo number_format($trw[0]['toysrapsum'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                </tr>
                                <tr bgcolor="grey">
                                    <td>Total</td>
                                    <td align="right">
                                        <?php $totald = $totaltr + $totalsd + $totalbst;
                                        echo number_format($totald, 2); ?>
                                    </td>
                                    <td align="right">
                                        <?php $totalm = $totalmr + $totalsm + $totalbsm;
                                        echo number_format($totalm, 2); ?>
                                    </td>
                                    <td align="right">
                                        <?php $totaly = $totalyr + $totalsy + $totalbsy;
                                        echo number_format($totaly, 2); ?>
                                    </td>
                                </tr>
                                </tr></table>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Monthly Report
                        </div>
                        <div class="panel-body">
                            <?php

                            echo '<td>';
                            //$this->Form->input('brand',array('type'=>'select','options'=>$brand,'class'=>'brnd','onchange'=>'getval(this);'));
                            echo $this->Form->input('Month', array('type' => 'select', 'options' => array('NULL' => 'Please Select', '01' => 'Baisakh', '02' => 'Jestha', '03' => 'Ashad', '04' => 'Shrawan', '05' => 'Bhadra', '06' => 'Ashoj', '07' => 'Kartik', '08' => 'Mangsir', '09' => 'Poush', '10' => 'Margh', '11' => 'falgun', '12' => 'Chaitra'), 'class' => 'brand form-control', 'onchange' => 'generate_report(this);'));
                            echo '</td>';

                            ?>
                            <br/>

                            <?php
                            echo $this->Html->link('Download CSV file', array('controller' => 'pages', 'action' => 'export'), array('target' => '_blank', 'class' => 'btn btn-success'));

                            ?>
                            <div class="mon">

                            </div>

                        </div>
                    </div>

                </div>

            </div>


            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                To Date Consumption
                            </div>
                            <div class="panel-body">
                                <?php

                                echo '<td>';

                                echo $this->Form->input('brand', array('type' => 'select', 'options' => array('default' => 'Please Select', $brand), 'class' => 'brnd form-control', 'onchange' => 'getval(this);'));
                                echo '</td>';
                                echo '<td>';
                                ?><br/><?php
                                echo $this->Form->input('Dimension', array('class' => 'dimension form-control', 'type' => 'select', 'onchange' => 'gets(this);'));
                                echo '</td>';
                                ?>
                                <br/>
                                <?php
                                echo $this->Html->link('Download CSV file', array('controller' => 'pages', 'action' => 'export_consumption'), array('target' => '_blank', 'class' => 'btn btn-success')); ?>

                                <div class="content">

                                </div>

                            </div>
                        </div>

                    </div>


                </div>
            </div>
            <!-- <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Daily Consumption Chart
                            </div>
                            <div class="panel-body">
                                <div class="chart">


                                </div>
                            </div>
                        </div>
                    </div>


                </div>

            </div> -->

            <?php } ?>
            <!-- Ending mixing department-->

            <!--start of scrap department-->
            <?php if (AuthComponent::user('id') and AuthComponent::user('role') == 'scrap') { ?>
                <h1>Welcome to Scrap Department</h1>

                <ol class="breadcrumb">
                    <li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
                </ol>
            <?php } ?>

            <!--End of scrap department-->

            <!--start of the calender department-->
            <?php if (AuthComponent::user('id') and AuthComponent::user('role') == 'calender') { ?>
            <h1>Welcome to Calendar Department</h1>

            <div class="alert alert-info fade in">
                <?php if ($ct['0']['0']['count'] > 0)

                    echo 'New Item Being added by Mixing Section';
                ?>
            </div>
            <ol class="breadcrumb">
                <li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
            </ol>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                OutPut Analysis
                            </div>
                            <div class="panel-body">
                                <table class="table">
                                    <tr class="success">
                                        <th>Type</th>
                                        <th>To Date <br>(<?= $current_date[0]['calender_cpr']['date']; ?>)</th>
                                        <th>To Month <br>(<?= substr($current_date[0]['calender_cpr']['date'], 0, 7); ?>
                                            )
                                        </th>
                                        <th>To Year<br>(<?= substr($current_date[0]['calender_cpr']['date'], 0, 4); ?>)
                                        </th>
                                    </tr>
                                    <td>Length</td>
                                    <td>
                                        <?php foreach ($today as $to):
                                            echo number_format($to['0']['totallength'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                    <td>
                                        <?php foreach ($month as $mo):

                                            echo number_format($mo['0']['totallength'], 2);

                                        endforeach;
                                        ?>
                                    </td>

                                    <td>
                                        <?php foreach ($year as $yr):

                                            echo number_format($yr['0']['totallength'], 2);

                                        endforeach;
                                        ?>
                                    </td>
                                    </tr>
                                    <td>NT WT</td>
                                    <td>

                                        <?php foreach ($today as $to):

                                            echo number_format($to['0']['totalntwt'], 2);

                                        endforeach;
                                        ?>
                                    </td>

                                    <td>
                                        <?php foreach ($month as $mo):

                                            echo number_format($mo['0']['totalntwt'], 2);

                                        endforeach;
                                        ?>
                                    </td>

                                    <td>
                                        <?php foreach ($year as $yr):

                                            echo number_format($yr['0']['totalntwt'], 2);

                                        endforeach;
                                        ?>
                                    </td>
                                    <!-- new added line -->
                                    </tr>
                                    <tr>
                                        <td>Unaccounted Loss</td>
                                        <td>
                                            <?php
                                            foreach ($totalinputs as $tot1):
                                                $total1 = $tot1['0']['tot'];
                                            endforeach;
                                            foreach ($sptots as $tot2):
                                                $total2 = $tot2['0']['total_s'];
                                            endforeach;
                                            foreach ($calendertotals as $tot3):
                                                $total3 = $tot3['0']['totc'];
                                            endforeach;
                                            $total = doubleval($total1) - doubleval($total2);
                                            $total = doubleval($total) - doubleval($total3);
                                            echo number_format($total, 2);
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            $n_ul = $n_cs_monthly - $n_st_monthly;    //$n_cs_monthly(sume of monthly from consumption stock)  $n_st_monthly(resuable+lamps_plates) from calender_scrap
                                            $n_ul = $n_ul - $n_monthlytotal;         //$n_monthlytotal(sume of monthly ntwt from calender_cpr)
                                            $n_ul = $n_ul / $_daysinmonth;             // $_daysinmonth(sume of distinct nepalidate from time_loss)
                                            echo number_format($n_ul, 2);
                                            ?>
                                        </td>
                                        <td>
                                            <?php
                                            $_ul = $n_cs_yearly - $n_st_yearly;
                                            $_ul = $_ul - $n_yearlytotal;
                                            $_ul = $_ul / $_daysinyear;
                                            echo number_format($_ul, 2);
                                            ?>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                Unaccounted Loss
                            </div>
                            <div class="panel-body">
                                <table class="table">

                                    <tr>
                                        <td><strong>Total Input</strong></td>
                                        <td><strong>
                                                <?php
                                                //print_r($totalinput);
                                                $total = 0;
                                                foreach ($totalinputs as $tot1):
                                                    echo number_format($tot1['0']['tot'], 2);
                                                    $total1 = $tot1['0']['tot'];

                                                endforeach;
                                                ?>
                                            </strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Scrap Total</td>
                                        <td>

                                            <?php

                                            foreach ($sptots as $tot2):

                                                echo number_format($tot2['0']['total_s'], 2);
                                                $total2 = $tot2['0']['total_s'];

                                            endforeach;
                                            ?>
                                        </td>
                                    <tr>
                                        <td>Calendar Total</td>
                                        <td>
                                            <?php

                                            foreach ($calendertotals as $tot3):

                                                echo number_format($tot3['0']['totc'], 2);
                                                $total3 = $tot3['0']['totc'];

                                            endforeach;
                                            ?>
                                        </td>
                                    </tr>
                                    <tr class="success">
                                        <td>Unaccounted Loss</td>
                                        <td><?php
                                            $total = doubleval($total1) - doubleval($total2);
                                            $total = doubleval($total) - doubleval($total3);
                                            echo number_format($total, 2); ?>
                                        </td>
                                    </tr>
                                    <tr class="success">
                                        <td>Unaccounted Loss %</td>
                                        <td><?php
                                            $niroj = ($total / $total1) * 100;
                                            echo number_format($niroj, 2) . " %"; ?>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6" style="margin: 0px;padding: 0px;">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Semi Finished Goods
                        </div>
                        <div class="panel-body">
                            <table class="table table-condensed">
                                <tr class="success">
                                    <td>Dimension</td>
                                    <td>Today (<?=$current_date[0]['calender_cpr']['date'];?>)</td>
                                    <?php
                                    //print_r($dimtoday);
                                    foreach ($dimtday as $today):
                                        echo "<tr>";
                                        echo '<td>';
                                        echo $today['calender_cpr']['Dimension'];
                                        echo "<td>";
                                        echo number_format($today['0']['totallength'], 2);
                                        echo "<td>";
                                        //echo "<td>1</td>";
                                        echo '</td>';

                                        echo "</tr>";


                                    endforeach;
                                    ?>


                            </table>
                            <table class="table table-condensed">
                                <tr class="success">
                                    <td>Dimension</td>
                                    <td>To Month (<?=substr($current_date[0]['calender_cpr']['date'],0,7);?>)</td>

                                    <?php
                                    //print_r($dimtoday);
                                    foreach ($dimmonth as $tomo):
                                        echo "<tr>";
                                        echo '<td>';
                                        echo $tomo['calender_cpr']['Dimension'];
                                        echo "<td>";
                                        echo number_format($tomo['0']['totallength'], 2);
                                        echo "<td>";
                                        //echo "<td>1</td>";
                                        echo '</td>';

                                        echo "</tr>";


                                    endforeach;
                                    ?>


                            </table>
                            <table class="table table-condensed">
                                <tr class="success">
                                    <td>Dimension</td>
                                    <td>To Year (<?=substr($current_date[0]['calender_cpr']['date'],0,4);?>)</td>

                                    <?php
                                    //print_r($dimyear);
                                    foreach ($dimyear as $yr):
                                        echo "<tr>";
                                        echo '<td>';
                                        echo $yr['calender_cpr']['Dimension'];
                                        echo "<td>";
                                        echo number_format($yr['0']['totallength'], 2);
                                        echo "<td>";
                                        //echo "<td>1</td>";
                                        echo '</td>';

                                        echo "</tr>";


                                    endforeach;
                                    ?>


                            </table>


                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Target
                        </div>
                        <div class="panel-body">

                            <table class="table">
                                <tr class="success">
                                    <td>Quality</td>
                                    <td>Output Per Meter</td>
                                    <td>Target</td>
                                </tr>
                                <tr>
                                    <?php
                                    foreach ($ratio as $rat):
                                        echo '<tr>';
                                        echo '<td>' . $rat['calender_cpr']['quality'] . '</td>';
                                        echo '<td align="center">' . number_format($rat['0']['ratio'], 2) . '</td>';
                                        echo '<td>not set</td>';
                                        echo '</tr>';
                                    endforeach;
                                    ?>
                            </table>


                        </div>

                    </div>
                </div>


            </div>

            <!--<div class="container-fluid">
		<div class="row">
			<div class="panel panel-primary">
						<div class="panel-heading">
						  Breakdown/Loss Hour Calculation
						</div>
						<div class="panel-body">
						
							<table class="table table-bordered table-hover" style="margin:0px auto;"><tr>
				<th>Type</th><th>Today</th><th>To Month</th><th>To Year</th>
				<tr>
					<td>Loss Hours</td>
					<td>
						
					<?php
            ?>
					</td>
					<td>
						<?php

            //	if(!isset($mloss1))
            //{
            //foreach($mloss1 as $trw):
            //echo number_format($trw[0]['tomonthlossc'],2);

            //endforeach;
            //	}
            //else
            //{
            //echo $mloss1;
            //}
            //
            ?>
					</td>
					<td>
						<?php
            //if(!isset($yloss1))
            //{
            //foreach($yloss1 as $trw):
            //echo number_format($trw[0]['tomonthlossc'],2);
            //endforeach;
            //}
            //else
            //{
            //	echo $yloss1;
            //}
            //
            ?>
					</td>
				</tr>
				<tr>
					<td>Break Down</td>
					<td>
				<?php
            //	if(!isset($tbreakdown))
            //{
            //foreach($tbreakdown as $trw):
            //	echo number_format($trw[0]['lossm'],2);

            //		endforeach;
            //}
            //else
            //{
            //echo $tbreakdown;
            //}
            //
            ?>
					</td>
					<td>
						<?php //print_r($breakdownmonth);
            //	foreach($breakdownmonth as $trw):
            //echo number_format($trw[0]['los1'],2);
            //endforeach;
            //echo $breakdownmonth;
            ?>
					</td>
					<td>
						<?php
            //print_r($breaakdownyear);

            //if(!isset($breaakdownyear))
            //{
            //foreach($breaakdownyear as $trw):
            //echo number_format($trw[0]['los'],2);
            //endforeach;
            //}
            //else
            //{
            //echo $breaakdownyear;
            //}

            //echo $breaakdownyear;
            ?>
				<!--	</td>
				</tr>
				<tr>
					<td>Work Hours</td>
					<td>
						
					
					
					
					
					</td>
				</tr>
		</table>
						
					</div>
						
		
			
		</div>
		</div>
-->
            <div class="row">
                <div class="col-md-12" style="margin:0px;padding:0px;">
                    <div class="panel panel-primary">
                        <div class="panel-heading">BreakDown Reasons %</div>
                        <div class="panel-body">
                            <div class="container-fluid">
                                <table class="table">
                                    <tr class="success">
                                        <th>Reasons</th>
                                        <th>Today (<?=$current_date_time_loss[0]['time_loss']['nepalidate'];?>)</th>
                                        <th>To Month (<?=substr($current_date_time_loss[0]['time_loss']['nepalidate'],0, 7);?>)</th>
                                        <th>To Year (<?=substr($current_date_time_loss[0]['time_loss']['nepalidate'],0, 4);?>)</th>

                                    </tr>
                                    <tr>
                                        <td>
                                            <?php foreach ($tybdloss as $bd):


                                                echo $bd['time_loss']['reasons'] . '<br/>';

                                            endforeach;
                                            ?>
                                        </td>
                                        <td>
                                            <?php foreach ($tdbdloss as $bd):

                                                echo number_format($bd['0']['tdbdloss'], 2) . '%<br/>';

                                            endforeach;
                                            ?>
                                        </td>
                                        <td>
                                            <?php foreach ($tmbdloss as $bd):

                                                echo number_format($bd['0']['tmbdloss'], 2) . '%<br/>';

                                            endforeach;
                                            ?>
                                        </td>
                                        <td>
                                            <?php foreach ($tybdloss as $bd):

                                                echo number_format($bd['0']['tybdloss'], 2) . '%<br/>';

                                            endforeach;
                                            ?>
                                        </td>
                                    </tr>

                                </table>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12" style="margin:0px;padding:2px;">
                    <div class="panel panel-primary">
                        <div class="panel-heading">Loss Hour Reasons %</div>
                        <div class="panel-body">
                            <div class="container-fluid">
                                <table class="table">
                                    <tr class="success">
                                        <th>Reasons</th>
                                        <th>Today <?=$current_date_time_breakdown[0]['time_loss']['nepalidate'];?></th>
                                        <th>To Month (<?=substr($current_date_time_breakdown[0]['time_loss']['nepalidate'],0,7);?>)</th>
                                        <th>To Year (<?=substr($current_date_time_breakdown[0]['time_loss']['nepalidate'],0,4);?>)</th>
                                    </tr>
                                    <tr>
                                        <td>
                                            <?php foreach ($tylhloss as $bd):
                                                echo $bd['time_loss']['reasons'] . '<br/>';
                                            endforeach;
                                            ?>
                                        </td>
                                        <td>
                                            <?php foreach ($tdlhloss as $bd):
                                                echo number_format($bd['0']['tdlhloss'], 2) . '%<br/>';
                                            endforeach;
                                            ?>
                                        </td>
                                        <td>
                                            <?php foreach ($tmlhloss as $bd):
                                                echo number_format($bd['0']['tmlhloss'], 2) . '%<br/>';
                                            endforeach;
                                            ?>
                                        </td>
                                        <td>
                                            <?php foreach ($tylhloss as $bd):

                                                echo number_format($bd['0']['tylhloss'], 2) . '%<br/>';

                                            endforeach;
                                            ?>
                                        </td>
                                    </tr>

                                </table>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="clearfix"></div>
            <br>
            <div class="col-md-12" style="margin:0px;padding:2px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">Loss Hour Calculations</div>
                    <div class="panel-body">
                        <div class="container-fluid">
                            <table class="table table-bordered table-hover">
                                <tr class="success">
                                    <th>Category</th>
                                    <th>Today <br>(<?=$current_date_loss_hour;?>)</th>
                                    <th>To Month <br>(<?=substr($current_date_loss_hour,0,7);?>)</th>
                                    <th>To Year <br>(<?=substr($current_date_loss_hour,0,4);?>)</th>
                                </tr>
                                <tr>
                                    <td><strong>Break Down</strong></td>
                                    <td><?= $breakdown_today; ?></td>
                                    <td><?= $breakdown_tomnoth; ?></td>
                                    <td><?= $breakdown_toyear; ?></td>
                                </tr>
                                <tr>
                                    <td><strong>Loss Hour</strong></td>
                                    <td><?= $losshour_today; ?></td>
                                    <td><?= $losshour_tomonth; ?></td>
                                    <td><?= $losshour_toyear; ?></td>
                                </tr>
                                <tr>
                                    <td><strong>Worked Hour</strong></td>
                                    <td><?= $workhour_d; ?></td>
                                    <td><?= $workhour_m; ?></td>
                                    <td><?= $workhour_y; ?></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


        </div>


    <?php } ?>


        <!--end of the  calender department-->

        <!--start of the printing department-->
        <?php if (AuthComponent::user('id') and AuthComponent::user('role') == 'printing'){ ?>
        <h1>Welcome to Printing Department</h1>

        <ol class="breadcrumb">
            <li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
        </ol>
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">Output Analysis</div>
                    <div class="panel-body">
                        <div class="container-fluid">

                            <table class="table table-condensed table-bordered">
                                <thead>
                                <tr>
                                    <th>
                                    </th>
                                    <th style="text-align: right;">
                                        To Date
                                    </th>
                                    <th style="text-align: right;">
                                        To Month
                                    </th>
                                    <th style="text-align: right;">
                                        To Year
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr style="text-align: right">
                                    <td style="text-align: left">Total Input</td>
                                    <td><?php echo number_format($total_input_td, 2); ?></td>
                                    <td><?php echo number_format($total_input_tm, 2); ?></td>
                                    <td><?php echo number_format($total_input_ty, 2); ?></td>
                                </tr>
                                <tr style="text-align: right">
                                    <td style="text-align: left">Total Output</td>
                                    <td><?php echo number_format($total_putput_td, 2); ?></td>
                                    <td><?php echo number_format($total_output_tm, 2); ?></td>
                                    <td><?php echo number_format($total_output_ty, 2); ?></td>
                                </tr>
                                <tr>
                                    <td>
                                        Printed Loss %
                                    </td>
                                    <td style="text-align: right;">
                                        <?php

                                        foreach ($tdprcnt as $p):
                                            echo number_format($p['0']['printedpercent'], 2) . " %";
                                        endforeach;

                                        ///print_r($tdprcnt);
                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php
                                        foreach ($tmprcnt as $p):
                                            echo number_format($p['0']['printedpercent'], 2) . " %";
                                        endforeach;

                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php
                                        foreach ($typrcnt as $p):
                                            echo number_format($p['0']['printedpercent'], 2) . " %";
                                        endforeach;

                                        ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Unprinted Loss %
                                    </td>
                                    <td style="text-align: right;">
                                        <?php

                                        foreach ($tdunprcnt as $p):
                                            echo number_format($p['0']['unprintedpercent'], 2) . " %";
                                        endforeach;

                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php
                                        foreach ($tmunprcnt as $p):
                                            echo number_format($p['0']['unprintedpercent'], 2) . " %";
                                        endforeach;

                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php
                                        foreach ($tyunprcnt as $p):
                                            echo number_format($p['0']['unprintedpercent'], 2) . " %";
                                        endforeach;

                                        ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        No of Color Made
                                    </td>
                                    <td style="text-align: right;">
                                        <?php
                                        //$date=date('01-m-Y');
                                        //echo $date;
                                        //print_r($color);
                                        foreach ($color as $col):
                                            echo number_format($col['0']['total']);
                                        endforeach;

                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php
                                        //$date=date('01-m-Y');
                                        //echo $date;
                                        //print_r($color);
                                        foreach ($monthly1 as $col):
                                            echo number_format($col['0']['total'] / $_daysinmonth);
                                        endforeach;

                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php
                                        //$date=date('01-m-Y');
                                        //echo $date;
                                        //print_r($color);
                                        foreach ($yearly1 as $col):
                                            echo number_format($col['0']['total'] / $_daysinyear);
                                        endforeach;

                                        ?>
                                    </td>
                                </tr>
                                <tr class="active">
                                    <td>
                                        Output Input Ratio
                                    </td>
                                    <td style="text-align: right;">
                                        <?php
                                        //$date=date('01-m-Y');
                                        //echo $date;
                                        //print_r($output);
                                        foreach ($output as $col):
                                            foreach ($tdinput as $in):
                                                echo number_format($col['0']['output'] / $in['0']['tdinput'], 2);
                                            endforeach;
                                        endforeach;
                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php
                                        //$date=date('01-m-Y');
                                        //echo $date;
                                        //print_r($omonthly);
                                        foreach ($omonthly as $col):
                                            foreach ($tminput as $in):
                                                echo number_format($col['0']['output'] / $in['0']['tminput'], 2);
                                            endforeach;
                                        endforeach
                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php
                                        foreach ($oyearly as $col):
                                            foreach ($tyinput as $in):
                                                echo number_format($col['0']['output'] / $in['0']['tyinput'], 2);
                                            endforeach;
                                        endforeach;
                                        ?>
                                    </td>
                                </tr>


                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="container-fluid">
                    <div class="panel panel-primary">
                        <div class="panel-heading">Input Output Ratio</div>
                        <div class="panel-body">

                            <table class="table table-condensed table-bordered">
                                <thead>
                                <tr>
                                    <th>Dimension</th>
                                    <th style="text-align: right;">input</th>
                                    <th style="text-align: right;">output</th>
                                    <th style="text-align: right;">Ratio</th>
                                    <th style="text-align: right;">Target</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php
                                foreach ($calenderratio as $loss) {
                                    echo '<tr>';
                                    echo '<td>' . $loss['printing_shiftreport']['dimension'] . '</td>';
                                    echo '<td style="text-align: right;">' . number_format($loss['0']['input'], 2) . '</td>';
                                    echo '<td style="text-align: right;">' . number_format($loss['0']['output'], 2) . '</td>';
                                    echo '<td style="text-align: right;">' . number_format($loss['0']['cratio'], 2) . '</td>';
                                    echo '<td style="text-align: right;">' . number_format($loss['0']['target'], 2) . '</td>';

                                    echo '</tr>';

                                }
                                ?>
                                </tbody>
                            </table>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" style="margin:0px;padding:0px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">BreakDown Reasons %</div>
                    <div class="panel-body">
                        <div class="container-fluid">
                            <table class="table" style="font-size: 14px;">
                                <tr class="success">
                                    <th>Reasons</th>
                                    <th style="text-align: right;">Today</th>
                                    <th style="text-align: right;">To Month</th>
                                    <th style="text-align: right;">To Year</th>
                                </tr>
                                <tr>
                                    <td>
                                        <?php foreach ($tybdloss as $bd):

                                            echo $bd['time_loss']['reasons'] . '<br/>';

                                        endforeach;
                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php foreach ($tdbdloss as $bd):

                                            echo number_format($bd['0']['tdbdloss'], 2) . '%<br/>';

                                        endforeach;
                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php foreach ($tmbdloss as $bd):

                                            echo number_format($bd['0']['tmbdloss'], 2) . '%<br/>';

                                        endforeach;
                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php foreach ($tybdloss as $bd):

                                            echo number_format($bd['0']['tybdloss'], 2) . '%<br/>';

                                        endforeach;
                                        ?>
                                    </td>
                                </tr>

                            </table>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6" style="margin:0px;padding:2px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">Loss Hour Reasons %</div>
                    <div class="panel-body">
                        <div class="container-fluid">
                            <table class="table" style="font-size: 14px;">
                                <tr class="success">
                                    <th>Reasons</th>
                                    <th style="text-align: right;">Today</th>
                                    <th style="text-align: right;">To Month</th>
                                    <th style="text-align: right;">To Year</th>
                                </tr>
                                <tr>
                                    <td>
                                        <?php foreach ($tylhloss as $bd):

                                            echo $bd['time_loss']['reasons'] . '<br/>';

                                        endforeach;
                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php foreach ($tdlhloss as $bd):

                                            echo number_format($bd['0']['tdlhloss'], 2) . '%<br/>';

                                        endforeach;
                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php foreach ($tmlhloss as $bd):

                                            echo number_format($bd['0']['tmlhloss'], 2) . '%<br/>';

                                        endforeach;
                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php foreach ($tylhloss as $bd):

                                            echo number_format($bd['0']['tylhloss'], 2) . '%<br/>';

                                        endforeach;
                                        ?>
                                    </td>
                                </tr>

                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6" style="margin:0px;padding: 0px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Monthly Printing Consumption Report
                    </div>
                    <div class="panel-body">
                        <?php
                        //  foreach($s as $a):
                        //print_r($s);
                        //endforeach;
                        echo '<td>';
                        echo $this->Form->input('brand', array('type' => 'select', 'options' => array('01' => 'Baisakh', '02' => 'Jestha', '03' => 'Ashad', '04' => 'Shrawan', '05' => 'Bhadra', '06' => 'Ashoj', '07' => 'Kartik', '08' => 'Mangsir', '09' => 'Poush', '10' => 'Margh', '11' => 'falgun', '12' => 'Chaitra'), 'class' => 'month', 'onchange' => 'month(this);'));
                        echo '</td>';
                        ?>
                        <div class="consumption">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="margin:0px;padding:2px;">
                <div class="panel panel-primary">
                    <div class="panel-heading">Loss Hour Calculations</div>
                    <div class="panel-body">
                        <div class="container-fluid">
                            <table class="table table-bordered table-hover">
                                <tr class="success">
                                    <th>Category</th>
                                    <th>Today</th>
                                    <th>To Month</th>
                                    <th>To Year</th>
                                </tr>
                                <tr>
                                    <td><strong>Break Down</strong></td>
                                    <td><?= $breakdown_today; ?></td>
                                    <td><?= $breakdown_tomnoth; ?></td>
                                    <td><?= $breakdown_toyear; ?></td>
                                </tr>
                                <tr>
                                    <td><strong>Loss Hour</strong></td>
                                    <td><?= $losshour_today; ?></td>
                                    <td><?= $losshour_tomonth; ?></td>
                                    <td><?= $losshour_toyear; ?></td>
                                </tr>
                                <tr>
                                    <td><strong>Worked Hour</strong></td>
                                    <td><?= $workhour_d; ?></td>
                                    <td><?= $workhour_m; ?></td>
                                    <td><?= $workhour_y; ?></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class=col-mod-10">
        <div class="panel panel-primary">
            <div class="panel-heading">Loss Graph</div>
            <div class="panel-body">
                <div class="charts">
                    <?php echo $this->FusionCharts->render('Column2D Chart'); ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php } ?>
<!--End of the printing department-->
<!--Laminating department-->
<?php if (AuthComponent::user('id') and AuthComponent::user('role') == 'laminating') { ?>
    <h1>Welcome to Laminating Department</h1>

    <ol class="breadcrumb">
        <li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
    </ol>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        Breakdown/Loss Hour Calculation
                    </div>
                    <div class="panel-body">
                        <?php $tdl;
                        $tdb;
                        $tml;
                        $tmb;
                        $tyl;
                        $tyb; ?>
                        <table class="table table-bordered table-hover" style="margin:0px auto;">
                            <tr>
                                <th>Type</th>
                                <th style="text-align: right;">Today</th>
                                <th style="text-align: right;">To Month</th>
                                <th style="text-align: right;">To Year</th>
                            <tr>

                            <tr>
                                <td> Output Per Total Hours</td>
                                <td style="text-align: right;">
                                    <?php foreach ($todaycalenderop as $trw):
//					echo $todayworkinghour.'='.$trw[0]['output'];
                                        echo number_format($trw[0]['output'] / 24, 2);
                                    endforeach;
                                    ?>
                                </td>
                                <td style="text-align: right;">
                                    <?php foreach ($tomonthcalenderop as $trw):

                                        echo number_format($trw[0]['output'] / (24 * 30), 2);
                                    endforeach;
                                    ?>
                                </td>
                                <td style="text-align: right;">
                                    <?php foreach ($toyrcalenderop as $trw):

                                        echo number_format($trw[0]['output'] / (24 * 30 * 12), 2);
                                    endforeach;
                                    ?>
                                </td>
                            </tr>

                            <tr>
                                <td> No of Color Made</td>
                                <td style="text-align: right;">
                                    <?php foreach ($tdcolorcount as $trw):
//					echo $todayworkinghour.'='.$trw[0]['output'];
                                        echo number_format($trw[0]['tdcolorcount'], 2);
                                    endforeach;
                                    ?>
                                </td>
                                <td style="text-align: right;">
                                    <?php foreach ($tmcolorcount as $trw):

                                        echo number_format($trw[0]['tmcolorcount'] / $_daysinmonth, 2);
                                    endforeach;
                                    ?>
                                </td>
                                <td style="text-align: right;">
                                    <?php foreach ($tycolorcount as $trw):

                                        echo number_format($trw[0]['tycolorcount'] / $_daysinyear, 2);
                                    endforeach;
                                    ?>
                                </td>
                            </tr>
                        </table>

                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">Scrap %</div>
                    <div class="panel-body">
                        <div class="container-fluid">
                            <table class="table">
                                <tr class="success">
                                    <th>Base</th>
                                    <th style="text-align: right;">To Day</th>
                                    <th style="text-align: right;">To Month</th>
                                    <th style="text-align: right;">To Year</th>
                                </tr>
                                <tr>
                                    <td>Base UT</td>
                                    <td style="text-align: right;">
                                        <?php foreach ($tdmtlr_percent as $per):
                                            echo number_format($per['0']['base_ut'], 2);
                                        endforeach;
                                        ?>

                                    </td>
                                    <td style="text-align: right;">
                                        <?php foreach ($tmmtlr_percent as $per):
                                            echo number_format($per['0']['base_ut'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                    <td style="text-align: right;">
                                        <?php foreach ($tymtlr_percent as $per):
                                            echo number_format($per['0']['base_ut'], 2);
                                        endforeach;
                                        ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Base MT


                                    </td>
                                    <td style="text-align: right;"><?php foreach ($tdmtlr_percent as $per):
                                            echo number_format($per['0']['base_mt'], 2);
                                        endforeach;
                                        ?></td>
                                    <td style="text-align: right;"><?php foreach ($tmmtlr_percent as $per):
                                            echo number_format($per['0']['base_mt'], 2);
                                        endforeach;
                                        ?></td>
                                    <td style="text-align: right;"><?php foreach ($tymtlr_percent as $per):
                                            echo number_format($per['0']['base_mt'], 2);
                                        endforeach;
                                        ?></td>
                                </tr>
                                <tr>
                                    <td>
                                        Base OT
                                    </td>
                                    <td style="text-align: right;"><?php foreach ($tdmtlr_percent as $per):
                                            echo number_format($per['0']['base_ot'], 2);
                                        endforeach;
                                        ?></td>
                                    <td style="text-align: right;"><?php foreach ($tmmtlr_percent as $per):
                                            echo number_format($per['0']['base_ot'], 2);
                                        endforeach;
                                        ?></td>
                                    <td style="text-align: right;"><?php foreach ($tymtlr_percent as $per):
                                            echo number_format($per['0']['base_ot'], 2);
                                        endforeach;
                                        ?></td>
                                </tr>
                                <tr>
                                    <td>
                                        CT


                                    </td>
                                    <td style="text-align: right;"><?php foreach ($tdmtlr_percent as $per):
                                            echo number_format($per['0']['CT'], 2);
                                        endforeach;
                                        ?></td>
                                    <td style="text-align: right;"><?php foreach ($tmmtlr_percent as $per):
                                            echo number_format($per['0']['CT'], 2);
                                        endforeach;
                                        ?></td>
                                    <td style="text-align: right;"><?php foreach ($tymtlr_percent as $per):
                                            echo number_format($per['0']['CT'], 2);
                                        endforeach;
                                        ?></td>
                                </tr>

                                <tr>
                                    <td>
                                        Print Film


                                    </td>
                                    <td style="text-align: right;"><?php foreach ($tdmtlr_percent as $per):
                                            echo number_format($per['0']['print_film'], 2);
                                        endforeach;
                                        ?></td>
                                    <td style="text-align: right;"><?php foreach ($tmmtlr_percent as $per):
                                            echo number_format($per['0']['print_film'], 2);
                                        endforeach;
                                        ?></td>
                                    <td style="text-align: right;"><?php foreach ($tymtlr_percent as $per):
                                            echo number_format($per['0']['print_film'], 2);
                                        endforeach;
                                        ?></td>
                                </tr>

                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">Scrap % with Brand</div>
                <div class="panel-body">
                    <div class="container-fluid">
                        <table class="table">
                            <tr class="success">
                                <th>Brand</th>
                                <th style="text-align: right;">Today</th>

                            </tr>

                            <?php
                            foreach ($tdprint_percent as $tdp):
                                echo '<tr>';
                                echo '<td>' . $tdp['production_shiftreport']['brand'] . '</td><td style="text-align: right;">' . number_format($tdp['0']['print_film'], 2) . '</td>';
                                echo '</tr>';
                            endforeach;
                            ?>

                        </table>
                        <table class="table">
                            <tr class="success">
                                <th>Brand</th>
                                <th style="text-align: right;">To Month</th>

                            </tr>

                            <?php
                            foreach ($tmprint_percent as $tdp):
                                echo '<tr>';
                                echo '<td>' . $tdp['production_shiftreport']['brand'] . '</td><td style="text-align: right;">' . number_format($tdp['0']['print_film'], 2) . '</td>';
                                echo '</tr>';
                            endforeach;
                            ?>

                        </table>

                        <table class="table">
                            <tr class="success">
                                <th>Brand</th>
                                <th style="text-align: right;">To Year</th>
                            </tr>
                            <?php
                            foreach ($typrint_percent as $tdp):
                                echo '<tr>';
                                echo '<td>' . $tdp['production_shiftreport']['brand'] . '</td><td style="text-align: right;">' . number_format($tdp['0']['print_film'], 2) . '</td>';
                                echo '</tr>';
                            endforeach;
                            ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">BreakDown Reasons %</div>
                <div class="panel-body">
                    <div class="container-fluid">
                        <table class="table">
                            <tr class="success">
                                <th>Reasons</th>
                                <th style="text-align: right;">Today</th>
                                <th style="text-align: right;">To Month</th>
                                <th style="text-align: right;">To Year</th>
                            </tr>
                            <tr>
                                <td>
                                    <?php foreach ($tybdloss as $bd):
                                        echo $bd['time_loss']['reasons'] . '<br/>';
                                    endforeach;
                                    ?>
                                </td>
                                <td style="text-align: right;">
                                    <?php foreach ($tdbdloss as $bd):
                                        echo number_format($bd['0']['tdbdloss'], 2) . '%<br/>';
                                    endforeach;
                                    ?>
                                </td>
                                <td style="text-align: right;">
                                    <?php foreach ($tmbdloss as $bd):
                                        echo number_format($bd['0']['tmbdloss'], 2) . '%<br/>';
                                    endforeach;
                                    ?>
                                </td>
                                <td style="text-align: right;">
                                    <?php foreach ($tybdloss as $bd):
                                        echo number_format($bd['0']['tybdloss'], 2) . '%<br/>';
                                    endforeach;
                                    ?>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">Loss Hour Reasons %</div>
                <div class="panel-body">
                    <div class="container-fluid">
                        <table class="table">
                            <tr class="success">
                                <th>Reasons</th>
                                <th style="text-align: right;">Today</th>
                                <th style="text-align: right;">To Month</th>
                                <th style="text-align: right;">To Year</th>
                            </tr>
                            <tr>
                                <td>
                                    <?php foreach ($tylhloss as $bd):
                                        echo $bd['time_loss']['reasons'] . '<br/>';
                                    endforeach;
                                    ?>
                                </td>
                                <td style="text-align: right;">
                                    <?php foreach ($tdlhloss as $bd):
                                        echo number_format($bd['0']['tdlhloss'], 2) . '%<br/>';
                                    endforeach;
                                    ?>
                                </td>
                                <td style="text-align: right;">
                                    <?php foreach ($tmlhloss as $bd):
                                        echo number_format($bd['0']['tmlhloss'], 2) . '%<br/>';
                                    endforeach;
                                    ?>
                                </td>
                                <td style="text-align: right;">
                                    <?php foreach ($tylhloss as $bd):
                                        echo number_format($bd['0']['tylhloss'], 2) . '%<br/>';
                                    endforeach;
                                    ?>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6" style="margin:0px;padding:2px;">
            <div class="panel panel-primary">
                <div class="panel-heading">Loss Hour Calculations</div>
                <div class="panel-body">
                    <div class="container-fluid">
                        <table class="table table-bordered table-hover">
                            <tr class="success">
                                <th>Category</th>
                                <th>Today</th>
                                <th>To Month</th>
                                <th>To Year</th>
                            </tr>
                            <tr>
                                <td><strong>Break Down</strong></td>
                                <td><?= $breakdown_today; ?></td>
                                <td><?= $breakdown_tomnoth; ?></td>
                                <td><?= $breakdown_toyear; ?></td>
                            </tr>
                            <tr>
                                <td><strong>Loss Hour</strong></td>
                                <td><?= $losshour_today; ?></td>
                                <td><?= $losshour_tomonth; ?></td>
                                <td><?= $losshour_toyear; ?></td>
                            </tr>
                            <tr>
                                <td><strong>Worked Hour</strong></td>
                                <td><?= $workhour_d; ?></td>
                                <td><?= $workhour_m; ?></td>
                                <td><?= $workhour_y; ?></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php } ?>

<!--End of the laminating department code-->

</div>
</div><!-- /.row -->

