module KickCommands
   def self.register(bot)
bot.message(start_with: '!kick') do |event|
if event.message.mentions.empty?
  event.respond "Menciona alguém! Ex: !kick @pessoa"
  next
end
usuario = event.server.member(event.message.mentions.first.id)
if event.user.permission?(:kick_members, event.server)
  puts "tem permissão!"
  puts "usuario: #{usuario.inspect}"
  usuario.kick
else
  puts "sem permissão"
  event.respond 'Você não tem permissão'
end
end
end
end

