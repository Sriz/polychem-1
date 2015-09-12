<script>

    $(document).ready(function () {
        var value = ''
        $('.nepali-calendar').nepaliDatePicker();
        // Trigger On change/Selected event
        $.onChangeDatepicker_Ravindra = function (selectedDate) {
            value = $("#nepali-calendar").val();
            $('.nepalidatepicker').val(value);
        }

    });


    var itsclicked = true;
    function test() {
        var x = document.getElementsByClassName('shift');
        for (i = 0; i < x.length; i++) {
            var e = document.getElementById("shift");
            var strUser = e.options[e.selectedIndex].text;
            x[i].value = strUser;
        }
    }

    function qwt() {
        var x = document.getElementsByClassName('quality');
        for (i = 0; i < x.length; i++) {
            var e = document.getElementById("quality");
            var strUser = e.options[e.selectedIndex].text;
            x[i].value = strUser;
        }
        var y = document.getElementsByClassName('brand');
        for (i = 0; i < y.length; i++) {
            var z = document.getElementById("brand");
            var strUsr = z.options[z.selectedIndex].text;
            y[i].value = strUsr;
        }
        var dataString = 'id=' + strUser + '&type=' + strUsr;
        $.ajax
        ({
            type: "POST",
            url: "/polychem/TblConsumptionStocks/dimension",
            data: dataString,
            cache: false,
            success: function (html) {
                $(".dimension").html(html);
            }
        });

        $.ajax
        ({
            type: "POST",
            url: "/polychem/TblConsumptionStocks/color",
            data: dataString,
            cache: false,
            success: function (html) {
                $(".color").html(html);
            }
        });

    }

    function dim() {
        var x = document.getElementsByClassName('dimension');
        for (i = 0; i < x.length; i++) {
            var e = document.getElementById("dimension");
            var strUser = e.options[e.selectedIndex].text;
            x[i].value = strUser;
            /*code to populate color*/


            /*end of the code*/
        }
        var qt = document.getElementById("quality");
        var q = qt.options[qt.selectedIndex].text;
        var dim = document.getElementById("dimension");
        var dmn = dim.options[dim.selectedIndex].text;

        color(q, dmn);
    }

    function color(a, b) {
        var select;
        if (a == "Base MT" && b == "0.30 x 1950") {


            var x = document.getElementById("color");
            var option = document.createElement("option");
            option.text = "Black";
            x.add(option);
        }
        else if (a == "Base UT" && b == "0.30 x 1950") {
            var x = document.getElementById("color");
            var option = document.createElement("option");
            option.text = "Pink";
            x.add(option);
        }
        else {

        }
    }

    function colorchange() {
        var x = document.getElementsByClassName('color');
        for (i = 0; i < x.length; i++) {
            var e = document.getElementById("color");
            var strUser = e.options[e.selectedIndex].text;
            x[i].value = strUser;


        }
    }


    function brandchange() {
        var x = document.getElementsByClassName('brand');
        //console.log(x.length);
        for (i = 0; i < x.length; i++) {
            var e = document.getElementById("brand");
            var strUser = e.options[e.selectedIndex].text;
            x[i].value = strUser;
        }

        var dataString = 'id=' + strUser;
        $.ajax
        ({
            type: "POST",
            url: "/polychem/TblConsumptionStocks/t",
            data: dataString,
            cache: false,
            success: function (html) {
                $(".quality").html(html);
            }
        });


    }
    $(document).on("change", ".qty1", function () {
        var sum = 0;
        $(".qty1").each(function () {
            sum += +$(this).val();
        });
        $(".total").val(sum);
        $('.nepalidatepicker').val($('.nepali-calendar').val());
        //alert($('.nepali-calendar').val());

    });
</script>
<script>
    $(document).ready(function () {
        brandchange();
        var a = "<?php
    $v=AuthComponent::user('role'); echo $v?>";
        var us = "<?php
    $s=AuthComponent::user('username'); echo $s?>";
        $('#department').val(a);
        $('#user').val(us);
        var dt = new Date();
        var time = dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();
        $('#datetime').val(dt);
        var dn = dt.getHours();
        if (dn > 12) {
            $('#shift').val("B");

        }
        else {
            $('#shift').val("A");
        }
    });
</script>
<style type="text/css">
    .input-select-box{
        width:100%;
    }
</style>

<?=$this->Html->link('List items', array('action' => 'index'),['class'=>'btn btn-primary pull-right']);?>
<br><br>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Consumption Stocks Add
                </div>
                <div class="panel-footer">
                    <table class="table">
                        <form action="" method="post">
                            <tr>
                                <td>Nepalidate</td>
                                <td><input autocomplete="off" id="nepali-calendar" class="form-control nepali-calendar" type="text" required="required" value="" name="nepalidate"></td>
                            </tr>
                            <tr>
                                <td>Shift</td>
                                <td>
                                    <select required="required" class="form-control" name="shift">
                                        <option value="">Please select</option>
                                        <option value="A">A</option>
                                        <option value="B">B</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Brand</td>
                                
                                <td><?php echo $this->Form->input('',array('id'=>'brand','class'=>'input input-sm brand','options'=>array('Please select'=>'Please select',$brand),'onchange'=>'brandchange()',"class"=>"input-select-box"));?>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>Quality</td>
                                <td>
                                <?php echo $this->Form->input('',array('class'=>'input input-sm quality input-select-box','id'=>'quality','onchange'=>'qwt()','options'=>array('null'=>'Please select'))); ?>
                                   

                                   
                                </td>
                            </tr>
                            <tr>
                                <td>Dimension</td>
                                <td>
                                    <?php echo $this->Form->input('', array('options' => array('Please select'=>'Please select',$dimensions), 'class' => 'input input-sm dimension', 'id' => 'dimension', 'onchange' => 'dim()',"class"=>"input-select-box","required"=>"required"));?>
                                </td>
                            </tr>
                            <tr>
                                <td>Color</td>
                                <td>
                                   <?php echo $this->Form->input('', array('class' => 'input input-sm color', 'id' => 'color', 'options' => array('select' => 'Select color'), 'onchange' => 'colorchange()',"class"=>"input-select-box","required"=>"required")); ?>
                                </td>
                            </tr>
                            <?php
                            //materials field
                            /*echo '<pre>';
                            print_r($materials);*/
                            ?>
                            <?php foreach ($materials as $key => $m): ?>
                                <tr>
                                    <td><?= $m['MixingMaterials']['name']; ?></td>
                                    <td>
                                        <input class="form-control" type="text"
                                               name="materials[<?=$m['MixingMaterials']['id']; ?>]" value="0">
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                            <tr>
                                <td></td>
                                <td><input type="submit" name="submit" value="Submit"
                                           class="btn btn-primary pull-right"></td>
                            </tr>
                        </form>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>