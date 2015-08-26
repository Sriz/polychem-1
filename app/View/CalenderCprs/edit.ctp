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
	$date=date('d-m-Y');
	//echo $this->Form->input('date',array('value'=>$date,'type'=>'text','class'=>'input input-sm'));?>

<?php echo $this->Form->create(null,array(
	'url' => array('controller' => 'CalenderCprs', 'action' => 'edit'),
    'class' => 'form-horizontal',
    'inputDefaults' => array(
        'format' => array('before', 'label', 'between', 'input', 'error', 'after'),
        'div' => array('class' => 'control-group'),
        'label' => array('class' => ' col-sm-2 control-label'),
        'between' => '<div class="col-xs-10">',
        'after' => '</div>',
        'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline')),
    )));//('CalenderCpr'); ?>
	
	
	<fieldset>
		<legend><?php echo __('Edit'); ?></legend>
	<?php
	$i=0;
		$date=date('d-m-Y');
	echo '<table class="table">';
	
	
	//print_r($consumptionStocks);
	//print_r($consumptionStocks);
	
	//foreach($consumptionStocks as $consumptionStock):
	//echo '<tr class="success">';
	
	

	
		//echo '<td >'.$this->Form->input('CalenderCpr.'.$i.'.date',array('value'=>$date,'type'=>'text','class'=>array('input','input-sm'))).'</td>';
		//echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.shift',array('value'=>$consumptionStock['calender_cpr']['shift'],'class'=>array('input','input-sm'),'type'=>'text')).'</td>';
		//echo'<td>'. $this->Form->input('CalenderCpr.'.$i.'.type',array('value'=>$consumptionStock['calender_cpr']['type'],'id'=>'type','class'=>array('input','input-ms'),'type','type'=>'text')).'</td>';
		//echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.quality',array('value'=>$consumptionStock['calender_cpr']['quality'],'onchange'=>'fetchdata()','id'=>'quality','class'=>'input input-ms quality')).'</td>';
		//echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.color',array('value'=>$consumptionStock['calender_cpr']['color'],'id'=>'color','class'=>array('color','input','input-ms'),'type'=>'text')).'</td>';
		//echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.embossing',array('value'=>$consumptionStock['calender_cpr']['embossing'],'id'=>'emboss','class'=>array('emboss','input','input-ms'),'type'=>'text','onclick'=>'fetchdata()')).'</td>';
		//echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.Dimension',array('id'=>'dimension','class'=>array('dimension','input','input-ms'),'type'=>'text','value'=>$consumptionStock['calender_cpr']['Dimension'])).'</td>';
		//echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.length',array('value'=>$consumptionStock['calender_cpr']['length'],'class'=>array('input','input-sm'))).'</td>';
		//echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.ntwt',array('value'=>$consumptionStock['calender_cpr']['ntwt'],'class'=>array('input','input-sm'))).'</td>';
		//echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.total',array('id'=>'total','class'=>array('total','input','input-ms'),'type'=>'text','value'=>$consumptionStock['calender_cpr']['total'])).'</td>';
		//echo '<td>'.$this->Form->input('CalenderCpr.'.$i.'.department_id',array('value'=>'calender','type'=>'hidden','class'=>array('input','input-sm'))).'</td>';
		
		//$i=$i+1;
		//echo '</tr>';
//endforeach;
	
		echo $this->Form->input('id');
	    echo $this->Form->input('date',array('class'=>'nepali-calendar','id'=>'nepali-calendar'));
		echo $this->Form->input('shift',array('disabled' => 'disabled'));
		echo $this->Form->input('type',array('disabled' => 'disabled'));
		echo $this->Form->input('quality',array('disabled' => 'disabled'));
		echo $this->Form->input('color',array('disabled' => 'disabled'));
		echo $this->Form->input('embossing',array('disabled' => 'disabled'));
		echo $this->Form->input('Dimension',array('disabled' => 'disabled'));
		echo $this->Form->input('length');
		echo $this->Form->input('ntwt',array('label'=>array('class'=>'col-sm-2 control-label','text'=>'NTWT')));
		echo $this->Form->input('total',array('disabled' => 'disabled'));
		echo $this->Form->input('department_id',array('value'=>'calender','type'=>'hidden','class'=>array('input','input-sm')));
		

	?>
</fieldset>
	

	
<?php echo $this->Form->end(__('Submit')); ?>


