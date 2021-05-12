<?php

namespace app\models;
use app\models\Konto;
use app\models\Jezyk;
use app\models\Podkategoria;

use Yii;

/**
 * This is the model class for table "zestaw".
 *
 * @property string $id
 * @property integer $konto_id
 * @property integer $jezyk1_id
 * @property integer $jezyk2_id
 * @property integer $podkategoria_id
 * @property string $nazwa
 * @property string $zestaw
 * @property integer $ilosc_slowek
 * @property string $data_dodania
 * @property string $data_edycji
 */
class Zestaw extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'zestaw';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['konto_id', 'jezyk1_id', 'jezyk2_id', 'podkategoria_id', 'nazwa', 'zestaw', 'ilosc_slowek', 'data_dodania'], 'required'],
            [['konto_id', 'jezyk1_id', 'jezyk2_id', 'podkategoria_id', 'ilosc_slowek'], 'integer'],
            [['zestaw'], 'string'],
            [['data_dodania', 'data_edycji'], 'safe'],
			[['data_dodania'], 'myCheckdate'],	
			[['data_edycji'], 'myCheckdate'],	
            [['nazwa'], 'string', 'max' => 200],
			[['nazwa'], 'match', 'pattern' => "(^[A-ZĄĘŻŹĆŁÓŚŃ][a-ząężźćłóśń][a-ząężźćłóśń]+$)"],
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
            'jezyk1_id' => 'Jezyk1',
            'jezyk2_id' => 'Jezyk2',
            'podkategoria_id' => 'Podkategoria',
            'nazwa' => 'Nazwa',
            'zestaw' => 'Zestaw',
            'ilosc_slowek' => 'Ilosc Slowek',
            'data_dodania' => 'Data Dodania',
            'data_edycji' => 'Data Edycji',
        ];
    }
	
	public function getKonto()
	{
		return $this->hasOne(konto::className(),['id' => 'konto_id']);
	}
	
    public function getJezyk1()
    {
        return $this->hasOne(jezyk::className(), ['id' => 'jezyk1_id']);
    }
    
    public function getJezyk2()
    {
        return $this->hasOne(jezyk::className(), ['id' => 'jezyk2_id']);
    }
	
	public function getPodkategoria()
	{
		return $this->hasOne(podkategoria::className(),['id' => 'podkategoria_id']);
	}
}
