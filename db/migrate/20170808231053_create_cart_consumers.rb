class CreateCartConsumers < ActiveRecord::Migration
  def change
    create_table :cart_consumers do |t|
      t.references :product, index: true, foreign_key: true
      t.string :description
      t.string :quantity, default: 1
      t.timestamps null: false

      t.integer :buyer_id, index: true

    end
    #add_foreign_key :cart_consumers, :consumer, column: :buyer_id, primary_key: "id"
  end
end
