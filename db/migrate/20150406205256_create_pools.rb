class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :name
      t.integer :pool_amount
      t.integer :life_raft
      t.integer :cycle
      t.integer :member_limit
      t.string :status
      t.integer :reciever

      t.timestamps null: false
    end
  end
end
