class ChageShopownerToUsers < ActiveRecord::Migration
  def change
    change_column :users, :shopowner, :boolean, null:false, default:false
  end
end
