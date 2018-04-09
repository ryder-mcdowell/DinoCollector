class Dino

    def initialize(name, attack, defence, health)
      @name = name
      @attack = attack
      @defence = defence
      @health = health
    end

    def getName
        @name
    end

    def getAttack
        @attack
    end

    def getDefence
        @defence
    end

    def getHealth
        @health
    end

    def addHealth(health)
        @health += health
    end

    def removeHealth(health)
        @health -= health
    end

end
