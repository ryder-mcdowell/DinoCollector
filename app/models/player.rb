class Player
    attr_accessor :x, :y

    def initialize(x, y)
        @x = x
        @y = y
        @in_combat = false
    end

    def move_forward
        @y += 1
    end

    def move_back
        @y -= 1
    end

    def move_left
        @x -= 1
    end

    def move_right
        @x += 1
    end

    def in_combat?
        @in_combat
    end

end
