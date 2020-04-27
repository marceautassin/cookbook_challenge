class CreateDoses < ActiveRecord::Migration[5.2]
  def change
    create_table :doses do |t|
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.string :type
      t.integer :number

      t.timestamps
    end
  end
end
