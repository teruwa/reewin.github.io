class DropTableNquiries < ActiveRecord::Migration
  def change
    drop_table :nquiries
  end
end
