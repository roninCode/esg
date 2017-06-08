class CreateProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :proposals do |t|
      t.integer :risk_model_id
      t.integer :client_id
      t.integer :advisor_id
      t.string :status
      t.string :pdf
      t.integer :questionnaire_id

      t.timestamps
    end
  end
end
