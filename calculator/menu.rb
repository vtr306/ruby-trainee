require_relative 'operations'

module Calculator
  class Menu
    def initialize
      puts " -------------------------"
      puts "| Bem vindo a calculadora |"
      puts " -------------------------"
      puts ""
      puts "1. Média Preconceituosa"
      puts "2. Calculadora sem números"
      puts "3. Filtrar Filmes"
      puts "0. Sair"
      puts ""
      print "Sua opção: "
      
      option = gets.chomp.to_i
      operation = Operations.new

      case option
      when 1
        print "Insira as notas: "
        grades = gets.chomp

        print "Insira os alunos a serem ignorados: "
        blacklist = gets.chomp

        puts "A média é: #{operation.biased_mean(grades, blacklist)}"
      when 2
        print "Insira os números que você quer descobrir se são divisíveis por 25: "
        numbers = gets.chomp
        puts "#{operation.no_integers(numbers)}"
      when 3
        print "Insira os gêneros: "
        genres = gets.chomp
        print "Insira o ano: "
        year = gets.chomp
        puts operation.filter_films(genres, year)
      when 0
        exit
      end
    end
  end
end
