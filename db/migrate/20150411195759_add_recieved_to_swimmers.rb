class AddRecievedToSwimmers < ActiveRecord::Migration
  def change
    add_column :swimmers, :recieved, :boolean, default: true
  end
end
