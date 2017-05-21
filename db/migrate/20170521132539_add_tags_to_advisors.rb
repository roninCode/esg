class AddTagsToAdvisors < ActiveRecord::Migration[5.0]
  def change
    add_column :advisors, :tags, :string
  end
end
