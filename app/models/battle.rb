class Battle

  def initialize(player, enemy_dino)
    @player = player
    @enemy_dino = enemy_dino
  end

  def attack_with_dino(player_dino)
    return false unless concious?(player_dino)
    @enemy_dino.remove_health(player_dino.attack - @enemy_dino.defence)
    @enemy_dino.remove_defence(player_dino.attack)
    player_dino.remove_health(@enemy_dino.attack - player_dino.defence)
    player_dino.remove_defence(@enemy_dino.attack)
  end

  def concious?(dino)
    dino.health > 1
  end

  def dino_battle(player_dino)
    while concious?(player_dino) && concious?(@enemy_dino)
      attack_with_dino(player_dino)
    end
  end

end
