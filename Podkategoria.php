<?php

namespace app\models;
use app\models\Kategoria;
use Yii;

/**
 * This is the model class for table "podkategoria".
 *
 * @property string $id
 * @property integer $kategoria_id
 * @property string $nazwa
 * @property string $opis
 * @property resource $obrazek
 */
class Podkategoria extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'podkategoria';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['kategoria_id', 'nazwa', 'opis'], 'required'],
            [['kategoria_id'], 'integer'],
            [['opis', 'obrazek'], 'string'],
            [['nazwa'], 'string', 'max' => 50],
			[['nazwa'], 'match', 'pattern' => "(^[A-ZĄĘŻŹĆŁÓŚŃ][a-ząężźćłóśń][a-ząężźćłóśń]+$)"],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'kategoria_id' => 'Kategoria',
            'nazwa' => 'Nazwa',
            'opis' => 'Opis',
            'obrazek' => 'Obrazek',
        ];
    }
	
	public function getKategoria()
	{
		return $this->hasOne(kategoria::className(),['id' => 'kategoria_id']);
	}
}
