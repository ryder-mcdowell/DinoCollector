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

    if player_dino.attack > @enemy_dino.attack
      return player_dino
    else
      return @enemy_dino
    end
  end

end
