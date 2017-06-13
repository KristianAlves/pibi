class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :title
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
