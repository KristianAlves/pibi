class CreateProfileConsumers < ActiveRecord::Migration
  def change
    create_table :profile_consumers do |t|
      t.string :name
      t.integer :cpf, :limit => 11
      t.string :phone, :limit => 40
      t.references :consumer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
