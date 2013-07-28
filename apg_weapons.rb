#!/usr/env ruby
#
#Grimoire v0.1
#by Russell Champoux

module GrimoireAPG

	@weapons_specific_url = "http://paizo.com/pathfinderRPG/prd/advanced/magicItems/weapons.html"
	# [name, bonus modifier, cost, url]
	@weapons_specific = [
		['Dustburst bullet', 0, 196, @weapons_specific_url + "#dustburst-bullet-"],
		['Tangle bolt', 0, 226],
		['Searing arrow', 0, 1516],
		['Sizzling arrow', 0, 1516],
		['Lance of jousting', 0, 4310],
		['Boulderhead mace', 0, 6812],
		['Beaststrike club', 0, 7300],
		['Trident of stability', 0, 9815],
		['Blade of binding', 0, 12350],
		['Shieldsplitter lance', 0, 18310],
		['Ricochet hammer', 0, 20301],
		['Sparkwake starknife', 0, 21324],
		['Undercutting axe', 0, 23310],
		['Spirit blade', 0, 48502],
		['Guarding blade', 0, 65310],
	] #15 specific weapons

	def GrimoireAPG.get_weapons_specific(num_minor = 0, num_medium = 0, num_major = 0)
		ret_weapons_specific = []
		num_minor.times{
			case rand(100)+1
				when 1..35
					ret_weapons_specific << @weapons_specific[0]
				when 36..70
					ret_weapons_specific << @weapons_specific[1]
				when 71..80
					ret_weapons_specific << @weapons_specific[2]
				when 81..90
					ret_weapons_specific << @weapons_specific[3]
				when 91..100
					ret_weapons_specific << @weapons_specific[4]
			end
		}
		num_medium.times{
			case rand(100)+1
				when 1..7
					ret_weapons_specific << @weapons_specific[2]
				when 8..14
					ret_weapons_specific << @weapons_specific[3]
				when 15..26
					ret_weapons_specific << @weapons_specific[4]
				when 27..41
					ret_weapons_specific << @weapons_specific[5]
				when 42..53
					ret_weapons_specific << @weapons_specific[6]
				when 54..60
					ret_weapons_specific << @weapons_specific[7]
				when 61..70
					ret_weapons_specific << @weapons_specific[8]
				when 71..79
					ret_weapons_specific << @weapons_specific[9]
				when 80..87
					ret_weapons_specific << @weapons_specific[10]
				when 88..95
					ret_weapons_specific << @weapons_specific[11]
				when 96..100
					ret_weapons_specific << @weapons_specific[12]
			end
		}
		num_major.times{
			case rand(100)+1
				when 1..4
					ret_weapons_specific << @weapons_specific[7]
				when 5..20
					ret_weapons_specific << @weapons_specific[8]
				when 21..37
					ret_weapons_specific << @weapons_specific[9]
				when 38..62
					ret_weapons_specific << @weapons_specific[10]
				when 63..82
					ret_weapons_specific << @weapons_specific[11]
				when 83..88
					ret_weapons_specific << @weapons_specific[12]
				when 89..94
					ret_weapons_specific << @weapons_specific[13]
				when 95..100
					ret_weapons_specific << @weapons_specific[14]
			end
		}
		return ret_weapons_specific
	end

	@weapons_melee_specials = [
		['Allying', 1, 0],
		['Conductive', 1, 0],
		['Corrosive', 1, 0],
		['Cunning', 1, 0],
		['Furious', 1, 0],
		['Grayflame', 1, 0],
		['Huntsman', 1, 0],
		['Jurist', 1, 0],
		['Menacing', 1, 0],
		['Corrosive burst', 2, 0],
		['Dueling', 0, 14000],
		['Transformative', 0, 10000],
	] #12 melee specials - name, bonus modifier, flat gp modifier
	# 100	96–100	91–100	Roll again twice4


	#TODO: write function that returns mutliple specials and checks for conflicting specials

	def GrimoireAPG.get_weapon_melee_specials(quality)
		case quality
			when 'minor'
				case rand(100)+1
					when 1..12
						return @weapons_melee_specials[0]
					when 13..24
						return @weapons_melee_specials[1]
					when 25..36
						return @weapons_melee_specials[2]
					when 37..28
						return @weapons_melee_specials[3]
					when 49..58
						return @weapons_melee_specials[4]
					when 59..70
						return @weapons_melee_specials[5]
					when 71..77
						return @weapons_melee_specials[6]
					when 78..84
						return @weapons_melee_specials[7]
					when 85..99
						return @weapons_melee_specials[8]
					when 100 #roll again twice
						special1 = get_weapon_melee_specials(quality)
						special2 = get_weapon_melee_specials(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			when 'medium'
				case rand(100)+1
					when 1..4
						return @weapons_melee_specials[0]
					when 5..12
						return @weapons_melee_specials[1]
					when 13..22
						return @weapons_melee_specials[2]
					when 23..32
						return @weapons_melee_specials[3]
					when 33..40
						return @weapons_melee_specials[4]
					when 41..49
						return @weapons_melee_specials[5]
					when 50..58
						return @weapons_melee_specials[6]
					when 59..67
						return @weapons_melee_specials[7]
					when 68..74
						return @weapons_melee_specials[8]
					when 75..82
						return @weapons_melee_specials[9]
					when 83..89
						return @weapons_melee_specials[10]
					when 90..95
						return @weapons_melee_specials[11]
					when 96..100 #roll again twice
						special1 = get_weapon_melee_specials(quality)
						special2 = get_weapon_melee_specials(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			when 'major'
				case rand(100)+1
					when 1..3
						return @weapons_melee_specials[0]
					when 4..8
						return @weapons_melee_specials[1]
					when 9..20
						return @weapons_melee_specials[2]
					when 21..29
						return @weapons_melee_specials[3]
					when 30..38
						return @weapons_melee_specials[4]
					when 39..47
						return @weapons_melee_specials[5]
					when 48..56
						return @weapons_melee_specials[6]
					when 57..65
						return @weapons_melee_specials[7]
					when 66..74
						return @weapons_melee_specials[8]
					when 75..81
						return @weapons_melee_specials[9]
					when 82..85
						return @weapons_melee_specials[10]
					when 86..90
						return @weapons_melee_specials[11]
					when 91..100 #roll again twice
						special1 = get_weapon_melee_specials(quality)
						special2 = get_weapon_melee_specials(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			else
				puts 'Invalid quality (' + quality + ')'
				return ['invalid', 0]
		end
	end

	@weapons_ranged_specials = [
		['Allying', 1, 0],
		['Conductive', 1, 0],
		['Corrosive2', 1, 0],
		['Cunning', 1, 0],
		['Huntsman', 1, 0],
		['Jurist', 1, 0],
		['Corrosive burst', 1, 0],
	] #7 ranged specials - name, bonus modifier, flat gp modifier
	
	def GrimoireAPG.get_weapon_ranged_specials(quality)
		case quality
			when 'minor'
				case rand(100)+1
					when 1..15
						return @weapons_ranged_specials[0]
					when 16..30
						return @weapons_ranged_specials[1]
					when 31..48
						return @weapons_ranged_specials[2]
					when 49..60
						return @weapons_ranged_specials[3]
					when 61..72
						return @weapons_ranged_specials[4]
					when 73..94
						return @weapons_ranged_specials[5]
					when 95..99
						return @weapons_ranged_specials[6]
					when 100 #roll again twice
						special1 = get_weapon_ranged_specials(quality)
						special2 = get_weapon_ranged_specials(quality)
						return [special1[0] + " " + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			when 'medium'
				case rand(100)+1
					when 1..14
						return @weapons_ranged_specials[0]
					when 15..28
						return @weapons_ranged_specials[1]
					when 29..48
						return @weapons_ranged_specials[2]
					when 49..58
						return @weapons_ranged_specials[3]
					when 59..69
						return @weapons_ranged_specials[4]
					when 70..91
						return @weapons_ranged_specials[5]
					when 92..95
						return @weapons_ranged_specials[6]
					when 96..100 #roll again twice
						special1 = get_weapon_ranged_specials(quality)
						special2 = get_weapon_ranged_specials(quality)
						return [special1[0] + " " + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			when 'major'
				case rand(100)+1
					when 1..13
						return @weapons_ranged_specials[0]
					when 14..26
						return @weapons_ranged_specials[1]
					when 27..42
						return @weapons_ranged_specials[2]
					when 43..56
						return @weapons_ranged_specials[3]
					when 57..65
						return @weapons_ranged_specials[4]
					when 66..87
						return @weapons_ranged_specials[5]
					when 88..90
						return @weapons_ranged_specials[6]
					when 91..100 #roll again twice
						special1 = get_weapon_ranged_specials(quality)
						special2 = get_weapon_ranged_specials(quality)
						return [special1[0] + " " + special2[0], special1[1] + special2[1], special1[2] + special2[2]]
				end
			else
				puts "Invalid quality (" + quality + ")"
				return ['invalid', 0]
		end
	end

	#[name, bonus modifier, cost]
	@weapons = [
		['+1', 1, 2000],
		['+2', 2, 8000],
		['+3', 3, 18000],
		['+4', 4, 32000],
		['+5', 5, 50000],
		['+6', 6, 72000],
		['+7', 7, 98000],
		['+8', 8, 128000],
		['+9', 9, 162000],
		['+10', 10, 200000]
	] #5 possible roll'able weapons. Specific type of weapon is left up to DM

	#the 'type' argument is used to preserve whether a weapon is 'melee' or 'ranged'
	#the 'final' argument is set to false when we're recursively calling get_weapons()
	def GrimoireAPG.get_weapons(num_minor = 0, num_medium = 0, num_major = 0, type = nil, final = true)
		#TODO: make a random roll for weather the weapon is ranged or melee
		#TODO: resolve "stack level too deep" issue when running in irb
		ret_weapons = []
		num_minor.times{
			weapon = []
			if type.nil? or ! ['melee', 'ranged'].include? type.downcase #if type is nil or NOT one of 'melee' or 'ranged'
			#There is no roll for melee vs ranged weapons so I made this up. There are different specials for melee/ranged so it's important
				case rand(100)+1
					when 1..75 #75% melee
						type = 'melee'
					when 76..100 #25% ranged 
						type = 'ranged'
				end
			end
			case rand(100)+1
				when 1..70
					weapon = [@weapons[0][0] + ' minor ' + type + ' weapon', @weapons[0][1], @weapons[0][2]]
				when 71..85
					weapon = [@weapons[1][0] + ' minor ' + type + ' weapon', @weapons[1][1], @weapons[1][2]]
				when 86..90
					weapon = get_weapons_specific(1)[0] #it returns an array of a single item
				when 91..100
					#"Special ability and roll again"
					weapon = get_weapons(1,0,0,type, false)[0] #it returns an array of a single item
					if ! weapon[1].equal? 0 #only specific weapons have a bonus modifier of 0
						#we'll add a special depending on what type of weapon it is
						case type.downcase
							when 'melee'
								special = get_weapon_melee_specials('minor')
							when 'ranged'
								special = get_weapon_ranged_specials('minor')
						end
						bonus = weapon[1] + special[1]
						if bonus < 11  #weapons cannot have a total bonus > 10
							price = weapon[2] + (@weapons[bonus - 1][2] - @weapons[weapon[1]-1][2]) #current weapon cost + the difference between weapon bonus modifiers
							weapon = [special[0] + ' ' + weapon[0].scan(/\+\d/)[0] + ' minor ' + type + ' weapon', bonus, price]
						end
						#this has the possibility of producing a 'special +x melee weapon melee weapon' weapon
						#I'll try and rework that later
					end #if it was a specific item, we'll just pass it on through
			end #end case
			if final
				case rand(100)+1
					when 1..30
						weapon[0] = 'Glowing ' + weapon[0]
					when 31..45
						weapon[0] += ' with clues as to its function'
				end
				ret_weapons << [weapon[0], weapon[2]]
			else
				ret_weapons << weapon
			end
		}
		num_medium.times{
			if type.nil? or ! ['melee', 'ranged'].include? type.downcase #if type is nil or NOT one of 'melee' or 'ranged'
			#There is no roll for melee vs ranged weapons so I made this up. There are different specials for melee/ranged so it's important
				case rand(100)+1
					when 1..75 #75% melee
						type = 'melee'
					when 76..100 #25% ranged 
						type = 'ranged'
				end
			end
			case rand(100)+1
				when 1..10
					weapon = [@weapons[0][0] + ' medium ' + type + ' weapon', @weapons[0][1], @weapons[0][2]]
				when 11..29
					weapon = [@weapons[1][0] + ' medium ' + type + ' weapon', @weapons[1][1], @weapons[1][2]]
				when 30..58
					weapon = [@weapons[2][0] + ' medium ' + type + ' weapon', @weapons[2][1], @weapons[2][2]]
				when 59..62
					weapon = [@weapons[3][0] + ' medium ' + type + ' weapon', @weapons[3][1], @weapons[3][2]]
				when 63..68
					weapon = get_weapons_specific(0,1)[0]
				when 69..100
					weapon = get_weapons(0,1,0,type,false)[0] #it returns an array of a single item
					if ! weapon[1].equal? 0 #only specific weapons have a bonus modifier of 0
						#we'll add a special depending on what type of weapon it is
						case type.downcase
							when 'melee'
								special = get_weapon_melee_specials('medium')
							when 'ranged'
								special = get_weapon_ranged_specials('medium')
						end
						bonus = weapon[1] + special[1]
						if bonus < 11  #weapons cannot have a total bonus > 10
							price = weapon[2] + (@weapons[bonus - 1][2] - @weapons[weapon[1]-1][2])
							weapon = [special[0] + ' ' + weapon[0].scan(/\+\d/)[0] + ' medium ' + type + ' weapon', bonus, price]
						end
						#this has the possibility of producing a 'special +x melee weapon melee weapon' weapon
						#I'll try and rework that later
					end #if it was a specific item, we'll just pass it on through
			end #end case
			if final
				case rand(100)+1
					when 1..30
						weapon[0] = 'Glowing ' + weapon[0]
					when 31..45
						weapon[0] += ' with clues as to its function'
				end
				ret_weapons << [weapon[0], weapon[2]]
			else
				ret_weapons << weapon
			end
		}
		num_major.times{
			if type.nil? or ! ['melee', 'ranged'].include? type.downcase #if type is nil or NOT one of 'melee' or 'ranged'
			#There is no roll for melee vs ranged weapons so I made this up. There are different specials for melee/ranged so it's important
				case rand(100)+1
					when 1..75 #75% melee
						type = 'melee'
					when 76..100 #25% ranged 
						type = 'ranged'
				end
			end
			case rand(100)+1
				when 1..20
					weapon = [@weapons[2][0] + ' major ' + type + ' weapon', @weapons[2][1], @weapons[2][2]]
				when 21..38
					weapon = [@weapons[3][0] + ' major ' + type + ' weapon', @weapons[3][1], @weapons[3][2]]
				when 39..49
					weapon = [@weapons[4][0] + ' major ' + type + ' weapon', @weapons[4][1], @weapons[4][2]]
				when 50..63
					weapon = get_weapons_specific(0,0,1)[0]
				when 64..100
					weapon = get_weapons(0,0,1,type, false)[0] #it returns an array of a single item
					if ! weapon[1].equal? 0 #only specific weapons have a bonus modifier of 0
						#we'll add a special depending on what type of weapon it is
						case type.downcase
							when 'melee'
								special = get_weapon_melee_specials('major')
							when 'ranged'
								special = get_weapon_ranged_specials('major')
						end
						bonus = weapon[1] + special[1]
						if bonus < 11  #weapons cannot have a total bonus > 10
							price = weapon[2] + (@weapons[bonus - 1][2] - @weapons[weapon[1]-1][2])
							weapon = [special[0] + ' ' + weapon[0].scan(/\+\d/)[0] + ' major ' + type + ' weapon', bonus, price]
						end
						#this has the possibility of producing a 'special +x melee weapon melee weapon' weapon
						#I'll try and rework that later
					end #if it was a specific item, we'll just pass it on through
			end #end case
			if final
				case rand(100)+1
					when 1..30
						weapon[0] = 'Glowing ' + weapon[0]
					when 31..45
						weapon[0] += ' with clues as to its function'
				end
				ret_weapons << [weapon[0], weapon[2]]
			else
				ret_weapons << weapon
			end
		}
		return ret_weapons
	end

	def GrimoireAPG.debug_weapons()
		puts "-- APG WEAPONS DEBUG --"
		puts "@weapons_specific count " + @weapons_specific.count.to_s
		puts @weapons_melee_specials.count.to_s + ' melee weapon specials'
		puts @weapons_ranged_specials.count.to_s + ' ranged weapon specials'
		puts @weapon_bane.count.to_s + ' weapon bane types'
		puts @humanoids.count.to_s + ' humanoid types'
		puts @outsiders.count.to_s + ' outsider types'
	end
end