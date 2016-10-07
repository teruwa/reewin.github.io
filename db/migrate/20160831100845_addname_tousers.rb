class AddnameTousers < ActiveRecord::Migration
  def change
  add_column :users, :name, :string , null: false
  add_column :users, :telephone_number, :string,null: false
  add_column :users, :jyuusyo, :string,null: false
  add_column :users, :hitokoto_comment, :string,null: false
  add_column :users, :profile_comment, :string,null: false
  add_column :users, :kentyou_id, :string,null: false
  end
end
