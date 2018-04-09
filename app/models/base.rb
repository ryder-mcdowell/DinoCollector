class Base

    def initialize(defence, food)
        @defence = defence
        @food = food
    end

    def getDefence
        @defence
    end

    def getFood
        @food
    end

    def addDefence(defence)
        @defence += defence
    end

    def addFood(food)
        @food += food
    end

    def removeDefence(defence)
        @defence -= defence
    end

    def removeFood(food)
        @food -= food
    end

end
