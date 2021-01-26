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
    puts "#{monster.name}があらわれた!"
    puts "#{brave.name}の攻撃!"
    damage = (offense - monster.defense) / 2
end

class Monster < Character
  def attack(brave)
    puts"#{monster.name}の攻撃！"
    damage = (offense - brave.defense) / 2
end

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)

monster = Monster.new(name: "アークデーモン", hp: 210, offense:140, defense: 80)


