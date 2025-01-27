class Example < ApplicationRecord
    def self.run
      print "Introduce cualquier número: "
      a = gets.to_i
      puts "El resultado de la suma es: #{a + a}"
    end
  end
  
  # Llamada al método run
  Example.run
  