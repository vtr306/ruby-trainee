require_relative '../extra_operations'
require 'net/http'
require 'json'

module Calculator
  class Operations
    include ExtraOperations
  
    def biased_mean(grades, blacklist)

      grades = JSON.parse(grades)
      blacklist = blacklist.split

      blacklist.each do |index|
        grades.delete(index)
      end

      sum = 0
      students = 0

      grades.each do |key, value|
        sum += grades[key]
        students += 1
      end

      return (sum/students).to_f
    end
  
    def no_integers(numbers)
      
      numbers = numbers.split
      prova = ['00', '25', '50', '75']
      result = ""
      numbers.each do |index|
        if prova.include?(index[-2..-1])
          result += "S "
        else
          result += "N "
        end
      end

      return result
    end
  
    def filter_films(genres, year)

      films = get_films[:movies]
      genres = genres.split(" ")
      result = []

      films.each do |a|
        if( a[:year] >= year && (genres & a[:genres]) == genres)
          result.push(a[:title])
        end
      end
      
      return result
    end
    
    private
  
    def get_films
      url = 'https://raw.githubusercontent.com/yegor-sytnyk/movies-list/master/db.json'
      uri = URI(url)
      response = Net::HTTP.get(uri)
      return JSON.parse(response, symbolize_names: true)
    end
  end
end
