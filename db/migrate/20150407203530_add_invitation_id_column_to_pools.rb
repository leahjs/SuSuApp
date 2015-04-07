class AddInvitationIdColumnToPools < ActiveRecord::Migration
  def change
    add_column :pools, :invitation_id, :integer
  end
end
