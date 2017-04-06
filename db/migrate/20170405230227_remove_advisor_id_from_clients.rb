class RemoveAdvisorIdFromClients < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :advisor_id, :integer
  end
end
