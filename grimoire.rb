#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux
#Grimoire magic item generator for the Pathfinder roleplaying game

require './armor_and_shields'
require './weapons'
require './potions'
require './rings'
require './rods'
require './scrolls'
require './staves'
require './wands'
require './wondrous_items'

module Grimoire
	# A = Armor and shields
	# W = Weapons
	# P = Potions
	# R = Rings
	# O = rOds
	# C = sCrolls
	# T = sTaves
	# N = waNds
	# S = wondrouS items

	def Grimoire.get_items(num_minor = 0, num_medium = 0, num_major = 0, total_value = 0)
		items = []
		num_minor.times{
			case rand(100) + 1
			when 1..4
				items += get_armor_and_shields(1)
			when 5..9
				items += get_weapons(1)
			when 10..44
				items += get_potions(1)
			when 45..46
				items += get_rings(1)
			when 47..81
				items += get_scrolls(1)
			when 82..91
				items += get_wands(1)
			when 92..100
				items += get_wondrous_items(1)
			end
		}
		num_medium.times{
			case rand(100) + 1
			when 1..10
				items += get_armor_and_shields(0,1)
			when 11..20
				items += get_weapons(0,1)
			when 21..30
				items += get_potions(0,1)
			when 31..40
				items += get_rings(0,1)
			when 41..50
				items += get_rods(0,1)
			when 51..65
				items += get_scrolls(0,1)
			when 66..68
				items += get_staves(0,1)
			when 69..83
				items += get_wands(0,1)
			when 84..100
				items += get_wondrous_items(0,1)
			end
		}
		num_major.times{
			case rand(100) + 1
			when 1..10
				items += get_armor_and_shields(0,0,1)
			when 11..20
				items += get_weapons(0,0,1)
			when 21..25
				items += get_potions(0,0,1)
			when 26..35
				items += get_rings(0,0,1)
			when 36..45
				items += get_rods(0,0,1)
			when 46..55
				items += get_scrolls(0,0,1)
			when 56..75
				items += get_staves(0,0,1)
			when 76..80
				items += get_wands(0,0,1)
			when 81..100
				items += get_wondrous_items(0,0,1)
			end
		}
		return items
	end

	def Grimoire.get_item(quality, type)
		items = []
		case quality
		when 'minor'
			item = [1,0,0]
		when 'medium'
			item = [0,1,0]
		when 'major'
			item = [0,0,1]
		end
			
		case type
		when 'A', 'armor', 'shield', 'armor_and_shield', 'armor_or_shield'
			return get_armor_and_shields(*item)
		when 'W', 'weapon'
			return get_weapons(*item)
		when 'P', 'potion'
			return get_potions(*item)
		when 'R', 'ring'
			return get_rings(*item)
		when 'O', 'rod'
			return get_rods(*item)
		when 'C', 'scroll'
			return get_scrolls(*item)
		when 'T', 'staff', 'stave'
			return get_staves(*item)
		when 'N', 'wand'
			return get_wands(*item)
		when 'S', 'wondrous item', 'wondrous_item'
			return get_wondrous_items(*item)
		else
			puts 'No such item type. Valid types are AWPROCTNS'
		end
	end

	def Grimoire.debug_all()
		puts "-- ALL DEBUG --"
		Grimoire.debug_armor_and_shields
		Grimoire.debug_weapons
		Grimoire.debug_potions
		Grimoire.debug_rings
		Grimoire.debug_rods
		Grimoire.debug_scrolls
		Grimoire.debug_staves
		Grimoire.debug_wands
		Grimoire.debug_wondrous_items
		Grimoire.debug_spells
	end
end