#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

module Grimoire

	@armors_specific_url = "http://paizo.com/pathfinderRPG/prd/magicItems/armor.html"
	@armors_specific = [
		['Mithral shirt', 0, 1100, @armors_specific_url + "#mithril-shirt"],
		['Dragonhide plate', 0, 3300],
		['Elven chain', 0, 5150],
		['Rhino hide', 0, 5165],
		['Adamantine breastplate', 0, 10200],
		['Dwarven plate', 0, 16500],
		['Banded mail of luck', 0, 18900],
		['Celestial armor', 0, 22400],
		['Plate armor of the deep', 0, 24650],
		['Breastplate of command', 0, 25400],
		['Mithral full plate of speed', 0, 26500],
		['Demon armor', 0, 52260]
	] #12 specific armors

	def Grimoire.get_armors_specific(num_minor = 0, num_medium = 0, num_major = 0)
		ret_armors = []
		num_minor.times{
			case rand(100) + 1
				when 1..50
					ret_armors << @armors_specific[0]
				when 51..80
					ret_armors << @armors_specific[1]
				when 81..100
					ret_armors << @armors_specific[2]
			end
		}
		num_medium.times{
			case rand(100) + 1
				when 1..25
					ret_armors << @armors_specific[0]
				when 26..45
					ret_armors << @armors_specific[1]
				when 46..57
					ret_armors << @armors_specific[2]
				when 58..67
					ret_armors << @armors_specific[3]
				when 68..82
					ret_armors << @armors_specific[4]
				when 83..97
					ret_armors << @armors_specific[5]
				when 98..100
					ret_armors << @armors_specific[6]
			end
		}
		num_major.times{
			case rand(100) + 1
				when 1..10
					ret_armors << @armors_specific[4]
				when 11..20
					ret_armors << @armors_specific[5]
				when 21..32
					ret_armors << @armors_specific[6]
				when 33..50
					ret_armors << @armors_specific[7]
				when 51..60
					ret_armors << @armors_specific[8]
				when 61..75
					ret_armors << @armors_specific[9]
				when 76..90
					ret_armors << @armors_specific[10]
				when 91..100
					ret_armors << @armors_specific[11]
			end
		}
		return ret_armors
	end

	@shields_specific_url = "http://paizo.com/pathfinderRPG/prd/magicItems/armor.html"
	@shields_specific = [
		['Darkwood buckler', 0, 203, @shields_specific_url + "#darkwood-buckler"],
		['Darkwood shield', 0, 257],
		['Mithral heavy shield', 0, 1020],
		['Caster\'s shield', 0, 3153],
		['Spined shield', 0, 5580],
		['Lion\'s shield', 0, 9170],
		['Winged shield', 0, 17257],
		['Absorbing shield', 0, 50170]
	] #8 specific shields

	def Grimoire.get_shields_specific(num_minor = 0, num_medium = 0, num_major = 0)
		ret_shields = []
		num_minor.times{
			case rand(100) + 1
				when 1..30
					ret_shields << @shields_specific[0]
				when 31..80
					ret_shields << @shields_specific[1]
				when 81..95
					ret_shields << @shields_specific[2]
				when 96..100
					ret_shields << @shields_specific[3]
			end
		}
		num_medium.times{
			case rand(100) + 1
				when 1..20
					ret_shields << @shields_specific[0]
				when 21..45
					ret_shields << @shields_specific[1]
				when 46..70
					ret_shields << @shields_specific[2]
				when 71..85
					ret_shields << @shields_specific[3]
				when 86..90
					ret_shields << @shields_specific[4]
				when 91..95
					ret_shields << @shields_specific[5]
				when 96..100
					ret_shields << @shields_specific[6]
			end
		}
		num_major.times{
			case rand(100) + 1
				when 1..20
					ret_shields << @shields_specific[3]
				when 21..40
					ret_shields << @shields_specific[4]
				when 41..60
					ret_shields << @shields_specific[5]
				when 61..90
					ret_shields << @shields_specific[6]
				when 91..100
					ret_shields << @shields_specific[7]
			end
		}
		return ret_shields
	end

	@armors = [
		['+1 armor', 1, 1000],
		['+2 armor', 2, 4000],
		['+3 armor', 3, 9000],
		['+4 armor', 4, 16000],
		['+5 armor', 5, 25000],
		['+6 armor', 6, 36000],
		['+7 armor', 7, 49000],
		['+8 armor', 8, 64000],
		['+9 armor', 9, 81000],
		['+10 armor', 10, 100000]
	] #5 possible roll'able armors and shields. Specific type of armor is left up to DM

	@shields = [
		['+1 shield', 1, 1000],
		['+2 shield', 2, 4000],
		['+3 shield', 3, 9000],
		['+4 shield', 4, 16000],
		['+5 shield', 5, 25000],
		['+6 shield', 6, 36000],
		['+7 shield', 7, 49000],
		['+8 shield', 8, 64000],
		['+9 shield', 9, 81000],
		['+10 shield', 10, 100000]
	] #5 possible roll'able armors and shields. Specific type of shield is left up to DM

	@armor_specials = [
		['Glamered', 0, 2700],
		['Fortification, light', 1, 0],
		['Slick', 0, 3750],
		['Shadow', 0, 3750],
		['Spell resistance (13)', 2, 0],
		['Slick, improved', 0, 15000],
		['Shadow, improved', 0, 15000],
		['Energy resistance', 0, 18000],
		['Ghost touch', 3, 0],
		['Invulnerability', 3, 0],
		['Fortification, moderate', 3, 0],
		['Spell resistance (15)', 3, 0],
		['Wild', 3, 0],
		['Slick, greater', 0, 33750],
		['Shadow, greater', 0, 33750],
		['Energy resistance, improved', 0, 42000],
		['Spell resistance (17)', 4, 0],
		['Etherealness', 0, 49000],
		['Undead controlling', 0, 49000],
		['Fortification, heavy', 5, 0],
		['Spell resistance (19)', 5, 0],
		['Energy resistance, greater', 0, 66000]
	] #22 armor_specials - name, +gp modifier, +bonus modifier
