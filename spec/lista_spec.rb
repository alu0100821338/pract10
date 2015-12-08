require 'spec_helper'
require 'lista'

describe '# PRUEBA' do
    LIBRO_A = Libro::Libro.new()
    LIBRO_B = Libro::Libro.new()
    LIBRO_C = Libro::Libro.new()
    LIBRO_A.setA(%w{cristina tosco Vanessa gonzalez Laura martin})
    LIBRO_B.setA(%w{Pepito Grillo})
    LIBRO_C.setA(%w{Ana angeles})
    
    
   it "# comprobando insertar desde cita" do
      C = Cita::Cita.new()
      C.insertar(LIBRO_A)
   end
   
   it "# comprobando mostrar desde cita" do
      C1 = Cita::Cita.new()
      C1.insertar(LIBRO_A)
      C1.mostrar()
   end
   
   it "# comprobando insertar varios libros desde cita" do
      C2 = Cita::Cita.new()
      C2.insertar(LIBRO_A)
      C2.insertar(LIBRO_B)
      C2.insertar(LIBRO_C)
      C2.mostrar()
   end
end