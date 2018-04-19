class CreatesPlayer
  attr_accessor :name, :player

  def initialize(name: "")
    @name = name
  end

  def build
    self.player = Player.new(name: name)
  end

  def create
    build
    player.save!
  end
end
