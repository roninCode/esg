class AddAdvisorIdToQuestionnaire < ActiveRecord::Migration[5.0]
  def change
    add_column :questionnaires, :advisor_id, :integer
  end
end
