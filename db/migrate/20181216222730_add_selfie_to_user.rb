class AddSelfieToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :selfie, :string
  end
end
