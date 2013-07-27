#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

require './intelligence'

module Grimoire

	@rods_url = "http://paizo.com/pathfinderRPG/prd/magicItems/rods.html"
	@rods = [
		['Rod of Metamagic, Enlarge, lesser', 3000, @rods_url + "#metamagic-enlarge"],
		['Rod of Metamagic, Extend, lesser', 3000],
		['Rod of Metamagic, Silent, lesser', 3000],
		['Rod of Immovable', 5000],
		['Rod of Metamagic, Empower, lesser', 9000],
		['Rod of Metal and mineral detection', 10500],
		['Rod of Cancellation', 11000],
		['Rod of Metamagic, Enlarge', 11000],
		['Rod of Metamagic, Extend', 11000],
		['Rod of Metamagic, Silent', 11000],
		['Rod of Wonder', 12000],
		['Rod of Python', 13000],
		['Rod of Metamagic, Maximize, lesser', 14000],
		['Rod of Flame extinguishing', 15000],
		['Rod of Viper', 19000],
		['Rod of Enemy detection', 23,500],
		['Rod of Metamagic, Enlarge, greater', 24500],
		['Rod of Metamagic, Extend, greater', 24500],
		['Rod of Metamagic, Silent, greater', 24500],
		['Rod of Splendor', 25000],
		['Rod of Withering', 25000],
		['Rod of Metamagic, Empower', 32500],
		['Rod of Thunder and lightning', 33000],
		['Rod of Metamagic, Quicken, lesser', 35000],
		['Rod of Negation', 37000],
		['Rod of Absorption', 50000],
		['Rod of Flailing', 50000],
		['Rod of Metamagic, Maximize', 54000],
		['Rod of Rulership', 60000],
		['Rod of Security', 61000],
		['Rod of Lordly might', 70000],
		['Rod of Metamagic, Empower, greater', 73000],
		['Rod of Metamagic, Quicken', 75500],
		['Rod of Alertness', 85000],
		['Rod of Metamagic, Maximize, greater', 121500],
		['Rod of Metamagic, Quicken, greater', 170000]
	] #36 rods

	def Grimoire.get_rods(num_minor = 0, num_medium = 0, num_major = 0) #argument 'num_minor' is kept to retain similarity between get functions
		if !num_minor.zero?
			puts "There are no minor rods"
		end
		ret_rods = []
		#TODO: clean up code so that when you return duplicate rods it is more obvious
		num_medium.times{
			case rand(100)+1
				when 1..7
					rod = @rods[0]
				when 8..14
					rod = @rods[1]
				when 15..21
					rod = @rods[2]
				when 22..28
					rod = @rods[3]
				when 29..35
					rod = @rods[4]
				when 36..42
					rod = @rods[5]
				when 43..53
					rod = @rods[6]
				when 54..57
					rod = @rods[7]
				when 58..61
					rod = @rods[8]
				when 62..65
					rod = @rods[9]
				when 66..71
					rod = @rods[10]
				when 72..79
					rod = @rods[11]
				when 80..83
					rod = @rods[12]
				when 84..89
					rod = @rods[13]
				when 90..97
					rod = @rods[14]
				when 98..99
					rod = @rods[21]
				when 100
					rod = @rods[23]
			end
			case rand(100)+1
				when 1
					item_intelligence = get_item_intelligence(rod[1])
					ret_rods << ['Intellegent ' + rod[0] + ' [' + item_intelligence[0] + ']', rod[1] + item_intelligence[1]]
				when 2..31
					ret_rods << [rod[0] + ' (with a clue as to its purpose)', rod[1]]
				else
					ret_rods << rod
			end
		}
		num_major.times{
			case rand(100)+1
				when 1..4
					rod = @rods[6]
				when 5..6
					rod = @rods[7]
				when 7..8
					rod = @rods[8]
				when 9..10
					rod = @rods[9]
				when 11..14
					rod = @rods[10]
				when 15..19
					rod = @rods[11]
				when 20..21
					rod = @rods[13]
				when 22..25
					rod = @rods[14]
				when 26..30
					rod = @rods[15]
				when 31..36
					rod = @rods[16]
				when 37..42
					rod = @rods[17]
				when 43..48
					rod = @rods[18]
				when 49..53
					rod = @rods[19]
				when 54..58
					rod = @rods[20]
				when 59..64
					rod = @rods[21]
				when 65..69
					rod = @rods[22]
				when 70..73
					rod = @rods[23]
				when 74..77
					rod = @rods[24]
				when 78..80
					rod = @rods[25]
				when 81..84
					rod = @rods[26]
				when 85..86
					rod = @rods[27]
				when 87..88
					rod = @rods[28]
				when 89..90
					rod = @rods[29]
				when 91..92
					rod = @rods[30]
				when 93..94
					rod = @rods[31]
				when 95..96
					rod = @rods[32]
				when 97..98
					rod = @rods[33]
				when 99
					rod = @rods[34]
				when 100
					rod = @rods[35]
			end
			case rand(100)+1
				when 1
					item_intelligence = get_item_intelligence(rod[1])
					ret_rods << ['Intellegent ' + rod[0] + ' [' + item_intelligence[0] + ']', rod[1] + item_intelligence[1]]
				when 2..31
					ret_rods << [rod[0] + ' (with a clue as to its purpose)', rod[1]]
				else
					ret_rods << rod
			end
		}
		return ret_rods
	end

	def Grimoire.debug_rods()
		puts "-- RODS DEBUG --"
		puts "@rods count = " + @rods.count.to_s
	end
end