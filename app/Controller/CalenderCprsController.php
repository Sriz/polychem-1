<?php
App::uses('AppController', 'Controller');

/**
 * CalenderCprs Controller
 *
 * @property CalenderCpr $CalenderCpr
 * @property PaginatorComponent $Paginator
 */
class CalenderCprsController extends AppController
{

    /**
     * Components
     *
     * @var array
     */
    public $components = array('Paginator');

    /**
     * index method
     *
     * @return void
     */
    public function index()
    {
        $date1 = 0;
        $this->loadModel('ConsumptionStock');
        $d = $this->ConsumptionStock->query("SELECT nepalidate from consumption_stock order by nepalidate desc limit 1");
        foreach ($d as $dt):
            $date = $dt['consumption_stock']['nepalidate'];
        endforeach;
        $scrapdate = $this->CalenderCpr->query("select date from calender_cpr order by date limit 1 ");
        $sc = isset($scrapdate[0]['calender_cpr']['date'])?$scrapdate[0]['calender_cpr']['date']:'NO-DATE';
        $this->set('scd', $sc);

        $count=$this->ConsumptionStock->query("select DISTINCT(count(nepalidate)) as count from consumption_stock where inserted=0");
        $this->set('ct',$count);

        $this->loadModel('ConsumptionStock');
        $count=$this->ConsumptionStock->query("select DISTINCT(count(nepalidate)) as count from consumption_stock where inserted=0");
        $this->set('ct',$count);

        $this->Filter->addFilters(
            array(
                'filter1' => array(
                    'CalenderCpr.date' => array('operator' => 'LIKE',
                        'value' => array(
                            'before' => '%', // optional
                            'after' => '%'  // optional
                        )
                    )
                )
            )
        );
        $this->total();

        $this->Filter->setPaginate('order', 'CalenderCpr.date DESC'); // optional
        $this->Filter->setPaginate('limit', 10);              // optional

        // Define conditions
        $this->Filter->setPaginate('conditions', $this->Filter->getConditions());
        $this->set('calenderCprs', $this->paginate());
        if (isset($this->request->data['filter']['filter1'])) {
            $date1 = $this->request->data['filter']['filter1'];
        }

        if ($date1 == 0) {
            //echo $date;exit;
            $this->set('netwt', $this->CalenderCpr->query("SELECT sum(length) as total FROM calender_cpr"));
            $this->set('leng', $this->CalenderCpr->query("SELECT sum(ntwt) as total FROM calender_cpr "));
            $this->set('mxwt', $this->CalenderCpr->query("SELECT sum(REPLACE(total, ',', '')) as total FROM calender_cpr "));
            $sps = $this->CalenderScrap->query("SELECT * FROM calender_scrap where date='$sc'");
            $this->set('scraps', $sps);
            $this->set('du',$this->ConsumptionStock->query("SELECT sum(quantity) as total FROM consumption_stock WHERE material_id='Bought Scrap' and nepalidate='$date'"));
            $query = $this->ConsumptionStock->query("select sum(quantity) as total from consumption_stock where nepalidate='$date'");
            $this->set('total', $query);
            $raws = $this->ConsumptionStock->query("SELECT sum(quantity) as sum from consumption_stock where material_id!='Scrap Unprinted' and material_id !='Scrap Laminated' and material_id !='Scrap Printed' and material_id !='Scrap Plain' and material_id!='Scrap CT' and nepalidate='$date'");
            $this->set('mixingraws', $raws);

            $totalscrap = $this->ConsumptionStock->query("SELECT sum(quantity) as scrap_total from consumption_stock where (material_id='Scrap Laminated' or material_id='Scrap Plain' or material_id='Scrap Printed' or material_id='Scrap Unprinted' or material_id='Scrap CT') and nepalidate='$date'");
            $this->set("scraptotal", $totalscrap);

            //for add and edit btn enable/disable
            $date_calender_scrap = $this->CalenderScrap->query("SELECT date from calender_scrap WHERE id = (SELECT  max(id) FROM calender_scrap)");
            $date_calender_scrap = $date_calender_scrap[0]['calender_scrap']['date'];
            $date_consumption_scrap = $this->CalenderScrap->query("SELECT nepalidate from consumption_stock WHERE consumption_id = (SELECT  max(consumption_id) FROM consumption_stock)");
            $date_consumption_scrap = $date_consumption_scrap [0]['consumption_stock']['nepalidate'];
            $this->set('date_calender', $date_calender_scrap);
            $this->set('date_consumption', $date_consumption_scrap);
        }
        else
        {
//            echo $date1;exit;
            $this->set('du',$this->ConsumptionStock->query("SELECT sum(quantity) as total FROM consumption_stock WHERE material_id='Bought Scrap' and nepalidate='$date1'"));

            $query = $this->ConsumptionStock->query("select sum(quantity) as total from consumption_stock where nepalidate='$date1'");
            $this->set('total', $query);
            $this->loadModel('CalenderScrap');
            $sps = $this->CalenderScrap->query("SELECT * FROM calender_scrap where date='$date1'");
            $this->set('scraps', $sps);

            $dana = $this->ConsumptionStock->query("select sum(quantity) as totdana from consumption_stock where material_id='DANA' and nepalidate='$date1'");
            $this->set('danaused', $dana);

            $raws = $this->ConsumptionStock->query("SELECT sum(quantity) as sum from consumption_stock where material_id!='Scrap Unprinted' and material_id !='Scrap Laminated' and material_id !='Scrap Printed' and material_id !='Scrap Plain' and material_id!='Scrap CT' and nepalidate='$date1'");
            $this->set('mixingraws', $raws);

            $totalscrap = $this->ConsumptionStock->query("SELECT sum(quantity) as scrap_total from consumption_stock where (material_id='Scrap Laminated' or material_id='Scrap Plain' or material_id='Scrap Printed' or material_id='Scrap Unprinted' or material_id='Scrap CT') and nepalidate='$date1'");
            $this->set("scraptotal", $totalscrap);
            //$date=$this->request->data;
            $this->set('netwt', $this->CalenderCpr->query("SELECT sum(length) as total FROM calender_cpr where date='$date1'"));
            $this->set('leng', $this->CalenderCpr->query("SELECT sum(ntwt) as total FROM calender_cpr where date='$date1'"));
            $this->set('mxwt', $this->CalenderCpr->query("SELECT sum(REPLACE(total, ',', '')) as total FROM calender_cpr where date='$date1'"));

            //for add and edit btn enable/disable
            $date_calender_scrap = $this->CalenderScrap->query("SELECT date from calender_scrap WHERE id = (SELECT  max(id) FROM calender_scrap)");
            $date_calender_scrap = $date_calender_scrap[0]['calender_scrap']['date'];
            $date_consumption_scrap = $this->CalenderScrap->query("SELECT nepalidate from consumption_stock WHERE consumption_id = (SELECT  max(consumption_id) FROM consumption_stock)");
            $date_consumption_scrap = $date_consumption_scrap [0]['consumption_stock']['nepalidate'];
            $this->set('date_calender', $date_calender_scrap);
            $this->set('date_consumption', $date_consumption_scrap);
        }

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
        if (!$this->CalenderCpr->exists($id)) {
            throw new NotFoundException(__('Invalid calender cpr'));
        }
        $options = array('conditions' => array('CalenderCpr.' . $this->CalenderCpr->primaryKey => $id));
        $this->set('calenderCpr', $this->CalenderCpr->find('first', $options));
    }

