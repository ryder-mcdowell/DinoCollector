class CreatesPlayer
  attr_accessor :name

  def initialize(name: "")
    @name = name
    @dinos = []
  end

  def build
    self.player = Player.new(name: name)
  end
end
