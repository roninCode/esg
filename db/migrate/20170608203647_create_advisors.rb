class CreateAdvisors < ActiveRecord::Migration[5.0]
  def change
    create_table :advisors do |t|
      t.string :name
      t.string :company
      t.string :phone
      t.string :email
      t.string :password_digest
      t.string :logo
      t.string :zip_code
      t.string :tags

      t.timestamps
    end
  end
end
