module WarnCommands
   WARNS = {}

   def self.register(bot)
bot.message(start_with: '!warn') do |event|
if event.message.mentions.empty?
   event.respond "Mencione alguém! Ex:!warn @pessoa" 
   next  
end   
usuario = event.server.member(event.message.mentions.first.id)
if event.user.permission?(:kick_members, event.server)

   WARNS[usuario.id.to_s] ||= 0
   WARNS[usuario.id.to_s] += 1

   if WARNS[usuario.id.to_s] >=3
      usuario.kick
      event.respond "#{usuario.username} foi kickado por acumular 3 warns!"
   else   
      event.respond "#{usuario.username} recebeu um warn! Total #{WARNS[usuario.id.to_s]}"
end
end
end
end
end
