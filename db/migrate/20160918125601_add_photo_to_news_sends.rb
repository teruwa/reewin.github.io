class AddPhotoToNewsSends < ActiveRecord::Migration
  def change
    add_column :news_sends, :photo, :string
  end
end
