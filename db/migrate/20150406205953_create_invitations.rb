class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.belongs_to :pool, index: true
      t.integer :guest
      t.string :confirmation_status

      t.timestamps null: false
    end
    add_foreign_key :invitations, :pools
  end
end
