class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :total
      t.datetime :completed_at
      t.datetime :confirmed_at
      t.datetime :rejected_at
      t.integer :state

      t.timestamps
    end
  end
end
