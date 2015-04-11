class CorrectReceiverColumnInPools < ActiveRecord::Migration
  def change
  	rename_column :pools, :receiver, :receiver_id
  end
end
