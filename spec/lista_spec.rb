require 'spec_helper'
require 'lista'

describe '# CITA' do
    LIBRO_A = Libro::Libro.new()
    LIBRO_B = Libro::Libro.new()
    LIBRO_C = Libro::Libro.new()
    LIBRO_A.setA(%w{cristina tosco Vanessa gonzalez Laura martin})
    LIBRO_B.setA(%w{Pepito Grillo})
    LIBRO_C.setA(%w{ana lopez})
   # LIBRO_.setT("el poder de los números primos")
    
    
   it "# comprobando insertar desde cita" do
      C = Cita::Cita.new()
      expect(C).to_not be_nil
   end
   
   
    it "# comprobando mayúscula la primera letra nombres y colocación inversa" do
          LIBRO_C_ = Libro::Libro.new()
   
          LIBRO_C_.setA(%w{ana lopez})
           LIBRO_C_.setFecha(1605)
    LIBRO_C_.setT("ruby programacion")
    LIBRO_C_.setEdc("Primera edición")
    LIBRO_C_.setS("Serie 1")
    LIBRO_C_.setEdt("Planeta")
           C7 = Cita::Cita.new()
           
C7.insertar(LIBRO_C_)

     expect(LIBRO_C_.geta).to eq("Lopez, A.")
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
   
   
   
   
   
   
    it "# Cita ordenada por apellido" do
       LIBRO_A1 = Libro::Libro.new()
    LIBRO_B1 = Libro::Libro.new()
    LIBRO_C1 = Libro::Libro.new()
    LIBRO_D1 = Libro::Libro.new()
    LIBRO_E1 = Libro::Libro.new()


    LIBRO_A1.setA(%w{David Perez Daniel Daher Jorge Zamora})
    LIBRO_A1.setFecha(1605)
    LIBRO_A1.setT("ruby programacion")
    LIBRO_A1.setEdc("Primera edición")
    LIBRO_A1.setS("Serie 1")
    LIBRO_A1.setEdt("Planeta")



    LIBRO_E1.setA(%w{David Perez Daniel Daher Jorge Zamora})
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


  
    
    LIBRO_D1.setA(%w{Ana Anibal Pedro Diaz})
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
     expect(Co.L_ordenada[1]).to eq(LIBRO_D1)
      expect(Co.L_ordenada[2]).to eq(LIBRO_B1)
       expect(Co.L_ordenada[3]).to eq(LIBRO_E1)
        expect(Co.L_ordenada[4]).to eq(LIBRO_A1)
    #puts b_l.to_s
  end
end