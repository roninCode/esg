class CreateInvitations < ActiveRecord::Migration[5.0]
  def change
    create_table :invitations do |t|
      t.integer :advisor_id
      t.integer :client_id
      t.string :status

      t.timestamps
    end
  end
end
