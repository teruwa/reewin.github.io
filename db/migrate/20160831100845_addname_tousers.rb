class AddnameTousers < ActiveRecord::Migration
  def change
  add_column :users, :name, :string
  add_column :users, :telephone_number, :string
  add_column :users, :jyuusyo, :string
  add_column :users, :hitokoto_comment, :string
  add_column :users, :profile_comment, :string
  add_column :users, :kentyou_id, :string
  
  change_column_null :users, :name, false
  change_column_null :users, :kentyou_id, false
  end
end
