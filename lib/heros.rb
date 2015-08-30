
class Weapon
  attr_accessor :type
  attr_writer :quality , :primary_enchantment

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

  def to_s
    case @primary_enchantment
    when nil
      "#{@quality.to_s.capitalize} #{@type.to_s.capitalize}"
    else
      "#{@quality.to_s.capitalize} #{@type.to_s.capitalize} of #{@primary_enchantment.to_s.capitalize}"
    end

  end

end



class Hero
end
