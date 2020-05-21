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
  
    end
  
    def filter_films(genres, year)
      films = get_films
  
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
