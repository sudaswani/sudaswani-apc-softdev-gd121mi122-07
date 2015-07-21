<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "mycomment".
 *
 * @property integer $id
 * @property integer $myaddress_id
 * @property string $atuhor
 * @property string $body
 * @property string $created_at
 *
 * @property Myaddress $myaddress
 */
class Mycomment extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'mycomment';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['myaddress_id', 'atuhor', 'body'], 'required'],
            [['myaddress_id'], 'integer'],
            [['body'], 'string'],
            [['created_at'], 'safe'],
            [['atuhor'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'myaddress_id' => 'Myaddress ID',
            'atuhor' => 'Atuhor',
            'body' => 'Body',
            'created_at' => 'Created At',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getMyaddress()
    {
        return $this->hasOne(Myaddress::className(), ['id' => 'myaddress_id']);
    }
}
