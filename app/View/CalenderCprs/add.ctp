    <script>
         $(document).ready(function(){
              $('.nepali-calendar').nepaliDatePicker();
         });
		 $(document).ready(function(){
    $("#nepali-calendar").focus(function(e){
        //$("span").css("display", "inline").fadeOut(2000);
	//	console.log("focus")
		showCalendarBox('nepali-calendar');
    });
});
    </script>
<script>
    function fetchdata()
    {
        var strUser;
       
var x = document.getElementsByClassName('quality');
for(i = 0; i < x.length; i++) {
	var e = document.getElementById("quality");
    //strUser = e.options[e.selectedIndex].text;
 //x[i].value = strUser;
                     

    }
        
         var material_type;
        var y = document.getElementsByClassName('type');
for(i = 0; i < y.length; i++) {
	var d = document.getElementById("type");
   // material_type = d.options[d.selectedIndex].text;
  //y[i].value = strUser;
  //alert(d);
                     

    }
       
         var dataString = 'id='+ strUser + '&type=' + material_type;
        
    $.ajax
({
type: "POST",
url: "/polychem/CalenderCprs/datafetch",
data: dataString,
cache: true,
success: function(html)
{
$(".color").html(html);
}
});
        
 $.ajax
({
type: "POST",
url: "/polychem/CalenderCprs/fetchdimension",
data: dataString,
cache: true,
success: function(html)
{
$(".dimension").html(html);
}
}); 
    
    $.ajax
({
type: "POST",
url: "/polychem/CalenderCprs/fetchemboss",
data: dataString,
cache: true,
success: function(html)
{
$(".emboss").html(html);
alert(html);
}
});        
        
        
        
        
    }


</script>
<div class="calenderCprs form">
	<?php
	echo $this->Form->input('date',array('value'=>$consumptionStocks['0']['consumption_stock']['nepalidate'],'readonly','type'=>'text','class'=>'nepali-calendar','id'=>'nepali-calendar'));?>

<?php echo $this->Form->create();//('CalenderCpr'); ?>
    <style>
        /* table style  */
        .date-lg {
            width: 11%;
        }
        .shift-sm{
            width: 5%
        }
        .emb-sm{
            width: 8%;
        }
    </style>
	
	<fieldset>
		<legend><?php echo __('Add Calender Cpr'); ?></legend>
	<?php
	$i=0;
		$date=date('d-m-Y');
	echo '<div class="table-responsive">';
	echo '<table class="table">';
	echo '<tr>';
	echo '<td class="date-lg">Date</td>';
	echo '<td class="shift-sm">Shift</td>';
	echo '<td>Type</td>';
	echo '<td>Quality</td>';
	echo '<td>Color</td>';
	echo '<td class="emb-sm">Embossing</td>';
	echo '<td>Dimension</td>';
	echo '<td>Length</td>';
	echo '<td>NTWT</td>';
	echo '<td>Mixing Total</td>';
	
	echo '</tr>';
	
	
	
	foreach($consumptionStocks as $consumptionStock):
	echo '<tr class="success">';
	
	

	
		echo '<td >'.$this->Form->input('CalenderCpr.'.$i.'.date',array('class'=>'nepalidate','value'=>$consumptionStock['consumption_stock']['nepalidate'],'readonly','type'=>'text','label'=>false,'id'=>'nepalidate')).'</td>';
		echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.shift',array('value'=>$consumptionStock['consumption_stock']['shift'],'readonly','type'=>'text','class'=>array('input','input-large'),'label'=>false)).'</td>';
		echo'<td>'. $this->Form->input('CalenderCpr.'.$i.'.type',array('value'=>$consumptionStock['consumption_stock']['quality_id'],'id'=>'type','readonly','class'=>array('input'.'input-large','type'),'type'=>'text','label'=>false)).'</td>';
		echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.quality',array('value'=>$consumptionStock['consumption_stock']['brand'],'onchange'=>'fetchdata()','readonly','id'=>'quality','class'=>array('input','input-large','quality'),'label'=>false)).'</td>';
		echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.color',array('value'=>$consumptionStock['consumption_stock']['color'],'id'=>'color','readonly','class'=>array('input','input-large','color'),'type'=>'text','label'=>false)).'</td>';
		echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.embossing',array('value'=>$consumptionStock['BaseEmboss']['Emboss'],'id'=>'emboss','readonly','class'=>array('input','input-large','emboss'),'type'=>'text','onclick'=>'fetchdata()','label'=>false)).'</td>';
		echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.Dimension',array('id'=>'dimension','class'=>array('input','input-large','dimension'),'type'=>'text','readonly','value'=>$consumptionStock['consumption_stock']['dimension'],'label'=>false)).'</td>';
		echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.length',array('value'=>'0','class'=>array('input','input-large'),'label'=>false)).'</td>';
		echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.ntwt',array('value'=>'0','class'=>array('input','input-large'),'label'=>false)).'</td>';
		echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.total',array('id'=>'total','class'=>array('total','input','input-large'),'readonly','type'=>'text','value'=>number_format($consumptionStock['consumption_stock']['total'],2),'label'=>false)).'</td>';

		echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.uid',array('id'=>'uid','class'=>array('uid','input','input-large'),'readonly','type'=>'hidden','value'=>$consumptionStock['consumption_stock']['uid'],'label'=>false)).'</td>';


		echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.department_id',array('value'=>'calender','type'=>'hidden','class'=>array('input','input-large'))).'</td>';
		
		$i=$i+1;
		echo '</tr>';
endforeach;
	?>
</fieldset>
	

	
<?php echo $this->Form->end(__('Submit')); ?>

<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Calender Cprs'), array('action' => 'index')); ?></li>
	</ul>
</div>

