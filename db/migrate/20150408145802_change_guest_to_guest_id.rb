class ChangeGuestToGuestId < ActiveRecord::Migration
  def change
    rename_column :invitations, :guest, :guest_id
  end
end
