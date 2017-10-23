class CreateProfileMembers < ActiveRecord::Migration
  def change
    create_table :profile_members do |t|
      t.string :company_name
      t.string :fantasy_name
      t.string :street
      t.string :city
      t.string :cnpj, :limit => 18
      t.string :phone, :limit => 40
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
