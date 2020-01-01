$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  require 'pp'
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  pp nds
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #

  entries = 0 
  while entries < nds.length do
    nds.each {|director_hash| 
      director_hash[:movies].each {|title_hash|
        total += title_hash[:worldwide_gross]}
    result[:director_hash[:name]] = "#{total}"
    }
    
    result
  end
end
