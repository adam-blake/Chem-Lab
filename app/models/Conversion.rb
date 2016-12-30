class Conversion
  # def initialize quantity, conversion_method
  #   quantity = quantity.to_f
  #   # self.public_send(conversion_method(quantity))
  #   case conversion_method
  #   when 'celsius_to_kelvin'
  #     celsius_to_kelvin quantity
  #   when 'kelvin_to_celsius'
  #     kelvin_to_celsius quantity
  #   end
  # end

  def celsius_to_kelvin celsius_quantity
    celsius_quantity + 273.15
  end

  def kelvin_to_celsius kelvin_quantity
    kelvin_quantity - 273.15
  end
end
