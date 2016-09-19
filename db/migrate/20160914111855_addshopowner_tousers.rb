class AddshopownerTousers < ActiveRecord::Migration
  def change
    add_column :users, :shopowner, :boolean
  end
end
