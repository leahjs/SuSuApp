class AddPaydayDateToSwimmers < ActiveRecord::Migration
  def change
    add_column :swimmers, :payday_date, :datetime
  end
end
