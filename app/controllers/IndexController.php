<?php
namespace Vscms\Controllers;

/**
 * Display the default index page.
 */
class IndexController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function indexAction()
    {
        return $this->response->redirect('session/login');
    }

    public function setLanguageAction($language='')
    {
        //Change the language, reload translations if needed
        if ($language == 'en' || $language == 'vi') {
            $this->session->set('language', $language);
            $this->loadMainTrans();
            $this->loadCustomTrans('main');
        }

        //Go to the last place
        $referer = $this->request->getHTTPReferer();
        if (strpos($referer, $this->request->getHttpHost()."/")!==false) {
            return $this->response->setHeader("Location", $referer);
        } else {
            return $this->dispatcher->forward(array('controller' => 'index', 'action' => 'index'));
        }
    }
}
