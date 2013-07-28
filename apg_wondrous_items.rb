#!/usr/env ruby
#
#GrimoireAPG v0.1
#by Russell Champoux

require './intelligence'

module GrimoireAPG

	@wondrous_items_url = "http://paizo.com/pathfinderRPG/prd/advanced/magicItems/wondrousItems.html"
	@wondrous_items_minor = [
		['Ioun torch', 75, @wondrous_items_url + "#_ioun-torch"],
		['War paint of the terrible visage', 100],
		['Assisting glove', 180],
		['Bandages of rapid recovery', 200],
		['Catching cape', 200],
		['Soul soap', 200],
		['Bottle of messages', 300],
		['Key of lock jamming', 400],
		['Campfire bead', 720],
		['Defoliant polish', 800],
		['Dust of emulation', 800],
		['Muleback cords', 1000],
		['All tools vest', 1800],
		['Cowardly crouching cloak', 1800],
		['Scabbard of vigor', 1800],
		['Clamor box', 2000],
		['Glowing glove', 2000],
		['Manacles of cooperation', 2000],
		['Knight\'s pennon (honor)', 2200],
		['Flying ointment', 2250],
		['Boots of friendly terrain', 2400],
		['Apple of eternal sleep', 2500],
		['Cauldron of brewing', 3000],
		['Philter of love', 3000],
		['Sash of the war champion', 4000],
		['Knight\'s pennon (battle)', 4500],
		['Knight\'s pennon (parley)', 4500],
		['Helm of fearsome mien', 5000],
		['Horn of the huntmaster', 5000],
		['Scabbard of staunching', 5000],
		['Sheath of bladestealth', 5000],
	] #31 minor wondrous items

	@wondrous_items_medium = [
		['Grappler\'s mask', 5000, @wondrous_items_url + "#grappler\'s-mask"],
		['Torc of lionheart fury', 8000],
		['Amulet of spell cunning', 10000],
		['Construct channel brick', 10000],
		['Doomharp', 10000],
		['Ki mat', 10000],
		['Lord\'s banner (swiftness)', 10000],
		['Crystal of healing hands', 12000],
		['Book of the loremaster', 15000],
		['Bracelet of mercy', 15000],
		['Cauldron of plenty', 15000],
		['Gloves of dueling', 15000],
		['Necklace of ki serenity', 16000],
		['Robes of arcane heritage', 16000],
		['Silver smite bracelet', 16000],
		['Vest of the cockroach', 16000],
		['Amulet of magecraft', 20000],
		['Horn of antagonism', 20000],
		['Moon circlet', 20000],
		['Necromancer\'s athame', 20000],
		['Sniper goggles', 20000],
		['Annihilation spectacles', 25000],
	] #22 medium wondrous items

	@wondrous_items_major = [
		['Cauldron of the dead', 30000, @wondrous_items_url + "#cauldron-of-the-dead"],
		['Mask of giants (lesser)', 30000],
		['Cauldron of resurrection', 33000],
		['Cauldron of flying', 40000],
		['Cauldron of seeing', 42000],
		['Lord\'s banner (terror)', 56000],
		['Lord\'s banner (victory)', 75000],
		['Mask of giants (greater)', 90000],
		['Lord\'s banner (crusades)', 100000],
	] #9 major wondrous items


	def GrimoireAPG.get_wondrous_items(num_minor = 0, num_medium = 0, num_major = 0)
		ret_items = []
		#TODO: clean up code so that when you return duplicate items it is more obvious
		num_minor.times{
			case rand(100)+1
				when 1..5
					item = @wondrous_items_minor[0]
				when 6..9
					item = @wondrous_items_minor[1]
				when 10..12
					item = @wondrous_items_minor[2]
				when 13..15
					item = @wondrous_items_minor[3]
				when 16..18
					item = @wondrous_items_minor[4]
				when 19..20
					item = @wondrous_items_minor[5]
				when 21..23
					item = @wondrous_items_minor[6]
				when 24..27
					item = @wondrous_items_minor[7]
				when 28..29
					item = @wondrous_items_minor[8]
				when 30..35
					item = @wondrous_items_minor[9]
				when 36..39
					item = @wondrous_items_minor[10]
				when 40..42
					item = @wondrous_items_minor[11]
				when 43..45
					item = @wondrous_items_minor[12]
				when 46..49
					item = @wondrous_items_minor[13]
				when 50..56
					item = @wondrous_items_minor[14]
				when 57..58
					item = @wondrous_items_minor[15]
				when 59..61
					item = @wondrous_items_minor[16]
				when 62..63
					item = @wondrous_items_minor[17]
				when 64..70
					item = @wondrous_items_minor[18]
				when 71..75
					item = @wondrous_items_minor[19]
				when 76..78
					item = @wondrous_items_minor[20]
				when 79..80
					item = @wondrous_items_minor[21]
				when 81..83
					item = @wondrous_items_minor[22]
				when 84..85
					item = @wondrous_items_minor[23]
				when 86..88
					item = @wondrous_items_minor[24]
				when 89..90
					item = @wondrous_items_minor[25]
				when 91..92
					item = @wondrous_items_minor[26]
				when 93..94
					item = @wondrous_items_minor[27]
				when 95..96
					item = @wondrous_items_minor[28]
				when 97..98
					item = @wondrous_items_minor[29]
				when 99..100
					item = @wondrous_items_minor[30]
			end
			case rand(100)+1
				when 1
					item_intelligence = Grimoire.get_item_intelligence(item[1])
					ret_items << ['Intellegent ' + item[0] + ' [' + item_intelligence[0] + ']', item[1] + item_intelligence[1]]
				when 2..31
					ret_items << [item[0] + ' (with a clue as to its purpose)', item[1]]
				else
					ret_items << item
			end
		}
		num_medium.times{
			case rand(100)+1
				when 1..6
					item = @wondrous_items_medium[0]
				when 7..16
					item = @wondrous_items_medium[1]
				when 17..19
					item = @wondrous_items_medium[2]
				when 20..23
					item = @wondrous_items_medium[3]
				when 24..25
					item = @wondrous_items_medium[4]
				when 26..27
					item = @wondrous_items_medium[5]
				when 28..37
					item = @wondrous_items_medium[6]
				when 38..40
					item = @wondrous_items_medium[7]
				when 41..44
					item = @wondrous_items_medium[8]
				when 45..48
					item = @wondrous_items_medium[9]
				when 49..56
					item = @wondrous_items_medium[10]
				when 57..61
					item = @wondrous_items_medium[11]
				when 62..64
					item = @wondrous_items_medium[12]
				when 65..69
					item = @wondrous_items_medium[13]
				when 70..74
					item = @wondrous_items_medium[14]
				when 75..82
					item = @wondrous_items_medium[15]
				when 83..86
					item = @wondrous_items_medium[16]
				when 87..90
					item = @wondrous_items_medium[17]
				when 91..93
					item = @wondrous_items_medium[18]
				when 94..96
					item = @wondrous_items_medium[19]
				when 97..98
					item = @wondrous_items_medium[20]
				when 99..100
					item = @wondrous_items_medium[21]
			end
			case rand(100)+1
				when 1
					item_intelligence = Grimoire.get_item_intelligence(item[1])
					ret_items << ['Intellegent ' + item[0] + ' [' + item_intelligence[0] + ']', item[1] + item_intelligence[1]]
				when 2..31
					ret_items << [item[0] + ' (with a clue as to its purpose)', item[1]]
				else
					ret_items << item
			end
		}
		num_major.times{
			case rand(100)+1
				when 1..8
					item = @wondrous_items_major[0]
				when 9..20
					item = @wondrous_items_major[1]
				when 21..32
					item = @wondrous_items_major[2]
				when 33..48
					item = @wondrous_items_major[3]
				when 49..64
					item = @wondrous_items_major[4]
				when 65..76
					item = @wondrous_items_major[5]
				when 77..88
					item = @wondrous_items_major[6]
				when 89..96
					item = @wondrous_items_major[7]
				when 97..100
					item = @wondrous_items_major[8]
			end	
			case rand(100)+1
				when 1
					item_intelligence = Grimoire.get_item_intelligence(item[1])
					ret_items << ['Intellegent ' + item[0] + ' [' + item_intelligence[0] + ']', item[1] + item_intelligence[1]]
				when 2..31
					ret_items << [item[0] + ' (with a clue as to its purpose)', item[1]]
				else
					ret_items << item
			end
		}
		return ret_items
	end

	def GrimoireAPG.debug_wondrous_items
		puts "-- APG WONDROUS ITEMS DEBUG --"
		puts "@wondrous_items_minor count = " + @wondrous_items_minor.count.to_s
		puts "@wondrous_items_medium count = " + @wondrous_items_medium.count.to_s
		puts "@wondrous_items_major count = " + @wondrous_items_major.count.to_s
	end
end