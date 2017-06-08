class CreateQuestionnaires < ActiveRecord::Migration[5.0]
  def change
    create_table :questionnaires do |t|
      t.integer :client_id
      t.integer :question_1
      t.integer :question_2
      t.integer :question_3
      t.integer :question_4
      t.integer :question_5
      t.integer :question_6
      t.integer :question_7
      t.integer :question_8
      t.integer :question_9
      t.integer :question_10
      t.integer :question_11
      t.decimal :average
      t.integer :advisor_id

      t.timestamps
    end
  end
end
