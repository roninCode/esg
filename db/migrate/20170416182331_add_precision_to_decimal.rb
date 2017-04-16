class AddPrecisionToDecimal < ActiveRecord::Migration[5.0]
  def change
    remove_column :questionnaires, :average, :decimal, precision: 4, scale: 2
    add_column :questionnaires, :average, :decimal

  end
end
