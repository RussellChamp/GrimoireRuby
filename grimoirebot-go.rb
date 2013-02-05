#!/usr/env ruby
#
# grimoirebot v0.01
# by Russell Champoux
#
# based on bones v0.03
# by Jonathan Drain http://d20.jonnydigital.com/roleplaying-tools/dicebot
#

require File.dirname(__FILE__) + '/grimoirebot.rb'

your_bot_name = "Grimoire-bot"
server_to_join = "chat.freenode.net"
port = 6667
list_of_channels = ["#krowbar-private"]

begin
  client = GrimoireBot::Client.new(your_bot_name, server_to_join, port, list_of_channels)
end