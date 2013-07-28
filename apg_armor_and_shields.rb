#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

module GrimoireAPG

	@armors_specific_url = "http://paizo.com/pathfinderRPG/prd/advanced/magicItems/armor.html"
	@armors_specific = [
		['Mistmail', 0, 2250, @armors_specific_url + "#_mistmail-"],
		['Soothsayer\'s raiment', 0, 10300],
		['Boneless leather', 0, 12160],
		['Murderer\'s blackcloth', 0, 12405],
		['Folding plate', 0, 12650],
		['Armor of insults', 0, 16175],
		['Buccaneer\'s breastplate', 0, 23850],
		['Forsaken banded mail', 0, 25400],
		['Giant-hide armor (ogre)', 0, 39165],
		['Giant-hide armor (hill giant)', 0, 46665],
		['Giant-hide armor (stone giant)', 0, 54165],
		['Giant-hide armor (fire giant)', 0, 54165],
		['Giant-hide armor (frost giant)', 0, 54165],
		['Giant-hide armor (troll)', 0, 59165],
		['Giant-hide armor (cloud giant)', 0, 69165],
		['Giant-hide armor (storm giant)', 0, 76665],
		['Daystar half-plate', 0, 81250],

	] #17 specific armors

	def GrimoireAPG.get_armors_specific(num_minor = 0, num_medium = 0, num_major = 0)
		ret_armors = []
		#There are NO minor specific armors
		num_medium.times{
			case rand(100) + 1
				when 1..20
					ret_armors << @armors_specific[0]
				when 21..35
					ret_armors << @armors_specific[1]
				when 36..50
					ret_armors << @armors_specific[2]
				when 51..65
					ret_armors << @armors_specific[3]
				when 66..90
					ret_armors << @armors_specific[4]
				when 91..100
					ret_armors << @armors_specific[5]
			end
		}
		num_major.times{
			case rand(100) + 1
				when 1..2
					ret_armors << @armors_specific[0]
				when 3..5
					ret_armors << @armors_specific[1]
				when 6
					ret_armors << @armors_specific[2]
				when 7
					ret_armors << @armors_specific[3]
				when 8..12
					ret_armors << @armors_specific[4]
				when 13..27
					ret_armors << @armors_specific[5]
				when 28..42
					ret_armors << @armors_specific[6]
				when 43..49
					ret_armors << @armors_specific[7]
				when 50..61
					ret_armors << @armors_specific[8]
				when 62..71
					ret_armors << @armors_specific[9]
				when 72..81
					ret_armors << @armors_specific[10]
				when 82..86
					ret_armors << @armors_specific[11]
				when 87..91
					ret_armors << @armors_specific[12]
				when 92..96
					ret_armors << @armors_specific[13]
				when 97
					ret_armors << @armors_specific[14]
				when 98
					ret_armors << @armors_specific[15]
				when 99..100
					ret_armors << @armors_specific[16]
			end
		}
		return ret_armors
	end

	@shields_specific_url = "http://paizo.com/pathfinderRPG/prd/advanced/magicItems/armor.html"
	@shields_specific = [
		['Battlement shield', 0, 16180, @shields_specific_url + "#_battlement-shield-"],
		['Fortress shield', 0, 19180]
	] #2 specific shields

	def GrimoireAPG.get_shields_specific(num_minor = 0, num_medium = 0, num_major = 0)
		ret_shields = []
		#There are NO minor specific shields
		#There are NO medium secific shields
		num_major.times{
			case rand(100) + 1
				when 1..50
					ret_shields << @shields_specific[0]
				when 51..100
					ret_shields << @shields_specific[1]
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
		['Champion',      1, 0],
		['Dastard',       1, 0],
		['Jousting',      0, 3750],
		['Righteous',     0, 27000],
		['Unrighteous',   0, 27000],
		['Determination', 0, 30000],
	] #6 armor_specials - name, +bonus modifier, +flat gp modifier
#100	100	100	Roll twice again

	def GrimoireAPG.get_armor_special(quality)
		case quality
			when 'minor'
				case rand(100) + 1
					when 1..40
						return @armor_specials[0]
					when 41..80
						return @armor_specials[1]
					when 81..99
						return @armor_specials[2]
					when 100
						special1 = get_armor_special(quality)
						special2 = get_armor_special(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			when 'medium'
				case rand(100) + 1
					when 1..35
						return @armor_specials[0]
					when 36..66
						return @armor_specials[1]
					when 67..70
						return @armor_specials[2]
					when 71..83
						return @armor_specials[3]
					when 84..96
						return @armor_specials[4]
					when 97..99
						return @armor_specials[5]
					when 100
						special1 = get_armor_special(quality)
						special2 = get_armor_special(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			when 'major'
				case rand(100) + 1
					when 1..19
						return @armor_specials[0]
					when 20..37
						return @armor_specials[1]
					when 38..39
						return @armor_specials[2]
					when 40..61
						return @armor_specials[3]
					when 62..80
						return @armor_specials[4]
					when 81..90
						return @armor_specials[5]
					when 91..100
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


	##TODO Update this method
	def GrimoireAPG.get_armor_and_shields(num_minor = 0, num_medium = 0, num_major = 0, final = true)
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

	def GrimoireAPG.debug_armor_and_shields()
		puts "-- APG ARMOR AND SHIELDS DEBUG --"
		puts "@armors_specific count " + @armors_specific.count.to_s
		puts @armor_specials.count.to_s + ' armor specials'
		puts "@shields_specific count " + @shields_specific.count.to_s
		puts @shields_specials.count.to_s + ' shield specials'
	end
end