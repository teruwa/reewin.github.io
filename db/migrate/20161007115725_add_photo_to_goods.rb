class AddPhotoToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :photo, :string
    add_column :goods, :page, :string
  end
end
