class RemoveInvitationidFromPools < ActiveRecord::Migration
  def change
    remove_column :pools, :invitation_id
  end
end
