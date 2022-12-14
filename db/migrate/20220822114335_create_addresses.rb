class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
