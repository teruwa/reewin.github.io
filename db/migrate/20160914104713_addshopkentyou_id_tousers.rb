class AddshopkentyouIdTousers < ActiveRecord::Migration
  def change
    add_column :users, :shopkentyou_id, :string
  end
end
