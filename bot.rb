bot.get_updates(fail_silently: true) do |message|
  puts "@#{message.from.username}: #{message.text}"
  command = message.get_command_for(bot)

  message.reply do |reply|
    case command
    when /help/i
      reply.text = "I have a lot of things to say ! try the followings : 
      /start
      /coaching
      /night
      /lenstra
      /javass
      /vhdl"
    when /start/i
      reply.text = "I have one purpose, making coaching event greater ! (try /help)"
    when /coaching/i
      reply.text = "COACHING IS LOVE <3"
    when /lenstra/i
      reply.text = "If you don't get it, think about it :-)"
    when /javass/i
      reply.text = "Le rendu final approche à grand pas !"
    when /vhdl/i
      reply.text = "NO GOD NO, PLEASE NO !!!"
    when /night/
      reply.text = "Bonne nuit belles et beaux coachs de l'amour <3"
    when /dab/
      reply.text  = "#{message.from.first_name} effectue le dab!"
    else
      reply.text = "I have no idea what #{command.inspect} means (yet :p)."
    end
    puts "sending #{reply.text.inspect} to @#{message.from.username}"
    reply.send_with(bot)
  end
end
