<?php
App::uses('AppController', 'Controller');
App::import('Controller', 'ConvertDates');

/**
 * ConsumptionStocks Controller
 *
 * @property ConsumptionStock $ConsumptionStock
 * @property PaginatorComponent $Paginator
 */
class TblConsumptionStocksController extends AppController
{
    public $components = array('Paginator', 'RequestHandler');


    /**
     * index method
     *
     * @return void
     */
    public function index()
    {
        $this->TblConsumptionStock->recursive = 0;
        $this->loadModel('Material');
        $this->loadModel('MixingMaterial');
        $this->loadModel('Quality');
        $this->loadModel('TblConsumptionStock');
        // Custom pagination
        $pagination = new stdClass();
        $pagination->limit = 7;
        $pagination->currentPage = isset($_GET['page_id'])?$_GET['page_id']<=0?1:$_GET['page_id']:1;
        $pagination->offset =($pagination->currentPage-1)*$pagination->limit;

        //search action
        $searchDate = isset($_GET['q']) ? $_GET['q'] : null;
        if ($searchDate) {
            //query to search
            $searchQuery = $this->TblConsumptionStock->find('all', [
                'conditions' => ['nepalidate' =>$searchDate],
                'offset'=>$pagination->offset,
                'limit' => $pagination->limit,
            ]);
            $pagination->totalPage = ceil(count($this->TblConsumptionStock->find('all', ['conditions' => ['nepalidate' =>$searchDate],]))/$pagination->limit);
            if ($searchQuery) {
                $consumptions = $searchQuery;
                $material_lists = $this->MixingMaterial->find('all');
            }
        } else {
            //'order' => array('Model.created', 'Model.field3 DESC'),
            $consumptions = $this->TblConsumptionStock->find('all', ['offset'=>$pagination->offset, 'limit' => $pagination->limit, 'order'=>['id DESC']]);
            $material_lists = $this->MixingMaterial->find('all');
            $pagination->totalPage = ceil(count($this->TblConsumptionStock->find('all'))/$pagination->limit);
        }

        $this->set('pagination', $pagination);
        $this->set('consumptions', isset($consumptions)?$consumptions:null);
        $this->set('material_lists', isset($material_lists)?$material_lists:null);
    }

    /**
     * view method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function view($id = null)
    {
        if (!$this->ConsumptionStock->exists($id)) {
            throw new NotFoundException(__('Invalid consumption stock'));
        }
        $options = array('conditions' => array('ConsumptionStock.' . $this->ConsumptionStock->primaryKey => $id));
        $this->set('consumptionStock', $this->ConsumptionStock->find('first', $options));
    }

    /**
     * add method
     *
     * @return void
     */
    public function add()
    {
        if ($this->request->is('post')) {

            $data = $this->request->data;
            //encode materials array as json
            $data['materials'] = json_encode($data['materials']);
            //save
            if ($this->TblConsumptionStock->save($data)) {
                // Set a session flash message and redirect.
                $this->Session->setFlash(__('The consumption stock has been saved.'), array('class' => 'alert alert-success'));
                return $this->redirect('index');
            }
        }
        $this->loadModel('MixingMaterials');
        $materials = $this->MixingMaterials->find('all');
        $this->set('materials', $materials);
    }

    /**
     * edit method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function edit($id = null)
    {

        $this->TblConsumptionStock->id = $id;

        if ($this->request->is('post')) {

            $data = $this->request->data;
            //encode materials array as json
            $data['materials'] = json_encode($data['materials']);
            //save
            if ($this->TblConsumptionStock->save($data)) {
                // Set a session flash message and redirect.
                $this->Session->setFlash('Data Saved!');
                return $this->redirect('index');
            }

        }
        $sql = "SELECT * FROM tbl_consumption_stock WHERE  id=$id";
        $consumption = $this->TblConsumptionStock->query($sql);

        $this->loadModel('MixingMaterials');
        $materials = $this->MixingMaterials->find('all');
        $this->set('materials', $materials);
        $this->set('consumption', $consumption);
    }


    /**
     * delete method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function delete($id = null)
    {
        $this->TblConsumptionStock->id = $id;


        if (!$this->TblConsumptionStock->exists()) {
            throw new NotFoundException(__('Invalid consumption stock'));
        }
        //TODO::check whether id came from tbl_consumption_stock or not.
        if ($id) {
            $this->TblConsumptionStock->query("delete from tbl_consumption_stock where id=$id");

            $this->Session->setFlash(__('The consumption stock has been deleted.'));
        } else {
            $this->Session->setFlash(__('The consumption stock could not be deleted. Please, try again.'));
        }


        //delete query
        /*  $deleteQuery = $this->TblConsumptionStock->query("DELETE from tbl_consumption_stock where id= $id");
          if($deleteQuery):
              //deleted successfully
              $this->Session->setFlash(__('The consumption stock has been deleted.'));
          else:
              //error message
              $this->Session->setFlash(__('The consumption stock could not be deleted. Please, try again.'));
          endif;*/

