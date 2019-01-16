class AddWalletToBuys < ActiveRecord::Migration[5.2]
  def change
    add_column :buys, :wallet, :string
  end
end
