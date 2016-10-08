class AddAvatar2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar2, :string
    add_column :users, :avatar, :string
  end
end