        return $this->redirect(array('action' => 'index'));
    }

    public function material()
    {
        $this->loadModel('Material');
        $this->loadModel('MixingMaterial');
        $this->loadModel('Quality');
        $this->loadModel('BaseEmboss');
        $this->loadModel('ConsumptionStock');
        $option = $this->Material->find('list', array('fields' => array('material_id', 'material_name')));
        $this->set('opt', $option);
        $option1 = $this->MixingMaterial->find('list', array('fields' => array('name', 'name'), 'order' => 'id desc'));
        $this->set('mixingraws', $option1);

        $option11 = $this->MixingMaterial->find('all', array('fields' => array('id', 'name'), 'order' => 'id asc'));
        $this->set('mixingraws1', $option11);


        $option2 = $this->Quality->find('list', array('fields' => array('quality_id', 'name')));
        $this->set('quality', $option2);
        $brand = $this->BaseEmboss->find('list', array('fields' => array('Brand', 'Brand'), 'order' => 'Brand', 'group' => 'Brand'));


        $rand_num = mt_rand(100000, 999999);
        $uid = $this->ConsumptionStock->query("select distinct(uid) as id from consumption_stock");

        foreach ($uid as $u):
            //print'<pre>';print_r($u);print'</pre>';die;
            if ($rand_num == $u['consumption_stock']['id']) {
                $rand_num = mt_rand(100000, 999999);
            }

        endforeach;
        $this->set('rand', $rand_num);
        //foreach($brand as $brand):
        $this->set('brand', $brand);
        //endforeach;


    }

    public function select()
    {
        $this->request->onlyAllow('ajax');
        $this->loadModel('Dimension');
        $id = $this->request->data['country_id'];
        $data = $this->Dimension->query("select dimension from dimension where base='$id'");
        $color = $this->Dimension->query("select color from dimension where base='$id'");
        //echo $this->$data;
        //foreach ($data as $d):
        //print_r($d['dimension']);
        //echo $d['dimension']['dimension'];
        //endforeach;
        echo '<label>Dimension:';
        echo '<select name="state" id="drop2" class="form-control">';
        foreach ($data as $d):
            echo '<option value="">' . $d['dimension']['dimension'] . '</option>';
        endforeach;
        echo '</select>';
        echo '</label>';

        echo '<label>Color:';
        echo '<select name="state" id="drop2" class="form-control">';
        foreach ($color as $d):
            echo '<option value="">' . $d['dimension']['color'] . '</option>';
        endforeach;
        echo '</select>';
        echo '</label>';


        $this->set('a', 'aa');

//$this->render('index');


    }


    public function t()
    {
        if ($this->request->is('ajax')) {

            $this->request->onlyAllow('ajax');
            $this->loadModel('BaseEmboss');
            $d = $this->request->data['id'];
            $type = $this->BaseEmboss->query("select distinct(Type) from baseemboss where Brand='$d'");
            echo '<option value="null">Please select</option>';
            foreach ($type as $t):
                echo '<option value="' . $t['baseemboss']['Type'] . '">' . $t['baseemboss']['Type'] . '</option>';
            endforeach;
        }
        exit;
    }

    public function dimension()
    {
        if ($this->request->is('ajax')) {

            $this->request->onlyAllow('ajax');
            $this->loadModel('BaseEmboss');
            $d = $this->request->data['id'];
            $c = $this->request->data['type'];
            $type = $this->BaseEmboss->query("select distinct(Dimension) from baseemboss where Brand='$c' and Type='$d' order by Dimension");
            echo '<option value="null">Please select</option>';
            foreach ($type as $t):

                echo '<option value="' . $t['baseemboss']['Dimension'] . '">' . $t['baseemboss']['Dimension'] . '</option>';

            endforeach;


        }

    }

    public function color()
    {
        if ($this->request->is('ajax')) {

            $this->request->onlyAllow('ajax');
            $this->loadModel('BaseEmboss');
            $d = $this->request->data['id'];
            $c = $this->request->data['type'];
            $type = $this->BaseEmboss->query("select distinct(Color) from baseemboss where Brand='$c' and Type='$d'");
            echo '<option value="null">Please select</option>';
            foreach ($type as $t):
                echo '<option value="' . $t['baseemboss']['Color'] . '">' . $t['baseemboss']['Color'] . '</option>';
            endforeach;
        }

    }

    public function ajaxupdate()
    {
        $this->request->onlyAllow('ajax');
        if ($_GET['id'] and $_GET['data']) {
            $id = $_GET['id'];
            $data = $_GET['data'];
            $key = $_GET['key'];
            echo $key;
        }
        $this->ConsumptionStock->query("update consumption_stock set $key='$data' where consumption_id='$id'");
        echo 'success';
    }

    public function fetch_edit($id = null)
    {
        echo $id;
        //echo $this->ConsumptionStock->id = $id;
        //echo $this->request->data['ConsumptionStock']['consumption_id'];
        //print_r($this->request->data);
    }


    public function reports()
    {


        //$this->set('date1',$val);


        //$date = date('d-m-Y');
        $today = $this->ConsumptionStock->query("select distinct(total) as total from consumption_stock where date='$date'");
        $this->set('totaltoday', $today);
        $raws = $this->ConsumptionStock->query("SELECT material_id,sum(quantity) as sum from consumption_stock where material_id!='Scrap Unprinted' and material_id !='Scrap Laminated' and material_id !='Scrap Printed' and material_id !='Scrap Plain' and material_id!='Scrap CT'  group by material_id order by consumption_id");
        $this->set('mixingraws', $raws);
        $sumscrap1 = $this->ConsumptionStock->query("SELECT material_id,sum(quantity) as srapsum from consumption_stock where material_id='Scrap Unprinted' or material_id ='Scrap Laminated' or material_id ='Scrap Printed' or material_id ='Scrap Plain' or material_id='Scrap CT' group by material_id order by consumption_id");
        $this->set('mixingscrap', $sumscrap1);
        $totalmaterials = $this->ConsumptionStock->query("select sum(quantity) as totalmaterial from consumption_stock where material_id !='Scrap Laminated' and material_id !='Scrap Plain'");
        $this->set('rawmaterial', $totalmaterials);
        $totalscrap = $this->ConsumptionStock->query("SELECT sum(quantity) as scrap_total from consumption_stock where material_id='Scrap Laminated' or material_id='Scrap Plain' or material_id='Scrap Printed' or material_id='Scrap Unprinted' or material_id='Scrap CT'");
        $this->set("scraptotal", $totalscrap);
        //$this->layout = pdf;
        //$this->render();

    }

    public function create_mixingpdf()
    {
        $this->request->onlyAllow('ajax');

        $date = $_POST['city_id'];
        $this->set('date1', $date);
        $this->loadModel('MixingMaterial');
        $sql = "SELECT quantity,name,brand,quality_id,dimension,color,total FROM consumption_stock,mixing_materials where nepalidate='$date'";
        $sqlmixing = "SELECT * FROM mixing_materials";
        $sqltotal = "SELECT B.name,COALESCE(SUM(A.quantity),0) as TOTAL FROM consumption_stock A RIGHT JOIN mixing_materials B ON A.material_id = B.name AND A.nepalidate='$date' GROUP BY B.name ORDER BY B.id DESC";
        $resulttot = $this->ConsumptionStock->query($sqltotal);

        $result = $this->ConsumptionStock->query($sql);
        $resultmixing = $this->MixingMaterial->query($sqlmixing);
        $countmixing = count($resultmixing);
        $countcomption = count($result);
        $loop = $countcomption / $countmixing;

        $str = '';
        $dispkeyst = 0;
        for ($mast = 0; $mast < 4; $mast++) {
            $str .= '<tr>';
            $dispkeyst = $mast;
            for ($i = 0; $i <= $loop; $i++) {

                if ($i == 0) {
                    if ($mast == 0) {
                        $str .= '<th width="200px">Brand</th>';
                    } else if ($mast == 1) {
                        $str .= '<th width="200px">Quality</th>';
                    } else if ($mast == 2) {
                        $str .= '<th width="200px">Dimension</th>';
                    } else {
                        $str .= '<th width="200px">Color</th>';
                    }
                } else {
                    if ($mast == 0) {
                        $str .= '<th style="text-align:right">' . $result[$dispkeyst]['consumption_stock']['brand'] . '</th>';
                    } else if ($mast == 1) {
                        $str .= '<td align="right">' . $result[$dispkeyst]['consumption_stock']['quality_id'] . '</td>';
                    } else if ($mast == 2) {
                        $str .= '<td align="right">' . $result[$dispkeyst]['consumption_stock']['dimension'] . '</td>';
                    } else {
                        $str .= '<td align="right">' . $result[$dispkeyst]['consumption_stock']['color'] . '</td>';
                    }
                    $dispkeyst += $countmixing;
                }

            }
            if ($mast == 0) {
                $str .= '<td align="right">Total</td>';
            } else {
                $str .= '<td></td>';
            }

            $str .= '</tr>';

        }

        $index = 0;
        for ($j = 0; $j < $countmixing; $j++) {
            $displaykey = $index;
            $str .= '<tr>';
            for ($i = 0; $i < $loop; $i++) {
                $displaykey;
                if ($i == 0) {

                    $str .= '<td width="200px">' . $result[$displaykey]['consumption_stock']['material_id'] . '</td>';
                }
                $str .= '<td align="right">' . number_format($result[$displaykey]['consumption_stock']['quantity'], 2) . '</td>';
                $displaykey += $countmixing;
            }
            $str .= '<th style="text-align:right;">' . number_format($resulttot[$j][0]['TOTAL'], 2) . '</th>';
            $index = $index + 1;
            $str .= '</tr>';
        }
        $mygrtot = 0;
        $disptot = 0;
        for ($tot = 0; $tot <= $loop; $tot++) {
            if ($tot == 0) {
                $str .= '<td width="200px">Total</td>';
            } else {
                $mygrtot += $result[$disptot]['consumption_stock']['total'];
                $str .= '<td align="right">' . number_format($result[$disptot]['consumption_stock']['total'], 2) . '</td>';
            }
            echo $disptot += $countmixing - 1;
        }
        $str .= '<td align="right">' . number_format($mygrtot, 2) . '</td>';


        $this->set('str1', $str);


        $this->layout = '/pdf/default';

        $this->render('/pdf/my_pdf_view');


    }

    public function download_consumptionpdf()
    {
        //$data=$this->request->data['filter']['filter1'];
        //echo $data;
        $this->viewClass = 'Media';
        $name = 'consumption';
        $params = array(
            'id' => "consumption.pdf",
            'name' => 'consumption',
            'download' => false,
            'extension' => 'pdf',
            'path' => APP . 'files/pdf' . DS
        );
        $this->set($params);

    }

    public function date_fetch()
    {
        $this->request->onlyAllow('ajax');

        $id = $_POST['city_id'];
        $this->Session->write('date', $id);
//$this->create_mixingpdf();

    }

    public function monthly_report()
    {
        ob_end_clean();
//$d= array("orange", "banana");
        $d = array();
        $startday = "01";
        $endday = "30";
        $getmonth = $_POST['id'];
        $date = $this->ConsumptionStock->query("select nepalidate from consumption_stock order by consumption_id desc limit 1");
        foreach ($date as $n):
            $nepdte = $n['consumption_stock']['nepalidate'];
        endforeach;
        $nepdate = explode('-', $nepdte);
        $year = $nepdate[0];


        $startmonth = $year . "-" . $getmonth . "-" . $startday;
        $endmonth = $year . "-" . $getmonth . "-" . $endday;
        //echo $startmonth;
        //echo $endmonth;
        $this->set('date1', $endmonth);
        $users = $this->User->find('all');
        $this->set(compact('users'));
        $this->loadModel('ConsumptionStock');
        //$raws=$this->ConsumptionStock->query("SELECT material_id,sum(quantity) as sum from consumption_stock where material_id!='Scrap Unprinted' and material_id !='Scrap Laminated' and material_id !='Scrap Printed' and material_id !='Scrap Plain' and material_id!='Scrap CT' and date BETWEEN '$startmonth' and '$endmonth' group by material_id order by consumption_id");
        $raws = $this->ConsumptionStock->query("SELECT material_id, sum(quantity) as total,sum( quantity ) *100 / (SELECT sum( quantity )  FROM polychem.consumption_stock


where material_id<>'Bought Scrap' and material_id<>'Scrap Laminated' and material_id<>'Scrap  Printed'

and material_id<>'Scrap Unprinted' and material_id<>'Scrap Plain' and material_id<>'Scrap CT' and nepalidate BETWEEN '2072-04-01'

and '2072-04-30') as rawpercentage FROM polychem.consumption_stock where material_id<>'Bought Scrap' and material_id<>'Scrap Laminated' and material_id<>'Scrap Printed'

and material_id<>'Scrap Unprinted' and material_id<>'Scrap Plain' and material_id<>'Scrap CT' and nepalidate BETWEEN '2072-04-01'

and '2072-04-30' GROUP BY material_id ORDER BY consumption_id");

        $total = $this->ConsumptionStock->query("SELECT  sum(quantity) as total FROM polychem.consumption_stock
where material_id<>'Bought Scrap' and material_id<>'Scrap Laminated' and material_id<>'Scrap Printed'
and material_id<>'Scrap Unprinted' and material_id<>'Scrap Plain' and material_id<>'Scrap CT' and nepalidate BETWEEN '$startmonth' and '$endmonth'");
        foreach ($total as $t):
            $totalinput = $t['0']['total'];
        endforeach;

        $scrap = $this->ConsumptionStock->query("SELECT sum(quantity) as total FROM polychem.consumption_stock where material_id='Bought Scrap' OR material_id='Scrap Laminated' OR material_id='Scrap Printed' OR material_id='Scrap Unprinted' OR material_id='Scrap Plain' OR material_id='Scrap CT' and nepalidate BETWEEN '$startmonth' and '$endmonth' ");

        foreach ($scrap as $sc):
            $totalscrap = $sc['0']['total'];
        endforeach;

        echo "<table>";
        foreach ($raws as $r):
            echo "<tr>";
            echo "<td align='left'>" . $r['consumption_stock']['material_id'] . "</td>";
            echo "<td align='right'>&nbsp;&nbsp;" . number_format($r['0']['total'], 2) . "</td>";
            echo "<td align='right'>&nbsp;&nbsp;&nbsp;" . number_format($r['0']['rawpercentage'], 2) . "%</td>";

            echo "</tr>";
        endforeach;
        if (empty($raws)) {
            echo "<tr>";
            echo "<td><strong>Total</strong></td>";
            echo "<td align='right'>" . number_format(0, 2) . "</td>";
            echo "</tr>";
            echo "<tr>";
            echo "<td><strong>Total Scrap</strong></td>";
            echo "<td align='right'>" . number_format(0, 2) . "</td>";
            echo "</tr>";
            echo "<tr>";
            echo "<td><strong>Total Input</strong></td>";
            echo "<td align='right'>" . number_format(0, 2) . "</td>";
            echo "</tr>";

            echo "</table>";
        } else {
            echo "<tr>";
            echo "<td><strong>Total</strong></td>";
            echo "<td align='right'>" . number_format($totalinput, 2) . "</td>";
            echo "</tr>";
            echo "<tr>";
            echo "<td><strong>Total Scrap</strong></td>";
            echo "<td align='right'>" . number_format($totalscrap, 2) . "</td>";
            echo "</tr>";
            echo "<tr>";
            echo "<td><strong>Total Input</strong></td>";
            echo "<td align='right'>" . number_format($totalinput + $totalscrap, 2) . "</td>";
            echo "</tr>";

            echo "</table>";
        }
    }


    public function viewpdf()
    {
        $this->loadModel('MixingMaterial');
// increase memory limit in PHP
        //ini_set('memory_limit', '256M');
        $this->ConsumptionStock->recursive = 0;
        $this->paginate = array('limit' => 128);
        $this->set('consumptionStocks', $this->Paginator->paginate());
        $option1 = $this->MixingMaterial->find('list', array('fields' => array('name', 'name')));
        $this->set('mixingraws', $option1);
    }

    public function edit_data($st, $nd)
    {
        //$start=$id;
        // 	$end=($id+32)-1;
        //$this->set('datas',$this->ConsumptionStock->query("select * from consumption_stock where consumption_id between $start and $end"));
    }


}