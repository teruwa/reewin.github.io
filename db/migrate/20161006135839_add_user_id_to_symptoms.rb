class AddUserIdToSymptoms < ActiveRecord::Migration
  def change
    add_column :symptoms, :User_id, :integer
  end
end
