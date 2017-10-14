puts "Cadastrando ADMINISTRADOR Padrão..."

      Admin.create!(
            email: "admin@admin.com",
            password: "123456",
            password_confirmation: "123456"
      )

puts "ADMINISTRADOR Cadastrado com Sucesso!"