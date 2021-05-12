<?php

namespace app\models;
use app\models\Konto;
use app\models\Zestaw;

use Yii;

/**
 * This is the model class for table "wynik".
 *
 * @property string $id
 * @property integer $konto_id
 * @property integer $zestaw_id
 * @property string $data_wyniku
 * @property integer $wynik
 */
class Wynik extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'wynik';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['konto_id', 'zestaw_id', 'data_wyniku', 'wynik'], 'required'],
            [['konto_id', 'zestaw_id', 'wynik'], 'integer'],
            [['data_wyniku'], 'safe'],
			[['data_wyniku'], 'myCheckdate'],			
        ];
    }

	public function myCheckdate($attribute,$params)
	{
		if(!$this->hasErrors())
		{
			if(! strtotime($this->{$attribute}))
			{
				$this->addError($attribute,'Data jest nie poprawna.');
			}
		}
	}

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'konto_id' => 'Konto',
            'zestaw_id' => 'Zestaw',
            'data_wyniku' => 'Data Wyniku',
            'wynik' => 'Wynik',
        ];
    }
	
	public function getKonto()
	{
		return $this->hasOne(konto::className(),['id' => 'konto_id']);
	}
	
	public function getZestaw()
	{
		return $this->hasOne(zestaw::className(),['id' => 'zestaw_id']);
	}
}
