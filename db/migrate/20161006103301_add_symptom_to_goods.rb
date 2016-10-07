class AddSymptomToGoods < ActiveRecord::Migration
  def change
    add_column :goods, :symptom, :string
  end
end
