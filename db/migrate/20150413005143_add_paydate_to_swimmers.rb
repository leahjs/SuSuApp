class AddPaydateToSwimmers < ActiveRecord::Migration
  def change
    add_column :swimmers, :paydate, :date
  end
end
