<?php
App::uses('AppController', 'Controller');

/**
 * CalenderScraps Controller
 *
 * @property CalenderScrap $CalenderScrap
 * @property PaginatorComponent $Paginator
 */
class CalenderScrapsController extends AppController
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
        $this->CalenderScrap->recursive = 0;
        $this->set('calenderScraps', $this->Paginator->paginate());
//		$date1 = 0;
//		$this->loadModel('ConsumptionStock');
//		$d = $this->ConsumptionStock->query("SELECT nepalidate from consumption_stock order by nepalidate desc limit 1");
//		foreach ($d as $dt):
//			$date = $dt['consumption_stock']['nepalidate'];
//		endforeach;
//		$scrapdate = $this->CalenderCpr->query("select date from calender_cpr order by date limit 1 ");
//		$sc = isset($scrapdate[0]['calender_cpr']['date'])?$scrapdate[0]['calender_cpr']['date']:'NO-DATE';
//		$this->set('scd', $sc);
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
        if (!$this->CalenderScrap->exists($id)) {
            throw new NotFoundException(__('Invalid calender scrap'));
        }
        $options = array('conditions' => array('CalenderScrap.' . $this->CalenderScrap->primaryKey => $id));
        $this->set('calenderScrap', $this->CalenderScrap->find('first', $options));
    }

    /**
     * add method
     *
     * @return void
     */
    public function add()
    {
        $date1 = 0;
        $this->loadModel('ConsumptionStock');
        $this->loadModel('CalenderCpr');
        $d = $this->ConsumptionStock->query("SELECT nepalidate from consumption_stock order by nepalidate desc limit 1");
        foreach ($d as $dt):
            $date = $dt['consumption_stock']['nepalidate'];
        endforeach;
        $scrapdate = $this->CalenderCpr->query("select date from calender_cpr order by date limit 1 ");
        $sc = isset($scrapdate[0]['calender_cpr']['date']) ? $scrapdate[0]['calender_cpr']['date'] : 'NO-DATE';
        $this->set('scd', $sc);
        if ($this->request->is('post')) {
            $this->CalenderScrap->create();
            if ($this->CalenderScrap->save($this->request->data)) {
                return $this->redirect(array('controller' => 'CalenderScraps', 'action' => 'index'));
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
        if (!$this->CalenderScrap->exists($id)) {
            throw new NotFoundException(__('Invalid calender scrap'));
        }
        if ($this->request->is(array('post', 'put'))) {
            if ($this->CalenderScrap->save($this->request->data)) {
                //return $this->flash(__('The calender scrap has been saved.'), array('action' => 'index'));
                return $this->redirect(array('controller' => 'CalenderCprs', 'action' => 'index'));

            }
        } else {
            $options = array('conditions' => array('CalenderScrap.' . $this->CalenderScrap->primaryKey => $id));
            $this->request->data = $this->CalenderScrap->find('first', $options);
        }
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
        $this->CalenderScrap->id = $id;
        if (!$this->CalenderScrap->exists()) {
            throw new NotFoundException(__('Invalid calender scrap'));
        }
        $this->request->onlyAllow('post', 'delete');
        if ($this->CalenderScrap->delete()) {
            return $this->flash(__('The calender scrap has been deleted.'), array('action' => 'index'));
        } else {
            return $this->flash(__('The calender scrap could not be deleted. Please, try again.'), array('action' => 'index'));
        }
    }
}
