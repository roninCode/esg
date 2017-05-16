class AddQuestionnaireIdToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :proposals, :questionnaire_id, :integer
  end

end
