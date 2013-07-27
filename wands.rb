#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

require './spells'

module Grimoire

	@wands_cost = [375, 750, 4500, 11250, 21000]

	def Grimoire.get_wand(level)
		case level
		when 0
			return ['Wand of ' + @spells_arcane_level_0[rand(@spells_arcane_level_0.count)] + ' (spell level 0, caster level 1)', @wands_cost[0]]
		when 1
			return ['Wand of ' + @spells_arcane_level_1[rand(@spells_arcane_level_0.count)] + ' (spell level 1, caster level 1)', @wands_cost[0]]
		when 2
			return ['Wand of ' + @spells_arcane_level_2[rand(@spells_arcane_level_0.count)] + ' (spell level 2, caster level 3)', @wands_cost[0]]
		when 3
			return ['Wand of ' + @spells_arcane_level_3[rand(@spells_arcane_level_0.count)] + ' (spell level 3, caster level 5)', @wands_cost[0]]
		when 4
			return ['Wand of ' + @spells_arcane_level_4[rand(@spells_arcane_level_0.count)] + ' (spell level 4, caster level 7)', @wands_cost[0]]
		else
			return ['invalid wand level', 0]
		end
	end

	def Grimoire.get_wands(num_minor = 0, num_medium = 0, num_major = 0)
		#TODO: Finish wands
		ret_wands = []
		num_minor.times{
			case rand(100)+1
				when 1..5
					ret_wands << get_wand(0)
				when 6..60
					ret_wands << get_wand(1)
				when 61..100
					ret_wands << get_wand(2)
			end
		}
		num_medium.times{
			case rand(100)+1
				when 1..60
					ret_wands << get_wand(2)
				when 61..100
					ret_wands << get_wand(3)
			end
		}
		num_major.times{
			case rand(100)+1
				when 1..60
					ret_wands << get_wand(3)
				when 61..100
					ret_wands << get_wand(4)
			end
		}
		return ret_wands
	end

	def Grimoire.debug_wands()
		puts "-- WANDS DEBUG --"
		puts "no specific wands test!"
	end
end