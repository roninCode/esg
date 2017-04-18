class RemoveAllocationsAndAddStocksBondsToRiskModels < ActiveRecord::Migration[5.0]
  def change
      remove_column :risk_models, :allocations, :string
      add_column :risk_models, :stocks, :integer
      add_column :risk_models, :bonds, :integer
  end
end
