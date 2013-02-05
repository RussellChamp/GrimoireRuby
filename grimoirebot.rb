#!/usr/env ruby
#
# grimoirebot v0.01
# by Russell Champoux
#
# based on bones v0.03
# by Jonathan Drain http://d20.jonnydigital.com/roleplaying-tools/dicebot
#
# NB: As a security measure, some IRC networks prevent IRC bots from joining
# channels too quickly after connecting. Solve with this:
# /msg bones @@@join #channel

require 'socket'
require 'strscan'
require './grimoire'

module GrimoireBot
  class Client # an "instance" of grimoirebot; generally only one
    def initialize(nick, server, port, channels)
      @running = true
      
      @nick = nick
      @server = server # one only
      @port = port
      @channels = channels

      connect()
      run()
    end

    def connect
      @connection = Connection.new(@server, @port)
      
      @connection.speak "NICK #{@nick}"
      @connection.speak "USER #{@nick} grimoire * :Grimoire Item bot:"

      # TODO: fix join bug
      join(@channels)
    end

    def join(channels)
      channels.each do |channel|
        # join channel
        @connection.speak "JOIN #{channel}"
        puts "Joining #{channel}"
      end
    end
    
    def join_quietly(channels)
      channels.each do |channel|
        # join channel
        @connection.speak("JOIN #{channel}", true)
      end
    end
    
    def run # go
      # stay connected
      # handle replies

      while @running
        while @connection.disconnected? # never give up reconnect
          sleep 10
          connect()
        end
        
        handle_msg (@connection.listen)
      end
    end
    
    def handle_msg(msg)
      case msg
        when nil
          #nothing
        when /^PING (.+)$/
          @connection.speak("PONG #{$1}", true) # PING? PONG!
          # TODO: Check if channels are joined before attempting redundant joins
          join_quietly(@channels)
        when /^:/ # msg
          message = Message.new(msg)
          respond(message)
        else
          puts "RAW>> #{msg}"
          #nothing
      end
    end
    
    def respond(msg)
      # msg :name, :hostname, :mode, :origin, :privmsg, :text
      if msg.name == "Krowbar" && msg.text == "Grimoire, quit"
        quit(msg.text)
      end
     
      if msg.text =~ /^grimoire(:|,*) (\S+)( (.*))?/i
        prefix = "grimoire"
        command = $2
        args = $4
        # do command - switch statement or use a command handler class
        c = command_handler(prefix, command, args)
        reply(msg, c) if c
      ###ok let's do all the item stuff here
      elsif msg.text =~ /^grimoire (get_items|get_armor_and_shields|get_weapons|get_potions|get_rings|get_scrolls|get_wands|wondrous_items) (.*)/i
        puts 'Got command ' + $1.to_s + ' with arguments ' + $2.to_s
      ###
      elsif msg.text =~ /^@@@join (#.*)/
        join $1.to_s
      elsif msg.text == "hay"
        reply(msg, "good day")
      elsif msg.text =~ /^(!|@)(\S+)( (.*))?/
        prefix = $1
        command = $2
        args = $4
        #do command
        c = command_handler(prefix, command, args)
        reply(msg, c) if c
      end
    end
    
    def command_handler(prefix, command, args)
      c = CommandHandler.new(prefix, command, args)
      return c.handle
    end

    def reply(msg, message) # reply to a pm or channel message
      if msg.privmsg
        @connection.speak "#{msg.mode} #{msg.name} :#{message}"
      else
        @connection.speak "#{msg.mode} #{msg.origin} :#{msg.name}, #{message}"
      end
    end
    
    def pm(person, message)
      @connection.speak "PRIVMSG #{person} :#{message}"
    end
    
    def say(channel, message)
      pm(channel, message) # they're functionally the same
    end
    
    def notice(person, message)
      @conection.speak "NOTICE #{person} :#{message}"
    end

    def quit(message)
      @connection.speak "QUIT :#{message}"
      @connection.disconnect
      @running = false;
    end
  end

  class Message
    attr_accessor :name, :hostname, :mode, :origin, :privmsg, :text
    
    def initialize(msg)
      parse(msg)
    end
    
    def parse(msg)
      
      # filter out bold and colour
      # feature suggested by KT
      msg = msg.gsub(/\x02/, '') # bold
      msg = msg.gsub(/\x03(\d)?(\d)?/, '') # colour

      case msg
        when nil
          puts "heard nil? wtf"
        when /^:(\S+)!(\S+) (PRIVMSG|NOTICE) ((#?)\S+) :(.+)/
          @name = $1
          @hostname = $2
          @mode = $3
          @origin = $4
          if ($5 == "#")
            @privmsg = false
          else
            @privmsg = true
          end
          @text = $6.chomp
          print()
      end
    end

    def print
      puts "[#{@origin}|#{@mode}] <#{@name}> #{@text}"
    end
  end
  
  class Connection # a connection to an IRC server; only one so far
    attr_reader :disconnected

    def initialize(server, port)
      @server = server
      @port = port
      @disconnected = false
      connect()
    end
    
    def connect
      # do some weird stuff with ports
      @socket = TCPSocket.open(@server, @port)
      puts "hammer connected!"
      @disconnected = false
    end

    def disconnected? # inadvertently disconnected
      return @socket.closed? || @disconnected
    end

    def disconnect
      @socket.close
    end

    def speak(msg,quietly = nil)
      begin
        if quietly != true
          puts("spoke>> " + msg)
        end
        @socket.write(msg + "\n")
      rescue Errno::ECONNRESET
        @disconnected = true;
      end 
    end
  
    def listen  # poll socket for lines. luckily, listen is sleepy
      sockets = select([@socket], nil, nil, 1)
      if sockets == nil
        return nil
      else
        begin
          s = sockets[0][0] # read from socket 1
          
          if s.eof?
            @disconnected = true
            return nil
          end
          
          msg = s.gets
          
        rescue Errno::ECONNRESET
          @disconnected = true
          return nil
        end
      end
    end
  end

  class CommandHandler
    def initialize(prefix, command, args)
      @prefix = prefix
      @command = command
      @args = args
      @args.strip if @args
    end
    
    def handle
      case @command
        when "chargen"
          result = handle_chargen
        when "help"
          result = handle_help
        else
          result = nil
        #end
      end
      return result
    end    
    
    def handle_help
      result =  "Request items in the form 'grimoire get_items num_minor num_medium num_major' " +
                "Possible get requests include get_items, get_armor_and_sheilds, " +
                "get_weapons, get_potions, get_rings, get_scrolls, get_wands," +
                "and wondrous_items"
      return result
    end

    def handle_join(client,channel)
      client.join(channel)
    end
  end
end