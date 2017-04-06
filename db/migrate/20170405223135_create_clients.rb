class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :password
      t.integer :risk_tolerance
      t.integer :advisor_id

      t.timestamps
    end
  end
end
