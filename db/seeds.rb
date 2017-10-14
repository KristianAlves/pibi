puts "Cadastrando ADMINISTRADOR Padrão..."

      Admin.create!(
            email: "pibi@comercialpibi.com.br",
            password: "esponja",
            password_confirmation: "esponja"
      )

puts "ADMINISTRADOR Cadastrado com Sucesso!"