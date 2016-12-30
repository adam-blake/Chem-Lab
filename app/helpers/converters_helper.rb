module ConvertersHelper

  def convert_temperatures celsius_quantity, kelvin_quantity
    if celsius_quantity.blank?
      kelvin_to_celsius(@kelvin.to_f)
    else
      celsius_to_kelvin(@celsius.to_f)
    end
  end

  def celsius_to_kelvin celsius_quantity
    "#{celsius_quantity + 273.15} °K"
  end

  def kelvin_to_celsius kelvin_quantity
    "#{kelvin_quantity - 273.15} °C"
  end

  def convert_atoms atoms_quantity, moles_quantity
    if atoms_quantity.blank?
      moles_to_atoms(@moles.to_f)
    else
      atoms_to_moles(@atoms.to_f)
    end
  end

  def atoms_to_moles atoms_quantity
    "#{atoms_quantity / (6.022 * (10**23))} M"
  end

  def moles_to_atoms moles_quantity
    "#{moles_quantity * (6.022 * (10**23))} atoms"
  end

  def temperature_conversion_explanation celsius_quantity, kelvin_quantity
    if celsius_quantity.blank?
      "#{kelvin_quantity} °K - 273.15"
    else
      "#{celsius_quantity} °C + 273.15"
    end
  end

  def atom_conversion_explanation atoms_quantity, moles_quantity
    if atoms_quantity.blank?
      "#{moles_quantity}M &times; 6.022 &times; 10<sup>23</sup>".html_safe
    else
      "#{atoms_quantity} atoms ÷ 6.022 &times; 10<sup>23</sup>".html_safe
    end
  end

end