    /**
     * add method
     *
     * @return void
     */
    public function add()
    {
        $this->fetchdata();
        $this->loaddata();
        if ($this->request->is('post')) {
            $this->CalenderCpr->create();
            if ($this->CalenderCpr->saveAll($this->request->data['CalenderCpr'])) {
                $this->ConsumptionStock->query("update consumption_stock set inserted='1'");
                $this->Session->setFlash(__('The calender cpr has been saved.'), array('class' => 'alert alert-success'));
                return $this->redirect(array('action' => 'index/sort:id/direction:desc'));
            } else {
                $this->Session->setFlash(__('The calender cpr could not be saved. Please, try again.'), array('class' => 'alert alert-danger'));
            }
        }
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
        $this->edit_data();
        if (!$this->CalenderCpr->exists($id)) {
            throw new NotFoundException(__('Invalid calender cpr'));
        }
        if ($this->request->is(array('post', 'put'))) {
            if ($this->CalenderCpr->save($this->request->data)) {
                $this->Session->setFlash(__('The calender cpr has been saved.'));
                return $this->redirect(array('action' => 'index/sort:id/direction:desc'));
            } else {
                $this->Session->setFlash(__('The calender cpr could not be saved. Please, try again.'));
            }
        } else {
            $options = array('conditions' => array('CalenderCpr.' . $this->CalenderCpr->primaryKey => $id));
            $this->request->data = $this->CalenderCpr->find('first', $options);
        }
    }

