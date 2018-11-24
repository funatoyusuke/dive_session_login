class AddIndexToUserEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :uesrs, :email, unique: true
  end
end
