class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :goods_name

      t.timestamps null: false
    end
  end
end
