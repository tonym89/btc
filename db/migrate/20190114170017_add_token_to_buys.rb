class AddTokenToBuys < ActiveRecord::Migration[5.2]
  def change
    add_column :buys, :token, :integer
  end
end
