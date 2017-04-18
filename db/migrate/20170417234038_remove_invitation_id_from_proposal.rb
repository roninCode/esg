class RemoveInvitationIdFromProposal < ActiveRecord::Migration[5.0]
  def change
    remove_column :proposals, :invitation_id, :integer
  end
end
