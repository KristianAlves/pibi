namespace :utils do

  desc "Setup Development"
  task setup_dev: :environment do
    images_path = Rails.root.join('public', 'system')

    puts "Executando o Setup para Desenvolvimento"

    puts "Apagando Banco de Dados...  #{%x(rake db:drop)}"
    puts "Apagando Imagens de Public... #{%x(rm -rf #{images_path})}"
    puts "Criando Banco de Dados... #{%x(rake db:create)}"
    puts %x(rake db:migrate)
    puts %x(rake db:seed)

    puts "Setup realizado com Sucesso!"
  end
end