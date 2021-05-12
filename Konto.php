<?php

namespace app\models;
use app\models\Rola;

use Yii;

/**
 * This is the model class for table "konto".
 *
 * @property string $id
 * @property integer $rola_id
 * @property string $imie
 * @property string $nazwisko
 * @property string $email
 * @property string $login
 * @property string $haslo
 */
class Konto extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'konto';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['rola_id', 'imie', 'nazwisko', 'email', 'login', 'haslo'], 'required'],
            [['rola_id'], 'integer'],
            [['imie'], 'string', 'max' => 20],
			[['imie'], 'match', 'pattern' => "(^[A-ZĄĘŻŹĆŁÓŚŃ][a-ząężźćłóśń][a-ząężźćłóśń]+$)"],
            [['nazwisko'], 'string', 'max' => 30],
			[['nazwisko'], 'match', 'pattern' => "(^[A-ZĄĘŻŹĆŁÓŚŃ][a-ząężźćłóśń][a-ząężźćłóśń]+$)"],
            [['email', 'login', 'haslo'], 'string', 'max' => 50],
			[['email'], 'match', 'pattern' => "([a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$)"],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'rola_id' => 'Rola',
            'imie' => 'Imie',
            'nazwisko' => 'Nazwisko',
            'email' => 'Email',
            'login' => 'Login',
            'haslo' => 'Haslo',
        ];
    }
	
	public function getRola()
	{
		return $this->hasOne(rola::className(),['id' => 'rola_id']);
	}
}
