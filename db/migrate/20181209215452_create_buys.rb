class CreateBuys < ActiveRecord::Migration[5.2]
  def change
    create_table :buys do |t|
      t.references :user, foreign_key: true
      t.float :quantity
      t.float :price
      t.integer :status

      t.timestamps
    end
  end
end
