require_relative 'operations'

module Calculator
  class Menu
    def initialize
      puts " -------------------------"
      puts "| Bem vindo a calculadora |"
      puts " -------------------------"
      puts ""
      puts "1. Média Preconceituosa"
      puts "2. Operacao 2"
      puts "3. Operacao 3"
      puts "4. Sair"
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
      
      when 3
      
      when 4
      
      end
    end
  end
end
