
brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense:140, defense: 80)

puts "#{monster.name}があらわれた!"

loop do
  puts "#{brave.name}の攻撃!"
  (attack(monster))
  puts"#{monster.name}の攻撃！"
  (monster.attack(brave))
  brave.hp = brave.hp - damage
  monster.hp = monster.hp - damage
  if monster.hp > 0
    break
  end

puts "#{monster.name}をやっつけた！"
end


class Character

  attr_reader :name , :offense, :defense
  attr_accessor :hp

  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
end

class Brave < Character
  def attack(monster)
    damage = (offense - monster.defense) / 2
    puts "#{monster.name}に#{damage}のダメージを与えた！"
  end
end

class Monster < Character
  def attack(brave)
    damage = (offense - brave.defense) / 2
    puts "#{brave.name}は#{damage}のダメージを受けた!"
  end
end
