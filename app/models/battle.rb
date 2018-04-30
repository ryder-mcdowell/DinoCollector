class Battle

  def initialize(player, enemy_dino)
    @player = player
    @enemy_dino = enemy_dino
  end

  def attack_with_dino(player_dino)
    if player_dino.attack > @enemy_dino.attack
      return player_dino
    else
      return @enemy_dino
    end
  end

end
