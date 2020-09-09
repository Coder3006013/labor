<?php

namespace backend\moduls\hisob\controllers;

use yii\web\Controller;
use yii\db\Connection;

/**
 * Default controller for the `hisob` module
 */
class DefaultController extends Controller
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
    	$bemor = Yii::$app->db->createCommand("SELECT *FROM bemor")->queryAll();
    	
        return $this->render('index');
    }
}