    /**
     * delete method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */

    //disable this function
    public function delete($id = null)
    {
        $this->CalenderCpr->id = $id;
        if (!$this->CalenderCpr->exists()) {
            throw new NotFoundException(__('Invalid calender cpr'));
        }
        $this->request->onlyAllow('post', 'delete');
        if ($this->CalenderCpr->delete()) {
            $this->Session->setFlash(__('The calender cpr has been deleted.'));
        } else {
            $this->Session->setFlash(__('The calender cpr could not be deleted. Please, try again.'));
        }
        return $this->redirect(array('action' => 'index/sort:id/direction:desc'));
    }

    public function fetchdata()
    {

        $this->loadModel('ConsumptionStock');
        $sh = $this->ConsumptionStock->find('list', array('fields' => array('shift', 'shift'), 'order' => 'shift', 'group' => 'shift'));
        $this->set('shift', $sh);
        $tp = $this->ConsumptionStock->find('list', array('fields' => array('quality_id', 'quality_id'), 'order' => 'quality_id', 'group' => 'quality_id'));
        $this->set('type', $tp);
        $bnd = $this->ConsumptionStock->find('list', array('fields' => array('brand', 'brand'), 'order' => 'brand', 'group' => 'brand'));
        $this->set('brand', $bnd);
        $clr = $this->ConsumptionStock->find('list', array('fields' => array('color', 'color'), 'order' => 'color', 'group' => 'color'));
        $this->set('color', $clr);
    }

    public function datafetch()
    {
        $this->request->onlyAllow('ajax');
        $this->loadModel('BaseEmboss');
        $qwt = $this->request->data['id'];
        $tp = $this->request->data['type'];
        $type = $this->BaseEmboss->query("select distinct(Color) from base where Brand='$qwt' and Type='$tp'");
        echo '<option value="null">Please select</option>';
        foreach ($type as $t):

            echo '<option value="' . $t['BaseEmboss']['Color'] . '">' . $t['BaseEmboss']['Color'] . '</option>';

        endforeach;


    }

    public function fetchdimension()
    {
        $this->request->onlyAllow('ajax');
        $this->loadModel('Base');
        $qwt = $this->request->data['id'];
        $tp = $this->request->data['type'];
        $type = $this->Base->query("select distinct(dimension) from base where brand='$qwt' and type='$tp'");
        echo '<option value="null">Please select</option>';
        foreach ($type as $t):

            echo '<option value="' . $t['base']['dimension'] . '">' . $t['base']['dimension'] . '</option>';

        endforeach;


    }

    public function fetchemboss()
    {
        $this->request->onlyAllow('ajax');
        $this->loadModel('BaseEmboss');
        $qwt = $this->request->data['id'];
        $tp = $this->request->data['type'];
        if ($tp == "Base-UT") {
            $type = $this->Base->query("select distinct(Emboss) from baseemboss where Brand='$qwt' and Type='$tp'");
            echo '<option value="null">Please select</option>';
            foreach ($type as $t):

                echo '<option value="' . $t['BaseEmboss']['Emboss'] . '">' . $t['BaseEmboss']['Emboss'] . '</option>';
                //echo $t['base']['embossingUT'];

            endforeach;
        } else if ($tp == "Base-MT") {
            $type = $this->Base->query("select distinct(Emboss) from BaseEmboss where Brand='$qwt' and Type='$tp'");
            echo '<option value="null">Please select</option>';
            foreach ($type as $t):

                echo '<option value="' . $t['BaseEmboss']['Emboss'] . '">' . $t['BaseEmboss']['Emboss'] . '</option>';

            endforeach;
        } else if ($tp == "OT") {
            $type = $this->Base->query("select distinct(Emboss) from BaseEmboss where Brand='$qwt' and Type='$tp'");
            echo '<option value="null">Please select</option>';
            foreach ($type as $t):

                echo '<option value="' . $t['BaseEmboss']['Emboss'] . '">' . $t['BaseEmboss']['Emboss'] . '</option>';

            endforeach;
        } else if ($tp == "Print Film") {
            $type = $this->Base->query("select distinct(Emboss) from BaseEmboss where Brand='$qwt' and Type='$tp'");
            echo '<option value="null">Please select</option>';
            foreach ($type as $t):

                echo '<option value="' . $t['BaseEmboss']['Emboss'] . '">' . $t['BaseEmboss']['Emboss'] . '</option>';

            endforeach;
        } else if ($tp == "Clear Transparent") {
            $type = $this->Base->query("select distinct(Emboss) from BaseEmboss where Brand='$qwt' and Type='$tp'");
            echo '<option value="null">Please select</option>';
            foreach ($type as $t):

                echo '<option value="' . $t['BaseEmboss']['Emboss'] . '">' . $t['BaseEmboss']['Emboss'] . '</option>';

            endforeach;
        } else {
            echo '<option value="null">null</option>';
        }

    }

