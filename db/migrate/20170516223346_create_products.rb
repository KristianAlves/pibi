class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.references :subcategory, index: true, foreign_key: true
      t.references :brand, index: true, foreign_key: true
      t.references :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
