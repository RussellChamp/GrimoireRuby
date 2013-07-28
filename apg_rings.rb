#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

require './intelligence'

module GrimoireAPG

	@rings_url = 'http://paizo.com/pathfinderRPG/prd/advanced/magicItems/rings.html'
	@rings = [
		['Dungeon ring, prisoner\'s', 250, @rings_url + '#dungeon-ring'],
		['Arcane signets', 1000],
		['Maniacal Devices', 5000],
		['Delayed doom (1 stone)', 5000],
		['Forcefangs', 8000],
		['Revelation, lesser', 10000],
		['Delayed doom (2 stones)', 10000],
		['Delayed doom (3 stones)', 15000],
		['Retribution', 15000],
		['Dungeon ring, jailer\'s', 16000],
		['Revelation, greater', 16000],
		['Delayed doom (4 stones)', 20000],
		['Revelation, superior', 24000],
		['Delayed doom (5 stones)', 25000],
		['Delayed doom (6 stones)', 30000],
		['Delayed doom (7 stones)', 35000],
		['Delayed doom (8 stones)', 40000],
		['Delayed doom (9 stones)', 45000],
	] #18 rings

	def GrimoireAPG.get_rings(num_minor = 0, num_medium = 0, num_major = 0)
		ret_rings = []
		#TODO: clean up code so that when you return duplicate rings it is more obvious
		num_minor.times{
			case rand(100)+1
				when 1..10
					ring = @rings[0]
				when 11..40
					ring = @rings[1]
				when 41..80
					ring = @rings[2]
				when 81..95
					ring = @rings[3]
				when 96..100
					ring = @rings[4]
			end
			case rand(100)+1
				when 1
					item_intelligence = Grimoire.get_item_intelligence(ring[1])
					ret_rings << ['Intellegent ' + ring[0] + ' [' + item_intelligence[0] + ']', ring[1] + item_intelligence[1]]
				when 2..31
					ret_rings << [ ring[0] + ' (with a clue as to its purpose)', ring[1]]
				else
					ret_rings << ring
			end
		}
		num_medium.times{
			case rand(100)+1
				when 1..25
					ring = @rings[2]
				when 26..46
					ring = @rings[3]
				when 47..52
					ring = @rings[4]
				when 53..59
					ring = @rings[5]
				when 60..70
					ring = @rings[6]
				when 71..80
					ring = @rings[7]
				when 81..85
					ring = @rings[8]
				when 86..90
					ring = @rings[9]
				when 91..96
					ring = @rings[10]
				when 97..98
					ring = @rings[11]
				when 99.
					ring = @rings[12]
				when 100
					ring = @rings[13]
			end
			case rand(100)+1
				when 1
					item_intelligence = Grimoire.get_item_intelligence(ring[1])
					ret_rings << ['Intellegent ' + ring[0] + ' [' + item_intelligence[0] + ']', ring[1] + item_intelligence[1]]
				when 2..31
					ret_rings << [ ring[0] + ' (with a clue as to its purpose)', ring[1]]
				else
					ret_rings << ring
			end
		}
		num_major.times{
			case rand(100)+1
				when 1..2
					ring = @rings[6]
				when 3..11
					ring = @rings[7]
				when 12..29
					ring = @rings[8]
				when 30..35
					ring = @rings[9]
				when 36..38
					ring = @rings[10]
				when 39..68
					ring = @rings[11]
				when 69
					ring = @rings[12]
				when 70..85
					ring = @rings[13]
				when 86..93
					ring = @rings[14]
				when 94..97
					ring = @rings[15]
				when 98..99
					ring = @rings[16]
				when 100
					ring = @rings[17]
			end
			case rand(100)+1
				when 1
					item_intelligence = Grimoire.get_item_intelligence(ring[1])
					ret_rings << ['Intellegent ' + ring[0] + ' [' + item_intelligence[0] + ']', ring[1] + item_intelligence[1]]
				when 2..31
					ret_rings << [ ring[0] + ' (with a clue as to its purpose)', ring[1]]
				else
					ret_rings << ring
			end
		}
		return ret_rings
	end

	def GrimoireAPG.debug_rings()
		puts "-- APG RINGS DEBUG --"
		puts "@rings count = " + @rings.count.to_s
	end
	
end