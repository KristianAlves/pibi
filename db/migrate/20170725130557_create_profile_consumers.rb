class CreateProfileConsumers < ActiveRecord::Migration
  def change
    create_table :profile_consumers do |t|
      t.string :name
      t.string :cpf
      t.string :phone
      t.references :consumer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
