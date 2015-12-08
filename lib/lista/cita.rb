require "lista/lista"
require "lista/libro"

module Cita


 
  class Cita
      
    def initialize()
        @L=Lista::Lista.new
        
    end
    
    def insertar(valor)
        @L.insert(valor)
    end
    
 
  end
  
end