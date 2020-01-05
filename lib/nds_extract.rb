$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  

  totals = {} 
  
  # Outer loop for name of director
  dir_index = 0 
  while dir_index < nds.length do 
    nameDirector = nds[dir_index][:name]
    totals[nameDirector] = 0
    
    # Inner loop for movies per director 
    indexMovies = 0 
    while indexMovies < nds[dir_index][:movies].length do 
      totals[nameDirector] += nds[dir_index][:movies][indexMovies][:worldwide_gross]
      indexMovies += 1 
    end 
    
    dir_index += 1 
  end 
  
  totals
end
