class CreatesPlayer
  attr_accessor :name, :player

  def initialize(name: "")
    @name = name
    @success = false
  end

  def success?
    @success
  end

  def build
    self.player = Player.new(name: name)
  end

  def create
    build
    result = player.save
    @success = result
  end
end
