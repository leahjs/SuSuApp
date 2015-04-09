class AddDefaultToInvitation < ActiveRecord::Migration
  def change
    change_column_default :invitations, :confirmation_status, 'pending'
  end
end
