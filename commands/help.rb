module HelpCommand
  def self.register(bot)
    bot.command(:help) do |event|
event.channel.send_embed do |embed|
embed.color = 0x3498DB
embed.title = "📖 Comandos disponíveis"
embed.description = "*!ban @pessoa* — use para banir um membro do servidor\n*!kick @pessoa* — use para tirar do servidor"
end
nil
end
end
end