class AddPhotoToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :photo, :string
  end
end
