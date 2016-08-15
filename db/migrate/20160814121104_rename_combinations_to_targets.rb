class RenameCombinationsToTargets < ActiveRecord::Migration
  def change
    rename_table :nquiries, :inquiry  # この行を追加
  end
end
