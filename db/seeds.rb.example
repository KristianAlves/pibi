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
  Category.friendly.find_or_create_by(description: category)
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
            password_confirmation: "123456"
      )

puts "ADMINISTRADOR Cadastrado com Sucesso!"

####################################

puts "Cadastrando Pessoa Jurídica Padrão..."

      member = Member.new(
            email: "membro@membro.com",
            password: "123456",
            password_confirmation: "123456"
            )
      member.build_profile_member

      member.profile_member.company_name = "Comercial Pibi Ltda"
      member.profile_member.fantasy_name = "PIBI"
      member.profile_member.cnpj = "79017752000115"
      member.profile_member.street = "Rua Victor Rosemberb, 384"
      member.profile_member.city = "Jaraguá do Sul"
      member.profile_member.phone = "3370-8822"

      member.save!

puts "MEMBRO Cadastrado com Sucesso!"

####################################

puts "Cadastrando Pessoa Física Padrão..."

      consumer = Consumer.new(
            email: "consumer@consumer.com",
            password: "123456",
            password_confirmation: "123456"
            )
      consumer.build_profile_consumer

      consumer.profile_consumer.name = "Kristian Alves da Silva"
      consumer.profile_consumer.cpf = "05367537928"
      consumer.profile_consumer.phone = "3370-8822"

      consumer.save!

puts "Pessoa Física Cadastrada com Sucesso!"

####################################


puts "Cadastrando MARCAS..."

      4.times do
      Brand.create!(
        title: Faker::Company.name,
        picture: File.new(Rails.root.join('public', 'templates', 'imagens', "#{Random.rand(4)}.png"), 'r')
        )
    end

puts "MARCAS Cadastradas com Sucesso!"

####################################

puts "Cadastrando BANNERS..."

  5.times do
    Banner.create!(
      title: Faker::Commerce.department,
      picture: File.new(Rails.root.join('public', 'templates', 'imagens', "#{Random.rand(4)}.png"), 'r')
      )
  end

puts "BANNERS Cadastrados com Sucesso!"

####################################

puts "Cadastrando LOGO..."

      logo = Logo.new(
            title: 'Pibi',
            picture: File.new(Rails.root.join('public', 'templates', 'imagens', '1.png'), 'r')
      )
      logo.save!

puts "LOGO Cadastrado com Sucesso!"

####################################

puts "Cadastrando PRODUTOS..."

      100.times do
      Product.create!(
        title: Faker::Lorem.word,
        description: LeroleroGenerator.sentence,
        category: Category.all.sample,
        subcategory: Subcategory.all.sample,
        brand: Brand.all.sample,
        admin: Admin.all.sample,
        picture: File.new(Rails.root.join('public', 'templates', 'image-for-products', "#{Random.rand(9)}.jpg"), 'r')
        )
    end

puts "PRODUTOS Cadastrados com Sucesso!"



