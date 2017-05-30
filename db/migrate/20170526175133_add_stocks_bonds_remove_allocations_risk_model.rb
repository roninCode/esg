class AddStocksBondsRemoveAllocationsRiskModel < ActiveRecord::Migration[5.0]
  def change
    add_column :risk_models, :stocks, :string
    add_column :risk_models, :bonds, :string
    remove_column :risk_models, :allocations, :string
  end
end
