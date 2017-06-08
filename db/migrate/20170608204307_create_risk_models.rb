class CreateRiskModels < ActiveRecord::Migration[5.0]
  def change
    create_table :risk_models do |t|
      t.string :name
      t.integer :risk_level
      t.string :description
      t.string :companies
      t.string :etfs
      t.integer :stocks
      t.integer :bonds

      t.timestamps
    end
  end
end
