<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "doktorlar".
 *
 * @property int $id
 * @property string $fio
 * @property string $manzil
 */
class Doktorlar extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'doktorlar';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fio', 'manzil'], 'required'],
            [['manzil'], 'string'],
            [['fio'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'fio' => Yii::t('app', 'Fio'),
            'manzil' => Yii::t('app', 'Manzil'),
        ];
    }
}
