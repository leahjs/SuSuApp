class AddStartDateToPool < ActiveRecord::Migration
  def change
    add_column :pools, :start_date, :date
  end
end
