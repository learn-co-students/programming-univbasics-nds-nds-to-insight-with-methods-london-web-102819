require 'directors_database'
require "pry"

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

## main code 
def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    director = nds[director_index]
    result[nds[director_index][:name]] = gross_for_director(director)
    director_index += 1
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_total = 0
  movie_index = 0
  while movie_index < director_data[:movies].length do
    director_total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  return director_total
end
