class Battle

  def initialize(player, enemy_dino)
    @player = player
    @enemy_dino = enemy_dino
  end

  def attack_with_dino(player_dino)
    return false unless player_dino.is_concious?
    @enemy_dino.damage(player_dino.attack - @enemy_dino.defence)
    @enemy_dino.weaken(player_dino.attack)
    player_dino.damage(@enemy_dino.attack - player_dino.defence)
    player_dino.weaken(@enemy_dino.attack)
  end

  def dino_battle(player_dino)
    while player_dino.is_concious? && @enemy_dino.is_concious?
      attack_with_dino(player_dino)
    end
  end

end
