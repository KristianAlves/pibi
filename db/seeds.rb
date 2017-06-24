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

puts "Categorias cadastradas com sucesso!"

##################################

puts "Cadastrando Subcategorias..."

subcategories = [ "Borracha",
                             "Apontador",
                             "Calculadora",
                             "Carrinho",
                             "Boneca",
                             "Papel A4"]

subcategories.each do |subcategory|
  Subcategory.create!(title: subcategory, category: Category.all.sample)
end

puts "Subcategorias cadastradas com sucesso!"

##################################

puts "Cadastrando ADMINISTRADOR Padrão..."

      Admin.create!(
            email: "admin@admin.com",
            password: "123456",
            password_confirmation: "123456",
      )

puts "ADMINISTRADOR Cadastrado com Sucesso!"

####################################

puts "Cadastrando Pessoa Jurídica Padrão..."

      member = Member.new(
            email: "membro@membro.com",
            password: "123456",
            password_confirmation: "123456"
            )
        member.save!

puts "MEMBRO Cadastrado com Sucesso!"

####################################

puts "Cadastrando Pessoa Física Padrão..."

      consumer = Consumer.new(
            email: "consumer@consumer.com",
            password: "123456",
            password_confirmation: "123456"
            )
        consumer.save!

puts "Pessoa Física Cadastrada com Sucesso!"

####################################


puts "Cadastrando MARCAS..."

      10.times do
      Brand.create!(
        title: Faker::Company.name
        )
    end

puts "MARCAS Cadastradas com Sucesso!"

####################################

puts "Cadastrando PRODUTOS..."

      100.times do
      Product.create!(
        title: Faker::Lorem.word,
        description: LeroleroGenerator.sentence,
        subcategory: Subcategory.all.sample,
        brand: Brand.all.sample,
        admin: Admin.all.sample,
        picture: File.new(Rails.root.join('public', 'templates', 'image-for-products', "#{Random.rand(9)}.jpg"), 'r')
        )
    end

puts "PRODUTOS Cadastrados com Sucesso!"



