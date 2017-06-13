class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :title, limit: 60

      t.timestamps null: false
    end
  end
end
