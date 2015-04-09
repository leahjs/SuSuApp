class AddLifeguardIdToPools < ActiveRecord::Migration
  def change
    add_column :pools, :lifeguard_id, :integer
  end
end
