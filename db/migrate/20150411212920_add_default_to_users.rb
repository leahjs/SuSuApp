class AddDefaultToUsers < ActiveRecord::Migration
  def change
    change_column_default :users, :credibility, 500
  end
end
