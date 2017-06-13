# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Cadastrando as Categorias..."

categories = [ "Material Escolar",
                        "Escritório",
                        "Brinquedo",
                        "Papelaria"]

categories.each do |category|
  Category.find_or_create_by(description: category)
end

puts "Categorias cadastradas com sucesso"

##################################

puts "Cadastrando ADMINISTRADOR Padrão..."

      Admin.create!(
            email: "admin@admin.com",
            password: "123456",
            password_confirmation: "123456",
      )

puts "ADMINISTRADOR Cadastrado com Sucesso!"

####################################

puts "Cadastrando MEMBRO Padrão..."

      member = Member.new(
            email: "membro@membro.com",
            password: "123456",
            password_confirmation: "123456"
            )
        member.save!

puts "MEMBRO Cadastrado com Sucesso!"