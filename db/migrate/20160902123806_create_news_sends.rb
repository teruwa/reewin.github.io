class CreateNewsSends < ActiveRecord::Migration
  def change
    create_table :news_sends do |t|
      t.string :news_title
      t.string :news_body
      t.string :news_point

      t.timestamps null: false
    end
  end
end
