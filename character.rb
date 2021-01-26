
require "./character.rb"

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

require "./brave.rb"

class Brave < Character
  def attack(monster)
    puts "#{brave.name}の攻撃!"
    damage = (offense - monster.defense) / 2
    monster.hp = monster.hp - damage
end

require "./brave.rb"

class Monster < Character
  def attack(brave)
    puts"#{monster.name}の攻撃！"
    damage = (offense - brave.defense) / 2
    brave.hp = brave.hp - damage
end

require "./main.rb"

puts "#{monster.name}があらわれた!"

loop do
  damage = (offense - monster.defense) /2
  damage = (offense - brave.defense) /2
  if monster.hp > 0
    break
  end

  puts "#{monster.name}をやっつけた！"


brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)

monster = Monster.new(name: "アークデーモン", hp: 210, offense:140, defense: 80)


