class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.references :cake, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :total

      t.timestamps
    end
  end
end
