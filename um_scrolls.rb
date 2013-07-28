#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

require './um_spells'

module GrimoireUM

	@scrolls_cost = [12.5, 25, 150, 375, 700, 1125, 1650, 2275, 3000, 3825]

	def GrimoireUM.get_scroll(level, type = nil)
		if type.nil?
			case rand(2)
				when 0
					type = 'arcane'
				when 1
					type = 'divine'
			end
		end

		case type
		when 'arcane'		
			case level
				when 0
					return ['Scroll of ' + @spells_arcane_level_0[rand(@spells_arcane_level_0.count)] + ' (arcane, spell level 0, caster level 1)', @scrolls_cost[0]]
				when 1
					return ['Scroll of ' + @spells_arcane_level_1[rand(@spells_arcane_level_1.count)] + ' (arcane, spell level 1, caster level 1)', @scrolls_cost[1]]
				when 2
					return ['Scroll of ' + @spells_arcane_level_2[rand(@spells_arcane_level_2.count)] + ' (arcane, spell level 2, caster level 3)', @scrolls_cost[2]]
				when 3
					return ['Scroll of ' + @spells_arcane_level_3[rand(@spells_arcane_level_3.count)] + ' (arcane, spell level 3, caster level 5)', @scrolls_cost[3]]
				when 4
					return ['Scroll of ' + @spells_arcane_level_4[rand(@spells_arcane_level_4.count)] + ' (arcane, spell level 4, caster level 7)', @scrolls_cost[4]]
				when 5
					return ['Scroll of ' + @spells_arcane_level_5[rand(@spells_arcane_level_5.count)] + ' (arcane, spell level 5, caster level 9)', @scrolls_cost[5]]
				when 6
					return ['Scroll of ' + @spells_arcane_level_6[rand(@spells_arcane_level_6.count)] + ' (arcane, spell level 6, caster level 11)', @scrolls_cost[6]]
				when 7
					return ['Scroll of ' + @spells_arcane_level_7[rand(@spells_arcane_level_7.count)] + ' (arcane, spell level 7, caster level 13)', @scrolls_cost[7]]
				when 8
					return ['Scroll of ' + @spells_arcane_level_8[rand(@spells_arcane_level_8.count)] + ' (arcane, spell level 8, caster level 15)', @scrolls_cost[8]]
				when 9
					return ['Scroll of ' + @spells_arcane_level_9[rand(@spells_arcane_level_9.count)] + ' (arcane, spell level 9, caster level 17)', @scrolls_cost[9]]
				else
					return ['invalid scroll level', 0]
			end
		when 'divine'
			case level
				when 0
					return ['Scroll of ' + @spells_divine_level_0[rand(@spells_divine_level_0.count)] + ' (divine, spell level 0, caster level 1)', @scrolls_cost[0]]
				when 1
					return ['Scroll of ' + @spells_divine_level_1[rand(@spells_divine_level_1.count)] + ' (divine, spell level 1, caster level 1)', @scrolls_cost[1]]
				when 2
					return ['Scroll of ' + @spells_divine_level_2[rand(@spells_divine_level_2.count)] + ' (divine, spell level 2, caster level 3)', @scrolls_cost[2]]
				when 3
					return ['Scroll of ' + @spells_divine_level_3[rand(@spells_divine_level_3.count)] + ' (divine, spell level 3, caster level 5)', @scrolls_cost[3]]
				when 4
					return ['Scroll of ' + @spells_divine_level_4[rand(@spells_divine_level_4.count)] + ' (divine, spell level 4, caster level 7)', @scrolls_cost[4]]
				when 5
					return ['Scroll of ' + @spells_divine_level_5[rand(@spells_divine_level_5.count)] + ' (divine, spell level 5, caster level 9)', @scrolls_cost[5]]
				when 6
					return ['Scroll of ' + @spells_divine_level_6[rand(@spells_divine_level_6.count)] + ' (divine, spell level 6, caster level 11)', @scrolls_cost[6]]
				when 7
					return ['Scroll of ' + @spells_divine_level_7[rand(@spells_divine_level_7.count)] + ' (divine, spell level 7, caster level 13)', @scrolls_cost[7]]
				when 8
					return ['Scroll of ' + @spells_divine_level_8[rand(@spells_divine_level_8.count)] + ' (divine, spell level 8, caster level 15)', @scrolls_cost[8]]
				when 9
					return ['Scroll of ' + @spells_divine_level_9[rand(@spells_divine_level_9.count)] + ' (divine, spell level 9, caster level 17)', @scrolls_cost[9]]
				else
					return ['invalid scroll level', 0]
			end
		else
			return ['invalid magic type', 0]
		end
	end

	def GrimoireUM.get_scrolls(num_minor = 0, num_medium = 0, num_major = 0)
		#TODO: finish scrolls
		ret_scrolls = []
		num_minor.times{
			case rand(100)+1
				when 1..5
					ret_scrolls << get_scroll(0)
				when 6..50
					ret_scrolls << get_scroll(1)
				when 51..95
					ret_scrolls << get_scroll(2)
				when 96..100
					ret_scrolls << get_scroll(3)
			end
		}
		num_medium.times{
			case rand(100)+1
				when 1..5
					ret_scrolls << get_scroll(2)
				when 6..65
					ret_scrolls << get_scroll(3)
				when 66..95
					ret_scrolls << get_scroll(4)
				when 96..100
					ret_scrolls << get_scroll(5)
			end
		}
		num_major.times{
			case rand(100)+1
				when 1..5
					ret_scrolls << get_scroll(4)
				when 6..50
					ret_scrolls << get_scroll(5)
				when 51..70
					ret_scrolls << get_scroll(6)
				when 71..85
					ret_scrolls << get_scroll(7)
				when 86..95
					ret_scrolls << get_scroll(8)
				when 96..100
					ret_scrolls << get_scroll(9)
			end
		}
		return ret_scrolls
	end

	def GrimoireUM.debug_scrolls()
		puts "-- SCROLLS DEBUG --"
		puts 'level 0 spell: ' + @scrolls_cost[0].to_s + ' gp'
		puts 'level 1 spell: ' + @scrolls_cost[1].to_s + ' gp'
		puts 'level 2 spell: ' + @scrolls_cost[2].to_s + ' gp'
		puts 'level 3 spell: ' + @scrolls_cost[3].to_s + ' gp'
		puts 'level 4 spell: ' + @scrolls_cost[4].to_s + ' gp'
		puts 'level 5 spell: ' + @scrolls_cost[5].to_s + ' gp'
		puts 'level 6 spell: ' + @scrolls_cost[6].to_s + ' gp'
		puts 'level 7 spell: ' + @scrolls_cost[7].to_s + ' gp'
		puts 'level 8 spell: ' + @scrolls_cost[8].to_s + ' gp'
		puts 'level 9 spell: ' + @scrolls_cost[9].to_s + ' gp'
	end
end