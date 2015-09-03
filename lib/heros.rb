
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

  ##################################  ABSTRACT METHODS  #######################################################################################
  def range
    raise NotImplementedError.
      new("#{self.class.name}#range is an 
          abstract method.")
  end

end

class Sword < Weapon

  def range
    5
  end
end

class Knife < Weapon
  
  def range
    2
  end
end

class Staff < Weapon
  
  def range
    50
  end
end

class Bow < Weapon
  
  def range
    30
  end
end



class Hero
  attr_accessor :name, :hp

  ##################################  ABSTRACT METHODS  #######################################################################################
  def armor
    raise NotImplementedError.
      new("#{self.class.name}#armor is an 
          abstract method.")
  end

  def strength
    raise NotImplementedError.
      new("#{self.class.name}#strength is an 
          abstract method.")
  end

  def speed
    raise NotImplementedError.
      new("#{self.class.name}#speed is an 
          abstract method.")
  end
end

class Warrior < Hero
  attr_reader :weapon

  def initialize
    @weapon = Sword.new
  end

  def armor
    4
  end

  def strength
    4
  end

  def speed
    15
  end
end

class Wizard < Hero
  attr_reader :weapon

  def initialize
    @weapon = Staff.new
  end

  def armor
    1
  end

  def strength
    2
  end

  def speed
    5
  end
end

class Rogue < Hero
  attr_reader :weapon

  def initialize
    @weapon = Knife.new
  end

  def armor
    2
  end

  def strength
    5
  end

  def speed
    25
  end
end

class Hunter < Hero
  attr_reader :weapon

  def initialize
    @weapon = Bow.new
  end

  def armor
    3
  end

  def strength
    3
  end

  def speed
    10
  end
end