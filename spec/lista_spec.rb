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
   
   it "# comprobando hija revista" do
     r1=Libro::Revista.new("el poder de los números primos")
     C3 = Cita::Cita.new()
      C3.insertar(r1)
       expect(r1.nombrerevista).to eq("El Poder De Los Números Primos")
   end
   
    it "# comprobando hija periodico" do
     p1=Libro::Periodico.new("el poder de los números primos")
     C4 = Cita::Cita.new()
      C4.insertar(p1)
       expect(p1.articulo).to eq("El Poder De Los Números Primos")
   end
   
   it "# comprobando orden alfabético: APELLIDO autor, fecha, titulo" do
     
   end
   
   
   
   
    it "# Cita ordenada por apellido" do
       LIBRO_A1 = Libro::Libro.new()
    LIBRO_B1 = Libro::Libro.new()
    LIBRO_C1 = Libro::Libro.new()
    LIBRO_D1 = Libro::Libro.new()
    LIBRO_E1 = Libro::Libro.new()


    LIBRO_A1.setA(%w{David Perez, Daniel Daher, Jorge Zamora})
    LIBRO_A1.setFecha(1605)
    LIBRO_A1.setT("que vivia un hidalgo de los de lanza en astillero")
    LIBRO_A1.setEdc("Primera edición")
    LIBRO_A1.setS("Serie 1")
    LIBRO_A1.setEdt("Planeta")



    LIBRO_E1.setA(%w{David Perez, Daniel Daher, Jorge Zamora})
    LIBRO_E1.setFecha(1605)
    LIBRO_E1.setT("el ingenioso hidalgo don Quijote de la Mancha")
    LIBRO_E1.setEdc("Primera edición")
    LIBRO_E1.setS("Serie 1")
    LIBRO_E1.setEdt("Santillana")
        

    LIBRO_B1.setA(%w{Miguel Cervantes})
    LIBRO_B1.setFecha(1615)
    LIBRO_B1.setT("no ha mucho tiempo")
    LIBRO_B1.setEdc("Segunda edición")
    LIBRO_B1.setS("Serie 2")
    LIBRO_B1.setEdt("Anaya")


    
    LIBRO_C1.setA(%w{Ana Anibal})
    LIBRO_C1.setFecha(2000)
    LIBRO_C1.setT("en un lugar de la mancha")
    LIBRO_C1.setEdc("120ª edición")
    LIBRO_C1.setS("Serie 2")
    LIBRO_C1.setEdt("Planeta")


  
    
    LIBRO_D1.setA(%w{Ana Anibal, Pedro Diaz})
    LIBRO_D1.setFecha(1605)
    LIBRO_D1.setT("de cuyo nombre no quiero acordarme")
    LIBRO_D1.setEdc("Primera edición")
    LIBRO_D1.setS("Serie 3")
    LIBRO_D1.setEdt("Oxford")




      Co = Cita::Cita.new()
  # C1.insertar(LIBRO_A)

    Co.insertar(LIBRO_A1)
    Co.insertar(LIBRO_E1)
    Co.insertar(LIBRO_B1)
    Co.insertar(LIBRO_C1)
    Co.insertar(LIBRO_D1)

    Co.ordenar()
    Co.mostrar()
    expect(Co.L_ordenada[0]).to eq(LIBRO_C1)
    #puts b_l.to_s
  end
end