class AddZipCodeToAdvisors < ActiveRecord::Migration[5.0]
  def change
    add_column :advisors, :zip_code, :string
  end
end