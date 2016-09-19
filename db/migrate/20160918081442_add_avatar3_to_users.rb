class AddAvatar3ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar3, :string
  end
end
