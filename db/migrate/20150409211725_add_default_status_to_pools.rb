class AddDefaultStatusToPools < ActiveRecord::Migration
  def change
    change_column_default :pools, :status, "open"
  end
end
