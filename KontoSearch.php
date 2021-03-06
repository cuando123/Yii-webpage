<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Konto;

/**
 * KontoSearch represents the model behind the search form about `app\models\Konto`.
 */
class KontoSearch extends Konto
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'rola_id'], 'integer'],
            [['imie', 'nazwisko', 'email', 'login', 'haslo'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Konto::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'rola_id' => $this->rola_id,
        ]);

        $query->andFilterWhere(['like', 'imie', $this->imie])
            ->andFilterWhere(['like', 'nazwisko', $this->nazwisko])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'login', $this->login])
            ->andFilterWhere(['like', 'haslo', $this->haslo]);

        return $dataProvider;
    }
}
