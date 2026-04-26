module BanCommands
    def self.register(bot)
bot.message(start_with: '!ban') do |event|
if event.message.mentions.empty?
  event.respond "Mencione alguém! Ex: !ban @pessoa"
  next
end
usuario = event.server.member(event.message.mentions.first.id)
if event.user.permission?(:ban_members, event.server)
  puts "tem permissão!"
  puts "usuario: #{usuario.inspect}"
  usuario.ban
else
  puts "sem permissão"
  event.respond "Você não pode banir!"
end
end
end
end

