class Dino

  attr_accessor :name
  attr_accessor :attack
  attr_accessor :defence
  attr_accessor :health

    def initialize(name, attack, defence, health)
      @name = name
      @attack = attack
      @defence = defence
      @health = health
    end

    def addHealth(health)
        @health += health
    end

    def removeHealth(health)
        @health -= health
    end

end
