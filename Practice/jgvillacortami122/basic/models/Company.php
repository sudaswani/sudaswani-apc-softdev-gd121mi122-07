<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "company".
 *
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property string $email
 *
 * @property Branch[] $branches
 */
class Company extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'company';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'description', 'email'], 'required'],
            [['description'], 'string'],
            [['name', 'email'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'description' => 'Description',
            'email' => 'Email',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBranches()
    {
        return $this->hasMany(Branch::className(), ['company_id' => 'id']);
    }
}
