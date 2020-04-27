class ChangeDoseTypeColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :doses, :type, :type_dose
  end
end
