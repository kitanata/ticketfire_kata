require 'spec_helper'
require 'heros'

RSpec.describe Weapon, "#init" do
  before(:each) do
    @subject = Weapon.new
  end

  it "A shaby weapon should have a damage of 4" do
    @subject.quality = :shabby
    expect(@subject.damage).to eq(4)
  end

  it "A bastard weapon should have a damage of 8" do
    @subject.quality = :bastard
    expect(@subject.damage).to eq(8)
  end

  it "A long weapon should have a long of 6" do
    @subject.quality = :long
    expect(@subject.damage).to eq(6)
  end

  it "A great weapon should have a great of 7" do
    @subject.quality = :great
    expect(@subject.damage).to eq(7)
  end

  context "No secondary enchantment" do
    context "Weapon has a primary enchantment of ice" do
      before(:each) do
        @subject.primary_enchantment = :ice
      end
      it "A shabby knife should have a sensible name" do
        @subject.quality = :shabby
        @subject.type = :knife
        expect(@subject.to_s).to eq("Shabby Knife of Ice")
      end

      it "A shabby sword should have a sensible name" do
        @subject.quality = :shabby
        @subject.type = :sword
        expect(@subject.to_s).to eq("Shabby Sword of Ice")
      end

      it "A shabby bow should have a sensible name" do
        @subject.quality = :shabby
        @subject.type = :bow
        expect(@subject.to_s).to eq("Shabby Bow of Ice")
      end

      it "A shabby staff should have a sensible name" do
        @subject.quality = :shabby
        @subject.type = :staff
        expect(@subject.to_s).to eq("Shabby Staff of Ice")
      end

      it "A long knife should have a sensible name" do
        @subject.quality = :long
        @subject.type = :knife
        expect(@subject.to_s).to eq("Long Knife of Ice")
      end

      it "A long sword should have a sensible name" do
        @subject.quality = :long
        @subject.type = :sword
        expect(@subject.to_s).to eq("Long Sword of Ice")
      end

      it "A long bow should have a sensible name" do
        @subject.quality = :long
        @subject.type = :bow
        expect(@subject.to_s).to eq("Long Bow of Ice")
      end

      it "A long staff should have a sensible name" do
        @subject.quality = :long
        @subject.type = :staff
        expect(@subject.to_s).to eq("Long Staff of Ice")
      end

      it "A great knife should have a sensible name" do
        @subject.quality = :great
        @subject.type = :knife
        expect(@subject.to_s).to eq("Great Knife of Ice")
      end

      it "A great sword should have a sensible name" do
        @subject.quality = :great
        @subject.type = :sword
        expect(@subject.to_s).to eq("Great Sword of Ice")
      end

      it "A great bow should have a sensible name" do
        @subject.quality = :great
        @subject.type = :bow
        expect(@subject.to_s).to eq("Great Bow of Ice")
      end

      it "A great staff should have a sensible name" do
        @subject.quality = :great
        @subject.type = :staff
        expect(@subject.to_s).to eq("Great Staff of Ice")
      end

      it "A bastard knife should have a sensible name" do
        @subject.quality = :bastard
        @subject.type = :knife
        expect(@subject.to_s).to eq("Bastard Knife of Ice")
      end

      it "A bastard sword should have a sensible name" do
        @subject.quality = :bastard
        @subject.type = :sword
        expect(@subject.to_s).to eq("Bastard Sword of Ice")
      end

        it "A bastard bow should have a sensible name" do
        @subject.quality = :bastard
        @subject.type = :bow
        expect(@subject.to_s).to eq("Bastard Bow of Ice")
      end

      it "A bastard staff should have a sensible name" do
        @subject.quality = :bastard
        @subject.type = :staff
        expect(@subject.to_s).to eq("Bastard Staff of Ice")
      end
    end


    context "Weapon has a primary enchantment of fire" do
      before(:each) do
        @subject.primary_enchantment = :fire
      end
      it "A shabby knife should have a sensible name" do
        @subject.quality = :shabby
        @subject.type = :knife
        expect(@subject.to_s).to eq("Shabby Knife of Fire")
      end

      it "A shabby sword should have a sensible name" do
        @subject.quality = :shabby
        @subject.type = :sword
        expect(@subject.to_s).to eq("Shabby Sword of Fire")
      end

      it "A shabby bow should have a sensible name" do
        @subject.quality = :shabby
        @subject.type = :bow
        expect(@subject.to_s).to eq("Shabby Bow of Fire")
      end

      it "A shabby staff should have a sensible name" do
        @subject.quality = :shabby
        @subject.type = :staff
        expect(@subject.to_s).to eq("Shabby Staff of Fire")
      end

      it "A long knife should have a sensible name" do
        @subject.quality = :long
        @subject.type = :knife
        expect(@subject.to_s).to eq("Long Knife of Fire")
      end

      it "A long sword should have a sensible name" do
        @subject.quality = :long
        @subject.type = :sword
        expect(@subject.to_s).to eq("Long Sword of Fire")
      end

      it "A long bow should have a sensible name" do
        @subject.quality = :long
        @subject.type = :bow
        expect(@subject.to_s).to eq("Long Bow of Fire")
      end

      it "A long staff should have a sensible name" do
        @subject.quality = :long
        @subject.type = :staff
        expect(@subject.to_s).to eq("Long Staff of Fire")
      end

      it "A great knife should have a sensible name" do
        @subject.quality = :great
        @subject.type = :knife
        expect(@subject.to_s).to eq("Great Knife of Fire")
      end

      it "A great sword should have a sensible name" do
        @subject.quality = :great
        @subject.type = :sword
        expect(@subject.to_s).to eq("Great Sword of Fire")
      end

      it "A great bow should have a sensible name" do
        @subject.quality = :great
        @subject.type = :bow
        expect(@subject.to_s).to eq("Great Bow of Fire")
      end

      it "A great staff should have a sensible name" do
        @subject.quality = :great
        @subject.type = :staff
        expect(@subject.to_s).to eq("Great Staff of Fire")
      end

      it "A bastard knife should have a sensible name" do
        @subject.quality = :bastard
        @subject.type = :knife
        expect(@subject.to_s).to eq("Bastard Knife of Fire")
      end

      it "A bastard sword should have a sensible name" do
        @subject.quality = :bastard
        @subject.type = :sword
        expect(@subject.to_s).to eq("Bastard Sword of Fire")
      end

        it "A bastard bow should have a sensible name" do
        @subject.quality = :bastard
        @subject.type = :bow
        expect(@subject.to_s).to eq("Bastard Bow of Fire")
      end

      it "A bastard staff should have a sensible name" do
        @subject.quality = :bastard
        @subject.type = :staff
        expect(@subject.to_s).to eq("Bastard Staff of Fire")
      end
    end
  end

 context "Weapon has no primary enchantment" do
  it "A shabby knife should have a sensible name" do
    @subject.quality = :shabby
    @subject.type = :knife
    expect(@subject.to_s).to eq("Shabby Knife")
  end

  it "A shabby sword should have a sensible name" do
    @subject.quality = :shabby
    @subject.type = :sword
    expect(@subject.to_s).to eq("Shabby Sword")
  end

  it "A shabby bow should have a sensible name" do
    @subject.quality = :shabby
    @subject.type = :bow
    expect(@subject.to_s).to eq("Shabby Bow")
  end

  it "A shabby staff should have a sensible name" do
    @subject.quality = :shabby
    @subject.type = :staff
    expect(@subject.to_s).to eq("Shabby Staff")
  end

  it "A long knife should have a sensible name" do
    @subject.quality = :long
    @subject.type = :knife
    expect(@subject.to_s).to eq("Long Knife")
  end

  it "A long sword should have a sensible name" do
    @subject.quality = :long
    @subject.type = :sword
    expect(@subject.to_s).to eq("Long Sword")
  end

  it "A long bow should have a sensible name" do
    @subject.quality = :long
    @subject.type = :bow
    expect(@subject.to_s).to eq("Long Bow")
  end

  it "A long staff should have a sensible name" do
    @subject.quality = :long
    @subject.type = :staff
    expect(@subject.to_s).to eq("Long Staff")
  end

  it "A great knife should have a sensible name" do
    @subject.quality = :great
    @subject.type = :knife
    expect(@subject.to_s).to eq("Great Knife")
  end

  it "A great sword should have a sensible name" do
    @subject.quality = :great
    @subject.type = :sword
    expect(@subject.to_s).to eq("Great Sword")
  end

  it "A great bow should have a sensible name" do
    @subject.quality = :great
    @subject.type = :bow
    expect(@subject.to_s).to eq("Great Bow")
  end

  it "A great staff should have a sensible name" do
    @subject.quality = :great
    @subject.type = :staff
    expect(@subject.to_s).to eq("Great Staff")
  end

  it "A bastard knife should have a sensible name" do
    @subject.quality = :bastard
    @subject.type = :knife
    expect(@subject.to_s).to eq("Bastard Knife")
  end

  it "A bastard sword should have a sensible name" do
    @subject.quality = :bastard
    @subject.type = :sword
    expect(@subject.to_s).to eq("Bastard Sword")
  end

    it "A bastard bow should have a sensible name" do
    @subject.quality = :bastard
    @subject.type = :bow
    expect(@subject.to_s).to eq("Bastard Bow")
  end

  it "A bastard staff should have a sensible name" do
    @subject.quality = :bastard
    @subject.type = :staff
    expect(@subject.to_s).to eq("Bastard Staff")
  end
