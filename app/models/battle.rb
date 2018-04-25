class Battle

def fight(contender, rival)
  if contender.attack > rival.attack
    return contender
  else
    return rival
  end
end

end
