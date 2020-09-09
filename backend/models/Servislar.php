<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "servislar".
 *
 * @property int $id
 * @property string $nomi
 */
class Servislar extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'servislar';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nomi'], 'required'],
            [['nomi'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'nomi' => Yii::t('app', 'Nomi'),
        ];
    }
}
