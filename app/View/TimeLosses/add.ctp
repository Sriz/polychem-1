<!-- start of start time and end time -->
<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.21/themes/redmond/jquery-ui.css" />
<?php echo $this->Html->css('jquery.ptTimeSelect.css'); ?>
<?php echo $this->Html->script('jquery.ptTimeSelect.js'); ?>

<script>
        $(document).ready(function(){
            // find the input fields and apply the time select to them.
            $('#starttime, #endtime').ptTimeSelect({
                onClose: function () {
                    calculate();
                }
            }).show();
        });
</script>
<!-- end of start time & end time-->
<script>
    $(document).ready(function () {
        $('#total_loss_btn').click(function () {
            calculate();
        })
    });
    $(document).ready(function () {
        $('.nepalidatepicker').nepaliDatePicker();
    });

    $(document).ready(function () {
        $("#nepalidatepicker").focus(function (e) {
            //$("span").css("display", "inline").fadeOut(2000);
            console.log("focus")
            showCalendarBox('nepalidatepicker');
        });
        $("#type").change(function(){
            var type = $(this).val();
            var dep = $("#department").val();

            $.post("fetchreason", {id: type, departmentid: dep}, function(response){
                $(".reason").html(response);
            })

        });
    });

    function remove_ampm(starttime)
    {
        if (starttime.indexOf('PM') >= 0) {
            starttime = starttime.replace('PM','');
            var arr0 = starttime.split(':');
            arr0[0]=12+parseInt(arr0[0]);
            return convert_sec(arr0[0], arr0[1]);
        }else{
            starttime = starttime.replace('AM','');
            var arr0 = starttime.split(':');
            return convert_sec(arr0[0], arr0[1]);
        }
    }
    function convert_sec(hours, minutes)
    {
        return parseInt(hours)*60*60 + parseInt(minutes)*60;
    }
    function elapsed_time(time)
    {
        var totalSec = time;
        var hours = parseInt( totalSec / 3600 ) % 24;
        var minutes = parseInt( totalSec / 60 ) % 60;
        //var seconds = totalSec % 60;

        var result = (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
        return result;
    }
    function calculate() {
        var starttime = $('#starttime').val();
        var endtime = $('#endtime').val();
        starttime = remove_ampm(starttime);
        endtime = remove_ampm(endtime);
        //console.log(starttime+"<br>"+endtime);
        if(endtime<starttime)
        {
            alert('Start time should lesser than end time');
            return false;
        }
        var difference = endtime-starttime;
        var total_loss =elapsed_time(difference);
        if(isNaN(difference)){
            $("#totalloss").val("");
            $("#totalloss_sec").val("");
            return;
        }
        $("#totalloss").val(total_loss);
        $("#totalloss_sec").val(difference);


        /*var breakfast = moment(starttime, 'HH:mm');
        var lunch = moment(endtime, 'HH:mm');
        console.log("breakfast = "+breakfast+" Lunch = "+lunch);
        var different = lunch - breakfast;
        var t = moment.duration(different).as('minutes');
        console.log('t ='+t);
        var sec = moment.duration(different).as('seconds');
        var hours = Math.floor(t / 60);
        var min = t % 60;
        var losstime = hours + "." + min;
        $('#totalloss').val(Math.abs(losstime));
        $('#totalloss_sec').val(Math.abs(sec));*/
    }


    function fetchdata() {
        var qty
        var department = document.getElementById('department').value;
        var x = document.getElementsByClassName('type');
        for (i = 0; i < x.length; i++) {
            var e = document.getElementById("type");
            qty = e.options[e.selectedIndex].text;


        }
        var dataString = 'id=' + qty + '&departmentid=' + department;

        $.ajax
        ({
            type: "POST",
            url: "fetchreason",
            data: dataString,
            cache: false,
            success: function (html) {
                $(".reason").html(html);
            }
        });


    }
</script>
<div class="panel panel-primary" >

<div class="panel-heading" ><?php echo __('Add Time Loss'); ?> </div>
<div class="panel-body">
<?php echo $this->Form->create('TimeLoss',array('class' => 'form-horizontal',
'inputDefaults' => array(
'format' => array('before', 'label', 'between', 'input', 'error', 'after'),
'div' => array('class' => 'control-group'),
'label' => array('class' => ' col-sm-2 control-label'),
'between' => '<div class="col-xs-10">',
'after' => '</div>',
'error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline')),
)));
?>
<fieldset>
<?php
    echo $this->Form->input('nepalidate',array('id'=>'nepalidatepicker','type'=>'text','class'=>'nepalidatepicker form-comtrol input-sm'));
    //echo $this->Form->input('date',array('type'=>'text','value'=>$date,'class'=>array('form-control input-sm')));
    echo $this->Form->input('shift',array('options'=>array('A'=>'A','B'=>'B'),'class'=>'form-control input-sm'));
    echo $this->Form->input('department_id',array('id'=>'department','type'=>'text','class'=>'form-control input-sm'));
    echo $this->Form->input('type',array('id'=>'type','class'=>array('type','form-control','input-sm'),'options'=>array('please select'=>'please select','BreakDown'=>'BreakDown','LossHour'=>'LossHour')/*,'onchange'=>'fetchdata()'*/));
    echo $this->Form->input('reasons',array('id'=>'reasons','type'=>'select','class'=>'reason form-control input-sm'));
    echo $this->Form->input('time',array('type'=>'text', 'label'=>array('class'=>'col-sm-2 control-label','text'=>'StartTime'),'class' => array('form-control input-sm','starttime'),'value'=>'0.00','id'=>'starttime'));
    echo $this->Form->input('wk_hrs',array('type'=>'text','class'=>array('form-control input-sm','endtime'),'label'=>array('class'=>'col-sm-2 control-label','text'=>'EndTime'),'value'=>'0.00','id'=>'endtime',/*'onchange'=>'calculate()'*/));
/*    echo "<p id='total_loss_btn'>Click to calculate TotalLoss</p>";*/
     //echo $form->input('Contact.name', array('label' => array('class' => 'Your-Class', 'text' => 'Name<span style="color:#f89e01">*</span> :'), 'size' => '25'));
    echo $this->Form->input('totalloss',array('id'=>'totalloss','type'=>'text','class'=>'form-control input-sm totalloss','readonly'));
    echo $this->Form->input('totalloss_sec',array('id'=>'totalloss_sec','type'=>'hidden','class'=>array('totalloss_sec','form-control input-sm')));

?>			<?php echo $this->Form->end(__('Submit')); ?>
</fieldset>

</div>
</div>

<div class="actions">
<h3><?php echo __('Actions'); ?></h3>
<ul>

<li><?php echo $this->Html->link(__('List Time Losses'), array('action' => 'index')); ?></li>
</ul>
</div>
