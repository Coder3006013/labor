<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "bemor".
 *
 * @property int $id
 * @property string $fio
 * @property string $tugilgan_kun
 * @property string $manzil
 * @property string $tel
 * @property string $servislar
 * @property int $doktor_id
 * @property string $kassir
 * @property string $summa
 * @property int $aktiv
 */
class Bemor extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'bemor';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fio', 'tugilgan_kun', 'manzil', 'tel', 'servislar', 'doktor_id', 'kassir', 'summa'], 'required'],
            [['tugilgan_kun'], 'safe'],
            [['manzil', 'servislar'], 'string'],
            [['doktor_id', 'aktiv'], 'integer'],
            [['fio', 'tel', 'kassir'], 'string', 'max' => 255],
            [['summa'], 'string', 'max' => 200],
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
            'tugilgan_kun' => Yii::t('app', 'Tugilgan Kun'),
            'manzil' => Yii::t('app', 'Manzil'),
            'tel' => Yii::t('app', 'Tel'),
            'servislar' => Yii::t('app', 'Servislar'),
            'doktor_id' => Yii::t('app', 'Doktor ID'),
            'kassir' => Yii::t('app', 'Kassir'),
            'summa' => Yii::t('app', 'Summa'),
            'aktiv' => Yii::t('app', 'Aktiv'),
        ];
    }
}
