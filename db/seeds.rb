puts "Cadastrando ADMINISTRADOR Padrão..."

      Admin.create!(
            email: "vendaspibi@terra.com.br",
            password: "esponja",
            password_confirmation: "esponja"
      )

puts "ADMINISTRADOR Cadastrado com Sucesso!"