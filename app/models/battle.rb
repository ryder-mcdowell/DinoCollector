class Battle

  def initialize(player, enemy_dino)
    @player = player
    @enemy_dino = enemy_dino
  end

  def attack_with_dino(player_dino)
    if not_unconcious?(player_dino)
      @enemy_dino.remove_health(player_dino.attack - @enemy_dino.defence)
      @enemy_dino.remove_defence(player_dino.attack)
      player_dino.remove_health(@enemy_dino.attack - player_dino.defence)
      player_dino.remove_defence(@enemy_dino.attack)
    else
      return
    end
  end

  def not_unconcious?(dino)
    return dino.health > 1
  end

  def dino_battle(player_dino)
    while not_unconcious?(player_dino) && not_unconcious?(@enemy_dino)
      attack_with_dino(player_dino)
    end
  end

end
