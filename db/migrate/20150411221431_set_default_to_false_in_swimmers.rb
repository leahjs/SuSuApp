class SetDefaultToFalseInSwimmers < ActiveRecord::Migration
  def change
    change_column_default :swimmers, :recieved, false
  end
end