#100	100	100	Roll twice again

	def Grimoire.get_armor_special(quality)
		case quality
			when 'minor'
				case rand(100) + 1
					when 1..25
						return @armor_specials[0]
					when 26..32
						return @armor_specials[1]
					when 33..52
						return @armor_specials[2]
					when 53..92
						return @armor_specials[3]
					when 93..96
						return @armor_specials[4]
					when 97
						return @armor_specials[5]
					when 98..99
						return @armor_specials[6]
					when 100
						special1 = get_armor_special(quality)
						special2 = get_armor_special(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			when 'medium'
				case rand(100) + 1
					when 1..5
						return @armor_specials[0]
					when 6..8
						return @armor_specials[1]
					when 9..11
						return @armor_specials[2]
					when 12..17
						return @armor_specials[3]
					when 18..19
						return @armor_specials[4]
					when 20..29
						return @armor_specials[5]
					when 30..49
						return @armor_specials[6]
					when 50..74
						return @armor_specials[7]
					when 75..79
						return @armor_specials[8]
					when 80..84
						return @armor_specials[9]
					when 85..89
						return @armor_specials[10]
					when 90..94
						return @armor_specials[11]
					when 95..99
						return @armor_specials[12]
					when 100
						special1 = get_armor_special(quality)
						special2 = get_armor_special(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			when 'major'
				case rand(100) + 1
					when 1..3
						return @armor_specials[0]
					when 4
						return @armor_specials[1]
					when 5..7
						return @armor_specials[5]
					when 8..13
						return @armor_specials[6]
					when 14..28
						return @armor_specials[7]
					when 29..33
						return @armor_specials[8]
					when 34..35
						return @armor_specials[9]
					when 36..40
						return @armor_specials[10]
					when 41..42
						return @armor_specials[11]
					when 43
						return @armor_specials[12]
					when 44..48
						return @armor_specials[13]
					when 49..58
						return @armor_specials[14]
					when 59..83
						return @armor_specials[15]
					when 84..88
						return @armor_specials[16]
					when 89
						return @armor_specials[17]
					when 90
						return @armor_specials[18]
					when 91..92
						return @armor_specials[19]
					when 93..94
						return @armor_specials[20]
					when 95..99
						return @armor_specials[21]
					when 100
						special1 = get_armor_special(quality)
						special2 = get_armor_special(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			else
				return 'invalid quality'
			end
	end

	@shield_specials = [
		['Arrow catching', 1, 0],
		['Bashing', 1, 0],
		['Blinding', 1, 0],
		['Fortification, light', 1, 0],
		['Arrow deflection', 2, 0],
		['Animated', 2, 0],
		['Spell resistance (13)', 2, 0],
		['Energy resistance', 0, 18000],
		['Ghost touch', 3, 0],
		['Fortification, moderate', 3, 0],
		['Spell resistance (15)', 3, 0],
		['Wild', 3, 0],
		['Energy resistance, improved', 0, 42000],
		['Spell resistance (17)', 4],
		['Undead controlling', 0, 49000],
		['Fortification, heavy', 5, 0],
		['Reflecting', 5, 0],
		['Spell resistance (19)', 5, 0],
		['Energy resistance, greater', 0, 66000]
	] #19 shields_specials - name, +gp modifier, +bonus modifier
#100	100	100	Roll twice again2

	def Grimoire.get_shield_special(quality)
		case quality
			when 'minor'
				case rand(100) + 1
					when 1..20
						return @shield_specials[0]
					when 21..40
						return @shield_specials[1]
					when 41..50
						return @shield_specials[2]
					when 51..75
						return @shield_specials[3]
					when 76..92
						return @shield_specials[4]
					when 93..97
						return @shield_specials[5]
					when 98..99
						return @shield_specials[6]
					when 100
						special1 = get_shield_special(quality)
						special2 = get_shield_special(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			when 'medium'
				case rand(100) + 1
					when 1..10
						return @shield_specials[0]
					when 11..20
						return @shield_specials[1]
					when 21..25
						return @shield_specials[2]
					when 26..40
						return @shield_specials[3]
					when 41..50
						return @shield_specials[4]
					when 51..57
						return @shield_specials[5]
					when 58..59
						return @shield_specials[6]
					when 60..79
						return @shield_specials[7]
					when 80..85
						return @shield_specials[8]
					when 86..95
						return @shield_specials[9]
					when 96..98
						return @shield_specials[10]
					when 99
						return @shield_specials[11]
					when 100
						special1 = get_shield_special(quality)
						special2 = get_shield_special(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			when 'major'
				case rand(100) + 1
					when 1..5
						return @shield_specials[0]
					when 6..8
						return @shield_specials[1]
					when 9..10
						return @shield_specials[2]
					when 11..15
						return @shield_specials[3]
					when 16..20
						return @shield_specials[4]
					when 21..25
						return @shield_specials[5]
					when 26..41
						return @shield_specials[7]
					when 42..46
						return @shield_specials[8]
					when 47..56
						return @shield_specials[9]
					when 57..58
						return @shield_specials[10]
					when 59
						return @shield_specials[11]
					when 60..84
						return @shield_specials[12]
					when 85..86
						return @shield_specials[13]
					when 87
						return @shield_specials[14]
					when 88..91
						return @shield_specials[15]
					when 92..93
						return @shield_specials[16]
					when 94
						return @shield_specials[17]
					when 95..99
						return @shield_specials[18]
					when 100
						special1 = get_shield_special(quality)
						special2 = get_shield_special(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			else
				return 'invalid quality'
			end
	end


	def Grimoire.get_armor_and_shields(num_minor = 0, num_medium = 0, num_major = 0, final = true)
		ret_armor_and_shields = []
		num_minor.times{
			case rand(100) + 1
				when 1..60
					armor_or_shield = @shields[0]
				when 61..80
					armor_or_shield = @armors[0]
				when 81..85
					armor_or_shield = @shields[1]
				when 86..87
					armor_or_shield = @armors[1]
				when 88..89
					armor_or_shield = get_armors_specific(1)[0]
				when 90..91
					armor_or_shield = get_shields_specific(1)[0]
				when 92..100
					armor_or_shield = get_armor_and_shields(1,0,0, false)[0] #it returns an array of a single item
					if ! armor_or_shield[1].equal? 0 #only specific armors and shields have a bonus modifier of 0
						#we'll add a special depending on what type of weapon it is
						type = armor_or_shield[0].scan(/armor|shield/)[0]
						#using regex is a bit fragile (if new things were added) but it's what I can go on now
						case type
							when 'armor'
								special = get_armor_special('minor')
							when 'shield'
								special = get_shield_special('minor')
						end
						bonus = armor_or_shield[1] + special[1]
						if bonus < 11  #armors and shields cannot have a total bonus > 10
							case type #armors and shields currently have the sime price increases but this is allows change
								when 'armor'
										price = @armors[bonus - 1][2] + special[2] #weapon bonus value + the special modifier
										#this will probably result in an incorrect price when multiple special abilities are applied
										#TODO: rework this
								when 'shield'
									price = @shields[bonus - 1][2] + special[2] #weapon bonus value + the special modifier
							end
							armor_or_shield = [special[0] + ' ' + armor_or_shield[0].scan(/\+\d/)[0] + ' minor ' + type, bonus, price]
						end
						#this has the possibility of producing a 'special +x melee weapon melee weapon' weapon
						#I'll try and rework that later
					end #if it was a specific item, we'll just pass it on through
			end #end case
			if final
				ret_armor_and_shields << [armor_or_shield[0], armor_or_shield[2]]
			else
				ret_armor_and_shields << armor_or_shield
			end
		}
		num_medium.times{
			case rand(100) + 1
				when 1..5
					armor_or_shield = @shields[0]
				when 6..10
					armor_or_shield = @armors[0]
				when 11..20
					armor_or_shield = @shields[1]
				when 21..30
					armor_or_shield = @armors[1]
				when 31..40
					armor_or_shield = @shields[2]
				when 41..50
					armor_or_shield = @armors[2]
				when 51..55
					armor_or_shield = @shields[3]
				when 56..57
					armor_or_shield = @armors[3]
				when 58..60
					armor_or_shield = get_armors_specific(0,1)[0]
				when 61..63
					armor_or_shield = get_shields_specific(0,1)[0]
				when 64..100
					armor_or_shield = get_armor_and_shields(0,1,0, false)[0] #it returns an array of a single item
					if ! armor_or_shield[1].equal? 0 #only specific armors and shields have a bonus modifier of 0
						#we'll add a special depending on what type of weapon it is
						type = armor_or_shield[0].scan(/armor|shield/)[0]
						#using regex is a bit fragile (if new things were added) but it's what I can go on now
						case type
							when 'armor'
								special = get_armor_special('medium')
							when 'shield'
								special = get_shield_special('medium')
						end
						bonus = armor_or_shield[1] + special[1]
						if bonus < 11  #armors and shields cannot have a total bonus > 10
							case type #armors and shields currently have the sime price increases but this is allows change
								when 'armor'
										price = @armors[bonus - 1][2] + special[2] #weapon bonus value + the special modifier
								when 'shield'
									price = @shields[bonus - 1][2] + special[2] #weapon bonus value + the special modifier
							end
							armor_or_shield = [special[0] + ' ' + armor_or_shield[0].scan(/\+\d/)[0] + ' medium ' + type, bonus, price]
						end
						#this has the possibility of producing a 'special +x melee weapon melee weapon' weapon
						#I'll try and rework that later
					end #if it was a specific item, we'll just pass it on through
			end #end case
			if final
				ret_armor_and_shields << [armor_or_shield[0], armor_or_shield[2]]
			else
				ret_armor_and_shields << armor_or_shield
			end
		}
		num_major.times{
			case rand(100) + 1
				when 1..8
					armor_or_shield = @shields[2]
				when 9..16
					armor_or_shield = @armors[2]
				when 17..27
					armor_or_shield = @shields[3]
				when 28..38
					armor_or_shield = @armors[3]
				when 39..49
					armor_or_shield = @shields[4]
				when 50..57
					armor_or_shield = @armors[4]
				when 58..60
					armor_or_shield = get_armors_specific(0,0,1)[0]
				when 61..63
					armor_or_shield = get_shields_specific(0,0,1)[0]
				when 64..100
					armor_or_shield = get_armor_and_shields(0,0,1, false)[0] #it returns an array of a single item
					if ! armor_or_shield[1].equal? 0 #only specific armors and shields have a bonus modifier of 0
						#we'll add a special depending on what type of weapon it is
						type = armor_or_shield[0].scan(/armor|shield/)[0]
						#using regex is a bit fragile (if new things were added) but it's what I can go on now
						case type
							when 'armor'
								special = get_armor_special('major')
							when 'shield'
								special = get_shield_special('major')
						end
						bonus = armor_or_shield[1] + special[1]
						if bonus < 11  #armors and shields cannot have a total bonus > 10
							case type #armors and shields currently have the sime price increases but this is allows change
								when 'armor'
										price = @armors[bonus - 1][2] + special[2] #weapon bonus value + the special modifier
								when 'shield'
									price = @shields[bonus - 1][2] + special[2] #weapon bonus value + the special modifier
							end
							armor_or_shield = [special[0] + ' ' + armor_or_shield[0].scan(/\+\d/)[0] + ' major ' + type, bonus, price]
						end
						#this has the possibility of producing a 'special +x melee weapon melee weapon' weapon
						#I'll try and rework that later
					end #if it was a specific item, we'll just pass it on through
			end #end case
			if final
				ret_armor_and_shields << [armor_or_shield[0], armor_or_shield[2]]
			else
				ret_armor_and_shields << armor_or_shield
			end
		}
#88–89	58–60	58–60	Specific armor2	—
#90–91	61–63	 61–63	Specific shield3	—
#92–100	64–100	64–100	Special ability and roll again2,3	—
		return ret_armor_and_shields
	end

	def Grimoire.debug_armor_and_shields()
		puts "-- ARMOR AND SHIELDS DEBUG --"
		puts "@armors_specific count " + @armors_specific.count.to_s
		puts @armor_specials.count.to_s + ' armor specials'
		puts "@shields_specific count " + @shields_specific.count.to_s
		puts @shields_specials.count.to_s + ' shield specials'
	end
end