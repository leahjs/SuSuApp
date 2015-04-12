class ChangeRecievertoRecieverId < ActiveRecord::Migration
  def change
    rename_column :pools, :reciever, :reciever_id
  end
end
