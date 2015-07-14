<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "branch".
 *
 * @property integer $branch_id
 * @property integer $company_id
 * @property string $branch_name
 * @property string $branch_email
 *
 * @property Company $company
 */
class Branch extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'branch';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['company_id', 'branch_name', 'branch_email'], 'required'],
            [['company_id'], 'integer'],
            [['branch_name'], 'string', 'max' => 100],
            [['branch_email'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'branch_id' => 'Branch ID',
            'company_id' => 'Company ID',
            'branch_name' => 'Branch Name',
            'branch_email' => 'Branch Email',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCompany()
    {
        return $this->hasOne(Company::className(), ['id' => 'company_id']);
    }
}
