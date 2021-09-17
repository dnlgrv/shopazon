class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :token, null: false

      t.timestamps
    end
  end
end
