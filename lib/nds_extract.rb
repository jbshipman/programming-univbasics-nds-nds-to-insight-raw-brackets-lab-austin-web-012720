$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
  dir_inex = 0 
  totals = {} 
  
  while dir_index < nds.length do 
    nameDirector = nds[dir_index][:name]
    totals[nameDirector] = 0
    indexMovies = 0 
    
    while indexMovies < nds[dir_index][:movies].length do 
      totals[nameDirector] += nds[dir_index][:movies][indexMovies][:worldwide_gross]
      indexMovies += 1 
    end 
    
    indexDirectors += 1 
  end 
  
  totals
end
