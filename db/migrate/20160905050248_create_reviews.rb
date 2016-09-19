class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :good, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
      
      # 投稿を作成時間の降順で並び替える
      t.index [:good_id, :created_at]
    end
  end
end
