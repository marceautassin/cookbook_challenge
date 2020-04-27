class ChangeNameColumnDesc < ActiveRecord::Migration[5.2]
  def change
    rename_column :ingredients, :desc, :category
  end
end
