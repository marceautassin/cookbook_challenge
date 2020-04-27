class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :desc
      t.integer :time_prep
      t.integer :difficulty

      t.timestamps
    end
  end
end