end

  it "Has a primary enchantment of ice and a secondary enchantment of Healing" do
    @subject.quality = :bastard
    @subject.type = :staff
    @subject.primary_enchantment = :ice
    @subject.secondary_enchantment = :healing
    expect(@subject.to_s).to eq("Healing Bastard Staff of Ice")
  end

  it "Has a primary enchantment of ice and a secondary enchantment of Shielding" do
    @subject.quality = :bastard
    @subject.type = :staff
    @subject.primary_enchantment = :ice
    @subject.secondary_enchantment = :Shielding
    expect(@subject.to_s).to eq("Shielding Bastard Staff of Ice")
  end

  context "Weapon is a knife" do
    before(:each) do
      @subject.type = :knife
    end

    it "should have a base damage of 5" do
      expect(@subject.damage).to eq(5)
    end

    it "should be a knife" do
      expect(@subject.type).to eq(:knife)
    end 
  end

  context "Weapon is a sword" do
    before(:each) do
      @subject.type = :sword
    end

    it "should have a base damage of 5" do
      expect(@subject.damage).to eq(5)
    end

    it "should be a sword" do
      expect(@subject.type).to eq(:sword)
    end 
  end
end

RSpec.describe Hero, "#init" do
  before(:each) do
    @champion = Hero.new
  end

  it "should have a name" do
    @champion.name = "Shane"
    expect(@champion.name).to eq("Shane")
  end

  it "should have base hp of 30" do
    @champion.hp = 30
    expect(@champion.hp).to eq(30)
  end


  context "Class is a rogue" do

    before(:each) do
      @champion.class = :rogue
    end

    it "should have class of rogue" do
      expect(@champion.class).to eq(:rogue)
    end

    it "should have a knife" do
     expect(@champion.weapon).to eq(:knife)
    end

    it "should have a strength of 5" do
      expect(@champion.strength).to eq(5)
    end

    it "should have an armor of 2" do
      expect(@champion.armor).to eq(2)
    end

  end

  context "Class is a warrior" do

    before(:each) do
      @champion.class = :warrior
    end

    it "should have class of warrior" do
      expect(@champion.class).to eq(:warrior)
    end

    it "should have a sword" do
       expect(@champion.weapon).to eq(:sword)
    end

    it "should have a strength of 4" do
      expect(@champion.strength).to eq(4)
    end

    it "should have an armor of 4" do
      expect(@champion.armor).to eq(4)
    end


  end

  context "Class is a wizard" do

    before(:each) do
      @champion.class = :wizard
    end

    it "should have class of wizard" do
      expect(@champion.class).to eq(:wizard)
    end

    it "should have a staff" do
       expect(@champion.weapon).to eq(:staff)
    end

    it "should have a strength of 2" do
      expect(@champion.strength).to eq(2)
    end

    it "should have an armor of 1" do
      expect(@champion.armor).to eq(1)
    end


  end

  context "Class is a hunter" do

    before(:each) do
      @champion.class = :hunter
    end

    it "should have class of hunter" do
      expect(@champion.class).to eq(:hunter)
    end

    it "should have a bow" do
       expect(@champion.weapon).to eq(:bow)
    end

    it "should have a strength of 3" do
      expect(@champion.strength).to eq(3)
    end

    it "should have an armor of 3" do
      expect(@champion.armor).to eq(3)
    end


  end
end
