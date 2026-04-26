module LevelsCommands
  XP = {}
  NIVEL_USUARIO = {}
  LEVELS = {
  1 => 0,
  2 => 500,
  3 => 1400,
  4 => 2500,
  5 => 5000
  }

  def self.register(bot)
  
  bot.message do |event|
  
nivel_maximo = LEVELS.keys.last

if NIVEL_USUARIO[event.user.id.to_s] == nivel_maximo
  next
end

  XP[event.user.id.to_s] ||= 0
  XP[event.user.id.to_s] += 10

  xp_atual = XP[event.user.id.to_s]
  nivel_atual = LEVELS.select { |nivel, xp_necessario| xp_atual >= xp_necessario }.keys.last
  
  nivel_anterior = NIVEL_USUARIO[event.user.id.to_s] || 1
  NIVEL_USUARIO[event.user.id.to_s] = nivel_atual

  if nivel_atual > nivel_anterior
    event.respond "<@#{event.user.id}> subiu para o nível #{nivel_atual}! 🥳"
end    
end
end
end