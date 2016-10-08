class AddTextToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :text, :string
  end
end
