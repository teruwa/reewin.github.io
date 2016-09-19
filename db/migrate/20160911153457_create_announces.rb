class CreateAnnounces < ActiveRecord::Migration
  def change
    create_table :announces do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
