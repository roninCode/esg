class ChangePasswordInClient < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :password, :string
    add_column :clients, :password_digest, :string
  end
end
