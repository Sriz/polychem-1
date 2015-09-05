<?php
App::uses('AppController', 'Controller');
App::import('Controller', 'ConvertDates');


class TblConsumptionStocksController extends AppController
{
    public $components = array('Paginator', 'RequestHandler');


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
                'order'=>['id DESC']
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
        return $this->redirect(array('action' => 'index'));
    }
}