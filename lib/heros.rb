
class Weapon
  attr_accessor :type
  attr_writer :quality

  def damage
    case @quality
    when :shabby
      4
    when :long
      6
    when :great
      7
    when :bastard
      8
    else
      5
    end
  end
end



class Hero
end
