class CreatesDino
  attr_accessor :name, :attack, :defence, :health, :dino

  def initialize(name:, attack:, defence:, health:)
    @name = name
    @attack = attack
    @defence = defence
    @health = health
    @success = false
  end

  def success?
    @success
  end

  def build
    self.dino = Dino.new(name: name, attack: attack, defence: defence, health: health)
  end

  def create
    build
    result = dino.save
    @success = result
  end
end
