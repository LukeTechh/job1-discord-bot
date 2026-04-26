require 'discordrb'
require 'dotenv/load'

bot = Discordrb::Bot.new(token: ENV["DISCORD_TOKEN"])

bot.message(content: '!oi') do |event|
 event.respond 'Fala Piá'
end

bot.member_join do |event|
   canal = bot.channel(ENV["BOAS_VINDAS_CHANNEL_ID"])
   canal.send_message("Bem vindo <@#{event.user.id}> ao TeamCodes!") 
end
require_relative "commands/kick"
require_relative "commands/ban"
require_relative "commands/warn"
require_relative "commands/levels"

BanCommands.register(bot)
KickCommands.register(bot)
WarnCommands.register(bot)
LevelsCommands.register(bot)

puts "bot online!"

bot.run

