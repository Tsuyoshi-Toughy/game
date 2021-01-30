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
    puts "#{@name}の攻撃!"
      damage = (offense - monster.defense) / 2
      monster.hp = monster.hp - damage
    puts"#{monster.name}に#{damage}のダメージを与えた！"
  end
end

class Monster < Character
  def attack(brave)
    puts"#{@name}の攻撃！"
      damage = (offense - brave.defense) / 2
      brave.hp = brave.hp - damage
    puts "#{brave.name}は#{damage}のダメージを受けた!"
  end
end

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 380, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense:191, defense: 80)

puts "#{monster.name}があらわれた!"

if brave.hp > 0
  loop do
    brave.attack(monster)
    monster.hp = 0 if monster.hp <= 0
    monster.attack(brave)
    brave.hp 0 if brave.hp <= 0
    puts <<~TEXT
    *=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP: #{monster.hp}
    *=*=*=*=*=*=*=*=*=*=*
    TEXT
  #   puts <<~TEXT
  #   *=*=*=*=*=*=*=*=*=*=*
  # 【#{brave.name}】HP: #{brave.hp}
  # 【#{monster.name}】HP: #{monster.hp}
  #   *=*=*=*=*=*=*=*=*=*=*
  #   TEXT
    break if monster.hp == 0
  end
end

if monster.hp == 0
    puts "#{monster.name}をやっつけた！"
    else
    puts "#{barve.name}は死んでしまった。"
  end

