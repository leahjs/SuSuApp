class CreateSwimmers < ActiveRecord::Migration
  def change
    create_table :swimmers do |t|
      t.belongs_to :pool, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :swimmers, :pools
    add_foreign_key :swimmers, :users
  end
end
