#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

module Grimoire

	#list of potion-able spells taken from
	#http://paizo.com/threads/rzs2loj8?Alchemists-Lab-Potion-List-and-Questions
	#for each spell level
	#@potions_url = 'http://paizo.com/pathfinderRPG/prd/spells/bleed.html'
	#TODO: implement url list later
	@potions_level_0 = ['Bleed','Touch of Fatigue','Resistance','Stabilize','Guidance']
	@potions_level_1 = ['Cure Light Wounds','Chill Touch','Doom','Endure Elements','Enlarge Person','Feather Fall','Hide from Animals',
		'Hide from Undead','Inflict Light Wounds','Jump','Mage Armor','Magic Fangs','Magic Weapon','Pass without Trace','Protection from Evil',
		'Reduce Person','Remove Fear','Sanctuary','Shield of Faith']
	@potions_level_2 = ['Aid','Barkskin','Bear\'s Endurance','Blindness/Deafness','Blur','Bull\'s Strength','Cat\'s Grace','Cure Moderate Wounds',
		'Darkvision','Delay Poison','Eagle\'s Splendor','Fox\'s Cunning','Heroism','Hold Person','Inflict Moderate Wounds','Invisibility',
		'Owl\'s Wisdom','Protection From Arrows','Rage','Remove Paralysis','Resist Energy','Restoration, Lesser','Tongues','Touch of Idiocy',
		'Undetectable Alignment']
	@potions_level_3 = ['Bestow Curse','Confusion','Contagion','Crushing Despair','Cure Serious Wounds','Deep Slumber','Dispel Magic','Displacement',
		'Gaseous Form','Good Hope','Haste','Inflict Serious Wounds','Keen Edge','Magic Circle against Evil','Magic Fang, Greater','Magic Weapon, Greater',
		'Magic Vestment','Neutralize Poison','Nondetection','Poison','Protection from Energy','Remove Blindness/Deafness','Remove Curse','Remove Disease',
		'Slow','Water Breathing','Water Walking']
	#potion cost assumed to just be the lowest value (ie the 'Cleric,Druid,Wizard' costs)
	@potion_level_0_cost = 25
	@potion_level_1_cost = 50
	@potion_level_2_cost = 300
	@potion_level_3_cost = 750

	def Grimoire.get_potion(level)
		case level
			when 0
				return ['Potion/Oil of ' + @potions_level_0[rand(@potions_level_0.count)] + ' (spell level 0, caster level 1)', @potion_level_0_cost]
			when 1
				return ['Potion/Oil of ' + @potions_level_1[rand(@potions_level_1.count)] + ' (spell level 1, caster level 1)', @potion_level_1_cost]
			when 2
				return ['Potion/Oil of ' + @potions_level_2[rand(@potions_level_2.count)] + ' (spell level 2, caster level 3)', @potion_level_2_cost]
			when 3
				return ['Potion/Oil of ' + @potions_level_3[rand(@potions_level_3.count)] + ' (spell level 3, caster level 5)', @potion_level_3_cost]
			else
				return ['invalid potion level', 0]
		end
	end

	def Grimoire.get_potions(num_minor = 0, num_medium = 0, num_major = 0)
		ret_potions = []
		num_minor.times{
			case rand(100)+1
				when 1..20
					ret_potions << get_potion(0)
				when 21..60
					ret_potions << get_potion(1)
				when 61..100
					ret_potions << get_potion(2)
			end
		}
		num_medium.times{
			case rand(100)+1
				when 1..20
					ret_potions << get_potion(1)
				when 21..60
					ret_potions << get_potion(2)
				when 61..100
					ret_potions << get_potion(3)
			end
		}
		num_major.times{
			case rand(100)+1
				when 1..20
					ret_potions << get_potion(2)
				when 21..100
					ret_potions << get_potion(3)
			end
		}
		return ret_potions
	end

	def Grimoire.debug_potions()
		puts "-- POTIONS DEBUG --"
		puts @potions_level_0.count.to_s + ' level 0 potions spells (cost ' + @potion_level_0_cost.to_s + ')'
		puts @potions_level_1.count.to_s + ' level 1 potions spells (cost ' + @potion_level_1_cost.to_s + ')'
		puts @potions_level_2.count.to_s + ' level 2 potions spells (cost ' + @potion_level_2_cost.to_s + ')'
		puts @potions_level_3.count.to_s + ' level 3 potions spells (cost ' + @potion_level_3_cost.to_s + ')'
	end
end