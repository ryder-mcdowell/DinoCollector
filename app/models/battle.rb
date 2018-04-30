class Battle

  def initialize(player, enemy_dino)
    @player = player
    @enemy_dino = enemy_dino
  end

  def attack_with_dino(player_dino)
    if player_dino.health > 1
      @enemy_dino.removeHealth(player_dino.attack)
      player_dino.removeHealth(@enemy_dino.attack)
    else
      return
    end
  end

end
