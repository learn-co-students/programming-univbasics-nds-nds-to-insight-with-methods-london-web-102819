require 'directors_database'
require "pry"
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director = Hash.new
  row_count = 0
  while row_count < nds.length do 
    #nds[row_count][item = hash]
    director_name = nds[row_count][:name]
    director[director_name] = gross_for_director(nds[row_count])
    row_count +=1
  end
  director
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_hash)
  item_count = 0 #each movie hash
  director_gross_total = 0
  # binding.pry
  while item_count < director_hash[:movies].length do
    #per_movie = nds[row_count][:movies = hash][:worldwide_gross]
    director_gross_total+= director_hash[:movies][item_count][:worldwide_gross]
    item_count+=1
  end
  director_gross_total
end
