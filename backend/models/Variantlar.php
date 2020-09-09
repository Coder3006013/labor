<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "variantlar".
 *
 * @property int $id
 * @property int $servis_id
 * @property string $nomi
 * @property string $narxi
 */
class Variantlar extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'variantlar';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['servis_id', 'nomi', 'narxi'], 'required'],
            [['servis_id'], 'integer'],
            [['nomi'], 'string'],
            [['narxi'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'servis_id' => Yii::t('app', 'Servis ID'),
            'nomi' => Yii::t('app', 'Nomi'),
            'narxi' => Yii::t('app', 'Narxi'),
        ];
    }
}
