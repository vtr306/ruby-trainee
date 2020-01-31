require_relative 'operacoes_extras'

module Calculadora

  class Operacoes
    include OperacoesExtras

    def media_preconceituosa(notas, lista_negra)

    end

    def sem_numeros(numeros)

    end

    def filtrar_filme(generos, ano)
      filmes = get_filmes
      
    end
    
    private

    def get_filmes
      url = 'https://raw.githubusercontent.com/yegor-sytnyk/movies-list/master/db.json'
      uri = URI(url)
      response = Net::HTTP.get(uri)
      return JSON.parse(response, symbolize_names: true)
    end

  end

  class Menu
  
    def initialize
    end
  
  end

end
