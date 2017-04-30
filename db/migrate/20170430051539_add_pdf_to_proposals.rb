class AddPdfToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :proposals, :pdf, :string
  end
end
