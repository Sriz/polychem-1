<script>
    $(document).ready(function () {
        var value = '';
        $('.nepali-calendar').nepaliDatePicker();
        // Trigger On change/Selected event
        $.onChangeDatepicker_Ravindra = function (selectedDate) {
            value = $("#nepali-calendar").val();
            $('.nepalidatepicker').val(value);
        }
    });

    // brand change function
    $(document).ready(function(){
        $('#brand').on('change',function(){
            //TODO::$.post
        })
    });
</script>

<?=$this->Html->link('List items', array('action' => 'index'),['class'=>'btn btn-primary pull-right']);?>
<br><br>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Concumption Stocks Add
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
                                        <option value="">--Choose One--</option>
                                        <option value="A">A</option>
                                        <option value="B">B</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Brand</td>
                                <td>
                                    <select id="brand" required="required" class="form-control" name="brand">
                                        <option value="">--Choose One--</option>
                                        <option value="ABC">ABC</option>
                                        <option value="DEF">DEF</option>
                                        <option value="GHI">GHI</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Quality</td>
                                <td>
                                    <select class="form-control" required="required" name="quality">
                                        <option value="">--Choose One--</option>
                                        <option value="quality1">quality1</option>
                                        <option value="quality2">quality2</option>
                                        <option value="quality3">quality3</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Dimension</td>
                                <td>
                                    <select required="required" class="form-control" name="dimension">
                                        <option value="">--Choose One--</option>
                                        <option value="Dimension1">Dimension1</option>
                                        <option value="Dimension2">Dimension2</option>
                                        <option value="Dimension3">Dimension3</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Color</td>
                                <td>
                                    <select required="required" class="form-control" name="color">
                                        <option value="">--Choose One--</option>
                                        <option value="White">White</option>
                                        <option value="Black">Black</option>
                                        <option value="Green">Green</option>
                                    </select>
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