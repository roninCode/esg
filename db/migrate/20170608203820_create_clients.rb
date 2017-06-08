class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.integer :risk_tolerance
      t.string :password_digest

      t.timestamps
    end
  end
end
