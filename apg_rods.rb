#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

require './intelligence'

module GrimoireAPG

	@rods_url = "http://paizo.com/pathfinderRPG/prd/advanced/magicItems/rods.html"
	@rods = [
		['Metamagic, merciful, lesser', 1500, @rods_url + "#metamagic,-merciful"],
		['Metamagic, bouncing, lesser', 3000],
		['Metamagic, disruptive, lesser', 3000],
		['Metamagic, ectoplasmic, lesser', 3000],
		['Metamagic, elemental, lesser', 3000],
		['Metamagic, focused, lesser', 3000],
		['Metamagic, intensified, lesser', 3000],
		['Metamagic, lingering, lesser', 3000],
		['Metamagic, reach, lesser', 3000],
		['Metamagic, selective, lesser', 3000],
		['Metamagic, merciful', 5500],
		['Metamagic, persistent, lesser', 9000],
		['Metamagic, sickening, lesser', 9000],
		['Metamagic, thundering, lesser', 9000],
		['Metamagic, bouncing', 11000],
		['Metamagic, disruptive', 11000],
		['Metamagic, ectoplasmic', 11000],
		['Metamagic, elemental', 11000],
		['Metamagic, focused', 11000],
		['Metamagic, intensified', 11000],
		['Metamagic, lingering', 11000],
		['Metamagic, reach', 11000],
		['Metamagic, selective', 11000],
		['Metamagic, merciful, greater', 12250],
		['Metamagic, dazing, lesser', 14000],
		['Metamagic, bouncing, greater', 24500],
		['Metamagic, disruptive, greater', 24500],
		['Metamagic, ectoplasmic, greater', 24500],
		['Metamagic, elemental, greater', 24500],
		['Metamagic, focused, greater', 24500],
		['Metamagic, intensified, greater', 24500],
		['Metamagic, lingering, greater', 24500],
		['Metamagic, reach, greater', 24500],
		['Metamagic, selective, greater', 24500],
		['Metamagic, persistent', 32500],
		['Metamagic, sickening', 32500],
		['Metamagic, thundering', 32500],
		['Metamagic, dazing', 54000],
		['Metamagic, persistent, greater', 73000],
		['Metamagic, sickening, greater', 73000],
		['Metamagic, thundering, greater', 73000],
		['Metamagic, dazing, greater', 121500],
	] #42 rods

	def GrimoireAPG.get_rods(num_minor = 0, num_medium = 0, num_major = 0) #argument 'num_minor' is kept to retain similarity between get functions
		if !num_minor.zero?
			puts "There are no minor rods"
		end
		ret_rods = []
		#TODO: clean up code so that when you return duplicate rods it is more obvious
		num_medium.times{
			case rand(100)+1
				when 1..3
					rod = @rods[0]
				when 4..6
					rod = @rods[1]
				when 7..11
					rod = @rods[2]
				when 12..21
					rod = @rods[3]
				when 22..27
					rod = @rods[4]
				when 28..33
					rod = @rods[5]
				when 34..36
					rod = @rods[6]
				when 37..39
					rod = @rods[7]
				when 40..43
					rod = @rods[8]
				when 44..53
					rod = @rods[9]
				when 54..55
					rod = @rods[10]
				when 56..58
					rod = @rods[11]
				when 59..62
					rod = @rods[12]
				when 63..66
					rod = @rods[13]
				when 67..70
					rod = @rods[14]
				when 71..74
					rod = @rods[15]
				when 75..80
					rod = @rods[16]
				when 81..83
					rod = @rods[17]
				when 84..86
					rod = @rods[18]
				when 87..88
					rod = @rods[19]
				when 89..90
					rod = @rods[20]
				when 91..93
					rod = @rods[21]
				when 94..97
					rod = @rods[22]
				when 98
					rod = @rods[23]
				when 99..100
					rod = @rods[24]
			end
			case rand(100)+1
				when 1
					item_intelligence = Grimoire.get_item_intelligence(rod[1])
					ret_rods << ['Intellegent ' + rod[0] + ' [' + item_intelligence[0] + ']', rod[1] + item_intelligence[1]]
				when 2..31
					ret_rods << [rod[0] + ' (with a clue as to its purpose)', rod[1]]
				else
					ret_rods << rod
			end
		}
		num_major.times{
			case rand(100)+1
				when 1..3
					rod = @rods[14]
				when 4..9
					rod = @rods[15]
				when 10..20
					rod = @rods[16]
				when 21..28
					rod = @rods[17]
				when 29..36
					rod = @rods[18]
				when 37..39
					rod = @rods[19]
				when 40..43
					rod = @rods[20]
				when 44..46
					rod = @rods[21]
				when 47..54
					rod = @rods[22]
				when 55..56
					rod = @rods[23]
				when 57..58
					rod = @rods[24]
				when 59..60
					rod = @rods[25]
				when 61..63
					rod = @rods[26]
				when 64..69
					rod = @rods[27]
				when 70..73
					rod = @rods[28]
				when 74..77
					rod = @rods[29]
				when 78..79
					rod = @rods[30]
				when 80
					rod = @rods[31]
				when 81..82
					rod = @rods[32]
				when 83..86
					rod = @rods[33]
				when 87..89
					rod = @rods[34]
				when 90..91
					rod = @rods[35]
				when 92..93
					rod = @rods[36]
				when 94..95
					rod = @rods[37]
				when 96..97
					rod = @rods[38]
				when 98
					rod = @rods[39]
				when 99
					rod = @rods[40]
				when 100
					rod = @rods[41]
			end
			case rand(100)+1
				when 1
					item_intelligence = Grimoire.get_item_intelligence(rod[1])
					ret_rods << ['Intellegent ' + rod[0] + ' [' + item_intelligence[0] + ']', rod[1] + item_intelligence[1]]
				when 2..31
					ret_rods << [rod[0] + ' (with a clue as to its purpose)', rod[1]]
				else
					ret_rods << rod
			end
		}
		return ret_rods
	end

	def GrimoireAPG.debug_rods()
		puts "-- APG RODS DEBUG --"
		puts "@rods count = " + @rods.count.to_s
	end
end