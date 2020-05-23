require_relative 'operations'

module Calculator
  class Menu
    def initialize
      puts " ----------------------------------"
      puts "| Bem vindo a calculadora do Vitão |"
      puts " ----------------------------------"
      puts ""
      puts "1. Média Preconceituosa"
      puts "2. Calculadora sem números"
      puts "3. Filtrar Filmes"
      puts "4. Tradutor"
      puts "0. Sair"
      puts ""
      print "Sua opção: "
      
      option = gets.chomp.to_i
      operation = Operations.new

      system "clear || cls"

      case option
      when 1
        print "Insira as notas: "
        grades = gets.chomp
        print "Insira os alunos a serem ignorados: "
        blacklist = gets.chomp

        puts "A média é: #{operation.biased_mean(grades, blacklist)}"
        
        puts "Aperte enter pra continuar"
        enter = gets.chomp
        system "clear || cls"
      when 2
        print "Insira os números que você quer descobrir se são divisíveis por 25: "
        numbers = gets.chomp

        puts "#{operation.no_integers(numbers)}"

        puts "Aperte enter pra continuar"
        enter = gets.chomp
        system "clear || cls"
      when 3
        print "Insira os gêneros: "
        genres = gets.chomp
        print "Insira o ano: "
        year = gets.chomp

        puts operation.filter_films(genres, year)

        puts "Aperte enter pra continuar"
        enter = gets.chomp
        system "clear || cls"
      when 4
        print "Insira o texto a ser traduzido: "
        text = gets.chomp
        puts "Insira a língua original do texto (Ex: pt, en, es)"
        lang = gets.chomp
        lang += "-"
        puts "Insira a língua para qual o texto vai ser traduzido (Ex: pt, en, es)"
        lang += gets.chomp

        puts operation.translate(text, lang)

        puts "Aperte enter pra continuar"
        enter = gets.chomp
        system "clear || cls"
      when 0
        exit
      end
    end
  end
end
