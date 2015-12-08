require "lista/lista"
require "lista/libro"

module Cita


 
  class Cita
      include Enumerable
    def initialize()
        @L=Lista::Lista.new
        
    end
    
    def insertar(valor)
        @L.insert(valor)
    end
    
    def mostrar
        @L.mostrar 
    end
 
  end
  
end