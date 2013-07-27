#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

require './intelligence'

module Grimoire

	@rings_url = 'http://paizo.com/pathfinderRPG/prd/magicItems/rings.html'
	@rings = [
		['Ring of Protection +1', 2000, @rings_url + '#_ring-of-protection'],
	    ['Ring of Feather falling', 2200],
		['Ring of Sustenance', 2500],
		['Ring of Climbing', 2500],
		['Ring of Jumping', 2500],
		['Ring of Swimming', 2500],
		['Ring of Counterspells', 400],
		['Ring of Mind shielding', 800],
		['Ring of Protection +2', 800],
		['Ring of Force shield', 8500],
		['Ring of Ram, the', 8600],
		['Ring of Climbing, improved', 1000],
		['Ring of Jumping, improved', 1000],
		['Ring of Swimming, improved', 1000],
		['Ring of Animal friendship', 10800],
		['Ring of Energy resistance, minor', 1200],
		['Ring of Chameleon power', 12700],
		['Ring of Water walking', 1500],
		['Ring of Protection +3', 1800],
		['Ring of Spell storing, minor', 1800],
		['Ring of Invisibility', 2000],
		['Ring of Wizardry (I)', 2000],
		['Ring of Evasion', 2500],
		['Ring of X-ray vision', 2500],
		['Ring of Blinking', 2700],
		['Ring of Energy resistance, major', 2800],
		['Ring of Protection +4', 3200],
		['Ring of Wizardry (II)', 4000],
		['Ring of Freedom of movement', 4000],
		['Ring of Energy resistance, greater', 4400],
		['Ring of Friend shield (pair)', 5000],
		['Ring of Protection +5', 5000],
		['Ring of Shooting stars', 5000],
		['Ring of Spell storing', 5000],
		['Ring of Wizardry (III)', 7000],
		['Ring of Telekinesis', 7500],
		['Ring of Regeneration', 9000],
		['Ring of Spell turning', 10000],
		['Ring of Wizardry (IV)', 10000],
		['Ring of Three wishes', 12000],
		['Ring of Djinni calling', 12500],
		['Ring of Elemental command (air)', 20000],
		['Ring of Elemental command (earth)', 20000],
		['Ring of Elemental command (fire)', 20000],
		['Ring of Elemental command (water)', 20000],
		['Ring of Spell storing, major', 20000]
	] #46 rings

	def Grimoire.get_rings(num_minor = 0, num_medium = 0, num_major = 0)
		ret_rings = []
		#TODO: clean up code so that when you return duplicate rings it is more obvious
		num_minor.times{
			case rand(100)+1
				when 1..18
					ring = @rings[0]
				when 19..28
					ring = @rings[1]
				when 29..36
					ring = @rings[2]
				when 37..44
					ring = @rings[3]
				when 45..52
					ring = @rings[4]
				when 53..60
					ring = @rings[5]
				when 61..70
					ring = @rings[6]
				when 71..75
					ring = @rings[7]
				when 76..80
					ring = @rings[8]
				when 81..85
					ring = @rings[9]
				when 86..90
					ring = @rings[10]
				when 91..93
					ring = @rings[14]
				when 94..96
					ring = @rings[15]
				when 97..98
					ring = @rings[16]
				when 99..100
					ring = @rings[17]
			end
			case rand(100)+1
				when 1
					item_intelligence = get_item_intelligence(ring[1])
					ret_rings << ['Intellegent ' + ring[0] + ' [' + item_intelligence[0] + ']', ring[1] + item_intelligence[1]]
				when 2..31
					ret_rings << [ ring[0] + ' (with a clue as to its purpose)', ring[1]]
				else
					ret_rings << ring
			end
		}
		num_medium.times{
			case rand(100)+1
				when 1..5
					ring = @rings[6]
				when 6..8
					ring = @rings[7]
				when 9..18
					ring = @rings[8]
				when 19..23
					ring = @rings[9]
				when 24..28
					ring = @rings[10]
				when 29..34
					ring = @rings[11]
				when 35..40
					ring = @rings[12]
				when 41..46
					ring = @rings[13]
				when 47..50
					ring = @rings[14]
				when 51..56
					ring = @rings[15]
				when 57..61
					ring = @rings[16]
				when 62..66
					ring = @rings[17]
				when 67..71
					ring = @rings[18]
				when 72..76
					ring = @rings[19]
				when 77..81
					ring = @rings[20]
				when 82..85
					ring = @rings[21]
				when 86..90
					ring = @rings[22]
				when 91..93
					ring = @rings[23]
				when 94..97
					ring = @rings[24]
				when 98..100
					ring = @rings[25]
			end
			case rand(100)+1
				when 1
					item_intelligence = get_item_intelligence(ring[1])
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
					ring = @rings[15]
				when 3..7
					ring = @rings[18]
				when 8..10
					ring = @rings[19]
				when 11..15
					ring = @rings[20]
				when 16..19
					ring = @rings[21]
				when 20..25
					ring = @rings[22]
				when 26..28
					ring = @rings[23]
				when 29..32
					ring = @rings[24]
				when 33..39
					ring = @rings[25]
				when 40..49
					ring = @rings[26]
				when 50..55
					ring = @rings[27]
				when 56..60
					ring = @rings[28]
				when 61..63
					ring = @rings[29]
				when 64..65
					ring = @rings[30]
				when 66..70
					ring = @rings[31]
				when 71..74
					ring = @rings[32]
				when 75..79
					ring = @rings[33]
				when 80..83
					ring = @rings[34]
				when 84..86
					ring = @rings[35]
				when 87..88
					ring = @rings[36]
				when 89..91
					ring = @rings[37]
				when 92..93
					ring = @rings[38]
				when 94
					ring = @rings[39]
				when 95
					ring = @rings[40]
				when 96
					ring = @rings[41]
				when 97
					ring = @rings[42]
				when 98
					ring = @rings[43]
				when 99
					ring = @rings[44]
				when 100
					ring = @rings[45]
			end
			case rand(100)+1
				when 1
					item_intelligence = get_item_intelligence(ring[1])
					ret_rings << ['Intellegent ' + ring[0] + ' [' + item_intelligence[0] + ']', ring[1] + item_intelligence[1]]
				when 2..31
					ret_rings << [ ring[0] + ' (with a clue as to its purpose)', ring[1]]
				else
					ret_rings << ring
			end
		}
		return ret_rings
	end

	def Grimoire.debug_rings()
		puts "-- RINGS DEBUG --"
		puts "@rings count = " + @rings.count.to_s
	end
	
end