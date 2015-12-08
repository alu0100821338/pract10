require 'spec_helper'
require 'lista'

describe '# PRUEBA' do
    LIBRO_A = Libro::Libro.new()
    LIBRO_B = Libro::Libro.new()
    LIBRO_C = Libro::Libro.new()
    LIBRO_A.setA(%w{cristina tosco Vanessa gonzalez Laura martin})
    LIBRO_B.setA(%w{Pepito Grillo})
    LIBRO_C.setA(%w{ana lopez})
   # LIBRO_.setT("el poder de los números primos")
     r1=Libro::Revista.new("el poder de los números primos")
    
   it "# comprobando insertar desde cita" do
      C = Cita::Cita.new()
      C.insertar(LIBRO_A)
      expect(C).to_not be_nil
   end
   
   it "# comprobando mostrar desde cita" do
      C1 = Cita::Cita.new()
      C1.insertar(LIBRO_A)
      #C1.mostrar()
      #se comprueba con lo que sale por pantalla
   end
   
   it "# comprobando insertar varios libros desde cita" do
      C2 = Cita::Cita.new()
      C2.insertar(LIBRO_A)
      C2.insertar(LIBRO_B)
      C2.insertar(LIBRO_C)
      
     expect(C2).to_not be_nil
   end
   
    it "# comprobando mayúscula la primera letra nombres y colocación inversa" do
     expect(LIBRO_C.geta).to eq("Lopez A.")
   end
   
   it "# comprobando inicial título mayuscula" do
    
   end
   
   it "# comprobando orden alfabético: APELLIDO autor, fecha, titulo" do
     expect(r1.get).to eq("El Poder De Los Número Primos")
   end
end