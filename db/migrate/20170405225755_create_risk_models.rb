class CreateRiskModels < ActiveRecord::Migration[5.0]
  def change
    create_table :risk_models do |t|
      t.string :name
      t.integer :risk_level
      t.text :description
      t.string :allocations
      t.string :companies
      t.string :etfs

      t.timestamps
    end
  end
end
