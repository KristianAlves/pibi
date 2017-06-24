namespace :utils do

  desc "Setup Development"
  task setup_dev: :environment do
    puts "Executando o Setup para Desenvolvimento"

    puts "Apagando Banco de Dados...  #{%x(rake db:drop)}"
    puts "Criando Banco de Dados... #{%x(rake db:create)}"
    puts %x(rake db:migrate)
    puts %x(rake db:seed)

    puts "Setup realizado com Sucesso!"
  end
end