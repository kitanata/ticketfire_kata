
class Weapon
  attr_accessor :type
  attr_writer :quality , :primary_enchantment, :secondary_enchantment

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
    return "#{@quality.to_s.capitalize} #{@type.to_s.capitalize}" if(@primary_enchantment.nil?)
        
    return  "#{@quality.to_s.capitalize} #{@type.to_s.capitalize} of #{@primary_enchantment.to_s.capitalize}" if(@secondary_enchantment.nil?)
       
    "#{@secondary_enchantment.to_s.capitalize} #{@quality.to_s.capitalize} #{@type.to_s.capitalize} of #{@primary_enchantment.to_s.capitalize}"
  end

end



class Hero
end
