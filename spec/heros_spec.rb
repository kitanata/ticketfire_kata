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
    #expect(@subject.damage).to eq(6)
    @subject.damage.should eq(6)
  end

  it "A great weapon should have a great of 7" do
    @subject.quality = :great
    expect(@subject.damage).to eq(7)
  end

  it "A shabby knife should have a sensible name" do
    @subject.quality = :shabby
    @subject.type = :knife
    expect(@subject.to_s).to eq("Shabby Knife")
  end

  it "A long sword should have a sensible name" do
    @subject.quality = :long
    @subject.type = :sword
    expect(@subject.to_s).to eq("Long Sword")
  end

  it "A shabby sword shoul dhave a sensible name" do
    @subject.quality = :shabby
    @subject.type = :sword
    expect(@subject.to_s).to eq("Shabby Sword")
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
end
