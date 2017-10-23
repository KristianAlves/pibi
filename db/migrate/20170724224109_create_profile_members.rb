class CreateProfileMembers < ActiveRecord::Migration
  def change
    create_table :profile_members do |t|
      t.string :company_name
      t.string :fantasy_name
      t.string :street
      t.string :city
      t.string :cnpj
      t.string :phone
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
