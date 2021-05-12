<?php

namespace app\models;
use app\models\Konto;
use app\models\Podkategoria;

use Yii;

/**
 * This is the model class for table "uprawnienia".
 *
 * @property integer $konto_id
 * @property integer $podkategoria_id
 */
class Uprawnienia extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'uprawnienia';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['konto_id', 'podkategoria_id'], 'required'],
            [['konto_id', 'podkategoria_id'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'konto_id' => 'Konto',
            'podkategoria_id' => 'Podkategoria',
        ];
    }
	
	public function getKonto()
	{
		return $this->hasOne(konto::className(),['id' => 'konto_id']);
	}
	
	public function getPodkategoria()
	{
		return $this->hasOne(podkategoria::className(),['id' => 'podkategoria_id']);
	}
}
