$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  require 'pp'
  
  pp nds
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #

  entries = 0 
  while entries < nds.length do 
      key = nds[entries][:name]
      value = 0
      nds[entries][:movies].each {|x|
        value += x[:worldwide_gross]}
      result[("#{key}")] = value
    
    
    entries +=1
  end
  
  result
end
