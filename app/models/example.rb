class Example < ApplicationRecord
    def self.run
      # Primer cálculo: Sumar un número consigo mismo
      print "Introduce cualquier número: "
      a = gets.to_i
      puts "El resultado de la suma es: #{a + a}"
  
      print "============================================\n"
  
      # Segundo cálculo: Combinaciones de sándwiches
      print "Introduce la cantidad de ingredientes disponibles: "
      num_ingredientes = gets.chomp.to_i
  
      if num_ingredientes <= 0
        puts "El número de ingredientes debe ser mayor que cero."
      else
        # Usamos la fórmula: 2^n - 1
        total_sandwiches = 2**num_ingredientes - 1
        puts "Con #{num_ingredientes} ingredientes, puedes preparar #{total_sandwiches} sándwiches diferentes."
        print "=========================================\n"
      end
    end
  end
  
  # Llamada al método run
  Example.run
  
  