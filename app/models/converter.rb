class Converter < ApplicationRecord
  def initialize quantity, conversion
    obj.public_send('foo')
  end

  def foo
    puts 'yay'
  end
end
