class CreateNquiries < ActiveRecord::Migration
  def change
    create_table :nquiries do |t|

      t.timestamps null: false
    end
  end
end