    public function total()
    {

        $this->loadModel('ConsumptionStock');


        //$this->loadModel('ConsumptionStock');
        $d = $this->ConsumptionStock->query("SELECT nepalidate from consumption_stock order by consumption_id desc limit 1");
        foreach ($d as $dt):
            $date = $dt['consumption_stock']['nepalidate'];
        endforeach;
        $dat = $d['0']['consumption_stock']['nepalidate'];
        //echo ;
        $this->set('dat', $d);

        $query = $this->ConsumptionStock->query("select sum(quantity) as total from consumption_stock where nepalidate='$dat'");
        $this->set('total', $query);
        $this->loadModel('CalenderScrap');
        $sps = $this->CalenderScrap->query("SELECT *
FROM calender_scrap where date='$dat'");
        $this->set('scraps', $sps);

        $dana = $this->ConsumptionStock->query("select sum(quantity) as totdana from consumption_stock where material_id='DANA' and nepalidate='$dat'");
        $this->set('danaused', $dana);

        $raws = $this->ConsumptionStock->query("SELECT sum(quantity) as sum from consumption_stock where material_id!='Scrap Unprinted' and material_id !='Scrap Laminated' and material_id !='Scrap Printed' and material_id !='Scrap Plain' and material_id!='Scrap CT' and nepalidate='$dat'");
        $this->set('mixingraws', $raws);

        $totalscrap = $this->ConsumptionStock->query("SELECT sum(quantity) as scrap_total from consumption_stock where (material_id='Scrap Laminated' or material_id='Scrap Plain' or material_id='Scrap Printed' or material_id='Scrap Unprinted' or material_id='Scrap CT') and nepalidate='$dat'");
        $this->set("scraptotal", $totalscrap);


    }

    public function loaddata()
    {
        $date;

        $this->loadModel('ConsumptionStock');
        $d = $this->ConsumptionStock->query("SELECT nepalidate from consumption_stock order by consumption_id desc limit 1");
        foreach ($d as $dt):
            $date = $dt['consumption_stock']['nepalidate'];
        endforeach;
        $opt = $this->ConsumptionStock->query("SELECT distinct consumption_stock.nepalidate,consumption_stock.uid, BaseEmboss.Emboss, consumption_stock.quality_id, consumption_stock.brand, consumption_stock.dimension, consumption_stock.color, consumption_stock.shift,consumption_stock.total FROM polychem.BaseEmboss BaseEmboss, polychem.consumption_stock consumption_stock WHERE BaseEmboss.Brand = consumption_stock.brand AND BaseEmboss.Dimension = consumption_stock.dimension AND BaseEmboss.Type = consumption_stock.quality_id AND BaseEmboss.Color = consumption_stock.color AND consumption_stock.inserted=0 AND consumption_stock.nepalidate='$date'");
        $this->set('consumptionStocks', $opt);

    }

    public function edit_data()
    {
        $date = date('d-m-Y');
        $this->set('consumptionStocks', $this->CalenderCpr->query("select * from calender_cpr"));
    }
    function time_elapsed($secs){
        if(isset($secs)):
            $bit = [
                'Years' => $secs / 31556926 % 12,
                'Weeks' => $secs / 604800 % 52,
                'Days' => $secs / 86400 % 7,
                'Hours' => $secs / 3600 % 24,
                'Minutes' => $secs / 60 % 60,
                'seconds' => $secs % 60
            ];
            foreach($bit as $k => $v)
                if($v > 0) {
                    $ret[] = $v .' '. $k;
                }
            return join(' ', $ret);
        endif;
    }
    public function create_calenderpdf()
    {
        $this->loadModel('ConsumptionStock');

        //$this->request->onlyAllow('ajax');
        $date = isset($_POST['city_id'])?$_POST['city_id']:Date('Y-m-d');
        $date = '2072-04-01';

        $this->set('today', $date);
        //$date=$this->Session->read('date');
        $raws = $this->ConsumptionStock->query("SELECT sum(quantity) as sum from consumption_stock where material_id!='Scrap Unprinted' and material_id !='Scrap Laminated' and material_id !='Scrap Printed' and material_id !='Scrap Plain' and material_id!='Scrap CT' and nepalidate='$date'");
        $this->set('mixingraws', $raws);
        $query = $this->ConsumptionStock->query("select sum(quantity) as total from consumption_stock where nepalidate='$date'");
        $this->set('total', $query);
        $totalscrap = $this->ConsumptionStock->query("SELECT sum(quantity) as scrap_total from consumption_stock where (material_id='Scrap Laminated' or material_id='Scrap Plain' or material_id='Scrap Printed' or material_id='Scrap Unprinted' or material_id='Scrap CT') and nepalidate='$date'");
        $this->set("scraptotal", $totalscrap);

        //$this->loadModel('Materials');
        $calt = $this->CalenderCpr->query("select *from calender_cpr where date='$date'");
        $this->set('cal', $calt);

        $tot = $this->CalenderCpr->query("select sum(length) as total_length ,sum(ntwt) as total_ntwt from calender_cpr where date='$date'");
        $this->set('totalntlg', $tot);
        $thismonth = substr($date,0,7);

        $tot = $this->CalenderCpr->query("select sum(length) as total_length ,sum(ntwt) as total_ntwt from calender_cpr where date LIKE '%$thismonth%'");
        $this->set('total_to_month', $tot);

        $thisyear = substr($date,0,4);
        $tot = $this->CalenderCpr->query("select sum(length) as total_length ,sum(ntwt) as total_ntwt from calender_cpr where date LIKE '%$thisyear%'");
        $this->set('total_to_year', $tot);
        $this->set('today',$date);

        $this->loadModel('CalenderScrap');
        $sps = $this->CalenderScrap->query("select *from calender_scrap where date='$date'");
        $this->set('scrapsused', $sps);
        $this->loadModel('TimeLoss');

        $time = $this->TimeLoss->query("select * from time_loss where nepalidate='$date' and department_id='calender' order BY TYPE ");
        $this->set('tl', $time);
        //SELECT sum(totalloss_sec) FROM `time_loss` WHERE type='LossHour' && nepalidate='2072-04-14'
        //$date = "2072-04-01";
        $type1 = 'LossHour';
        $time1 = $this->TimeLoss->query("SELECT SUM(totalloss_sec) as ts from time_loss where nepalidate='$date' && department_id='calender' && type='$type1' /*order BY TYPE */");
        $time_elapsed_loss = $this->time_elapsed($time1[0][0]['ts']);
        $this->set('tl_loss', isset($time_elapsed_loss)?$time_elapsed_loss:'0');

        $type2 = 'BreakDown';
        $time2 = $this->TimeLoss->query("SELECT SUM(totalloss_sec) as ts from time_loss where nepalidate='$date' && department_id='calender' && type='$type2' /*order BY TYPE */");
        $time_elapsed_brk = $this->time_elapsed($time2[0][0]['ts']);
        $this->set('tl_break', isset($time_elapsed_brk)?$time_elapsed_brk:'0');

        $dana = $this->ConsumptionStock->query("select sum(quantity) as totdana from consumption_stock where material_id='DANA' and nepalidate='$date'");
        $this->set('danaused', $dana);

        $broughtscrap = $this->ConsumptionStock->query("select sum(quantity) as totbs from consumption_stock where material_id='Bought Scrap' and nepalidate='$date'");
        $this->set('broughtscrap', $broughtscrap);

        //unaccounted loss calculation part
        //unaccounted loss= input-total ntwt-scrap generated
        $unaccountedloss = $this->ConsumptionStock->query("select sum(quantity) as totbs from consumption_stock where material_id='Bought Scrap' and nepalidate='$date'");
        $this->set('unaccountedloss', $unaccountedloss);


        $this->layout = '/pdf/default';

        $this->render('/pdf/calender_reports');


    }
    public function download_calenderpdf()
    {

        $this->viewClass = 'Media';
        $name = "Consumption Report for $date('d-m-Y')";
        $params = array(

            'id' => 'test.pdf',
            'name' => $name,
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
        $this->create_calenderpdf();

    }


}
