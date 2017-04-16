class AddAverageToQuestionnaire < ActiveRecord::Migration[5.0]
  def change
    add_column :questionnaires, :average, :decimal, precision: 4, scale: 2
  end
end
