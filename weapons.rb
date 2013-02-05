#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

module Grimoire

	@weapons_specific_url = "http://paizo.com/pathfinderRPG/prd/magicItems/weapons.html"
	# [name, bonus modifier, cost, url]
	@weapons_specific = [
		['Sleep arrow', 0, 132, @weapons_specific_url + "#sleep-arrow"],
		['Screaming bolt', 0, 267],
		['Silver dagger (masterwork)', 0, 322],
		['Cold iron longsword (masterwork)', 0, 330],
		['Javelin of lightning', 0, 1500],
		['Slaying arrow', 0, 2282],
		['Adamantine dagger', 0, 3002],
		['Adamantine battleaxe', 0, 3010],
		['Slaying arrow (greater)', 0, 4057],
		['Shatterspike', 0, 4315],
		['Dagger of venom', 0, 8302],
		['Trident of warning', 0, 10115],
		['Assassin\'s dagger', 0, 10302],
		['Shifter\'s sorrow', 0, 12780],
		['Trident of fish command', 0, 18650],
		['Flame tongue', 0, 20715],
		['Luck blade (0 wishes)', 0, 22060],
		['Sword of subtlety', 0, 22310],
		['Sword of the planes', 0, 22315],
		['Nine lives stealer', 0, 23057],
		['Oathbow', 0, 25600],
		['Sword of life stealing', 0, 25715],
		['Mace of terror', 0, 38552],
		['Life-drinker', 0, 40320],
		['Sylvan scimitar', 0, 47315],
		['Rapier of puncturing', 0, 50320],
		['Sun blade', 0, 50335],
		['Frost brand', 0, 54475],
		['Dwarven thrower', 0, 60312],
		['Luck blade (1 wish)', 0, 62360],
		['Mace of smiting', 0, 75312],
		['Luck blade (2 wishes)', 0, 102660],
		['Holy avenger', 0, 120630],
		['Luck blade (3 wishes)', 0, 142960]
	] #34 specific weapons

	def Grimoire.get_weapons_specific(num_minor = 0, num_medium = 0, num_major = 0)
		ret_weapons_specific = []
		num_minor.times{
			case rand(1..100)
				when 1..15
					ret_weapons_specific << @weapons_specific[0]
				when 16..25
					ret_weapons_specific << @weapons_specific[1]
				when 26..45
					ret_weapons_specific << @weapons_specific[2]
				when 46..65
					ret_weapons_specific << @weapons_specific[3]
				when 66..75
					ret_weapons_specific << @weapons_specific[4]
				when 76..80
					ret_weapons_specific << @weapons_specific[5]
				when 81..90
					ret_weapons_specific << @weapons_specific[6]
				when 91..100
					ret_weapons_specific << @weapons_specific[7]
			end
		}
		num_medium.times{
			case rand(1..100)
				when 1..9
					ret_weapons_specific << @weapons_specific[4]
				when 10..15
					ret_weapons_specific << @weapons_specific[5]
				when 16..24
					ret_weapons_specific << @weapons_specific[6]
				when 25..33
					ret_weapons_specific << @weapons_specific[7]
				when 34..37
					ret_weapons_specific << @weapons_specific[8]
				when 38..40
					ret_weapons_specific << @weapons_specific[9]
				when 41..46
					ret_weapons_specific << @weapons_specific[10]
				when 47..51
					ret_weapons_specific << @weapons_specific[11]
				when 52..57
					ret_weapons_specific << @weapons_specific[12]
				when 58..62
					ret_weapons_specific << @weapons_specific[13]
				when 63..66
					ret_weapons_specific << @weapons_specific[14]
				when 67..74
					ret_weapons_specific << @weapons_specific[15]
				when 75..79
					ret_weapons_specific << @weapons_specific[16]
				when 80..86
					ret_weapons_specific << @weapons_specific[17]
				when 87..91
					ret_weapons_specific << @weapons_specific[18]
				when 92..95
					ret_weapons_specific << @weapons_specific[19]
				when 96..98
					ret_weapons_specific << @weapons_specific[20]
				when 99..10
					ret_weapons_specific << @weapons_specific[21]
			end
		}
		num_major.times{
			case rand(1..100)
				when 1..4
					ret_weapons_specific << @weapons_specific[12]
				when 5..7
					ret_weapons_specific << @weapons_specific[13]
				when 8..9
					ret_weapons_specific << @weapons_specific[14]
				when 10..13
					ret_weapons_specific << @weapons_specific[15]
				when 14..17
					ret_weapons_specific << @weapons_specific[16]
				when 18..24
					ret_weapons_specific << @weapons_specific[17]
				when 25..31
					ret_weapons_specific << @weapons_specific[18]
				when 32..37
					ret_weapons_specific << @weapons_specific[19]
				when 38..42
					ret_weapons_specific << @weapons_specific[20]
				when 43..46
					ret_weapons_specific << @weapons_specific[21]
				when 47..51
					ret_weapons_specific << @weapons_specific[22]
				when 52..57
					ret_weapons_specific << @weapons_specific[23]
				when 58..62
					ret_weapons_specific << @weapons_specific[24]
				when 63..67
					ret_weapons_specific << @weapons_specific[25]
				when 68..73
					ret_weapons_specific << @weapons_specific[26]
				when 74..79
					ret_weapons_specific << @weapons_specific[27]
				when 80..84
					ret_weapons_specific << @weapons_specific[28]
				when 85..91
					ret_weapons_specific << @weapons_specific[29]
				when 92..95
					ret_weapons_specific << @weapons_specific[30]
				when 96..97
					ret_weapons_specific << @weapons_specific[31]
				when 98..99
					ret_weapons_specific << @weapons_specific[32]
				when 100
					ret_weapons_specific << @weapons_specific[33]
			end
		}
		return ret_weapons_specific
	end

	@weapons_melee_specials = [
		['Bane', 1],
		['Defending', 1],
		['Flaming', 1],
		['Frost', 1],
		['Shock', 1],
		['Ghost touch', 1],
		['Keen', 1],
		['Ki Focus', 1],
		['Merciful', 1],
		['Mighty cleaving', 1],
		['Spell storing', 1],
		['Throwing', 1],
		['Thundering', 1],
		['Vicious', 1],
		['Anarchic', 2],
		['Axiomatic', 2],
		['Disruption', 2],
		['Flaming burst', 2],
		['Icy burst', 2],
		['Holy', 2],
		['Shocking burst', 2],
		['Unholy', 2],
		['Wounding', 2],
		['Speed', 3],
		['Brilliant energy', 4],
		['Dancing', 4],
		['Vorpal', 5],
	] #27 melee specials - name, bonus modifier
	# 100	96–100	91–100	Roll again twice4

	@weapon_bane = ['Aberrations', 'Animals', 'Constructs', 'Dragons', 'Fey', 'Humanoids', 'Magical beasts', 'Monstrous humanoids', 'Oozes', 
					'Outsiders', 'Plants', 'Undead', 'Vermin'] #13 banes
	@humanoids = ['aquatic', 'dwarf', 'elf', 'giant', 'goblinoid', 'gnoll', 'gnome', 'halfling', 'human', 'orc', 'reptilian'] #11 humanoid types
	@outsiders = ['air', 'earth', 'fire', 'water', 'chaotic', 'evil', 'good', 'lawful', 'native'] #9 outsider types

	def Grimoire.get_humanoid_type()
		#There is NO roll chart for picking humanoid types. I made up this roll. More common races have ~2x chance to roll
		#I may just change this such that it is up to DM discression
		case rand(1..100)
			when 1..6
				return @humanoids[0]
			when 7..19
				return @humanoids[1]
			when 20..32
				return @humanoids[2]
			when 33..39
				return @humanoids[3]
			when 40..45
				return @humanoids[4]
			when 46..52
				return @humanoids[5]
			when 53..59
				return @humanoids[6]
			when 60..67
				return @humanoids[7]
			when 68..79
				return @humanoids[8]
			when 80..92
				return @humanoids[9]
			when 93..100
				return @humanoids[10]
			else
				return "other" #should never happen
		end
	end

	def Grimoire.get_outsider_type()
		#There is NO roll chart for picking outsiders types. I made up this roll. Common enemy types have ~2x chance to roll
		case rand(1..100)
			when 1..9
				return @outsiders[0]
			when 10..18
				return @outsiders[1]
			when 19..27
				return @outsiders[2]
			when 28..36
				return @outsiders[3]
			when 37..54
				return @outsiders[4]
			when 55..72
				return @outsiders[5]
			when 73..81
				return @outsiders[6]
			when 82..90
				return @outsiders[7]
			when 91..100
				return @outsiders[8]
			else
				return "other" #should never happen
		end
	end

	def Grimoire.get_weapon_special_bane()
		bane_name = "Bane of "
		case rand(1..100)
		when 1..5
			bane_name += @weapon_bane[0]
		when 6..9
			bane_name += @weapon_bane[1]
		when 10..16
			bane_name += @weapon_bane[2]
		when 17..22
			bane_name += @weapon_bane[3]
		when 23..27
			bane_name += @weapon_bane[4]
		when 28..60
			bane_name += @weapon_bane[5] + " (" + get_humanoid_type() + ")"
		when 61..65
			bane_name += @weapon_bane[6]
		when 66..70
			bane_name += @weapon_bane[7]
		when 71..72
			bane_name += @weapon_bane[8]
		when 73..88
			bane_name += @weapon_bane[9] + " (" + get_outsider_type() + ")"
		when 89..90
			bane_name += @weapon_bane[10]
		when 91..98
			bane_name += @weapon_bane[11]
		when 99..100
			bane_name += @weapon_bane[12]
		end
		return [bane_name, 1]
	end

	#TODO: write function that returns mutliple specials and checks for conflicting specials

	def Grimoire.get_weapon_melee_specials(quality)
		case quality
			when 'minor'
				case rand(1..100)
					when 1..10
						return get_weapon_special_bane()
					when 11..17
						return @weapons_melee_specials[1]
					when 18..27
						return @weapons_melee_specials[2]
					when 28..37
						return @weapons_melee_specials[3]
					when 38..47
						return @weapons_melee_specials[4]
					when 48..56
						return @weapons_melee_specials[5]
					when 57..67
						return @weapons_melee_specials[6]
					when 68..71
						return @weapons_melee_specials[7]
					when 72..75
						return @weapons_melee_specials[8]
					when 76..82
						return @weapons_melee_specials[9]
					when 83..87
						return @weapons_melee_specials[10]
					when 88..91
						return @weapons_melee_specials[11]
					when 92..95
						return @weapons_melee_specials[12]
					when 96..99
						return @weapons_melee_specials[13]
					when 100 #roll again twice
						special1 = get_weapon_melee_specials(quality)
						special2 = get_weapon_melee_specials(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1]]
				end
			when 'medium'
				case rand(1..100)
					when 1..6
						return get_weapon_special_bane
					when 7..12
						return @weapons_melee_specials[1]
					when 13..19
						return @weapons_melee_specials[2]
					when 20..26
						return @weapons_melee_specials[3]
					when 27..33
						return @weapons_melee_specials[4]
					when 34..38
						return @weapons_melee_specials[5]
					when 39..44
						return @weapons_melee_specials[6]
					when 45..48
						return @weapons_melee_specials[7]
					when 49..50
						return @weapons_melee_specials[8]
					when 51..54
						return @weapons_melee_specials[9]
					when 55..59
						return @weapons_melee_specials[10]
					when 60..63
						return @weapons_melee_specials[11]
					when 64..65
						return @weapons_melee_specials[12]
					when 66..69
						return @weapons_melee_specials[13]
					when 70..72
						return @weapons_melee_specials[14]
					when 73..75
						return @weapons_melee_specials[15]
					when 76..78
						return @weapons_melee_specials[16]
					when 79..81
						return @weapons_melee_specials[17]
					when 82..84
						return @weapons_melee_specials[18]
					when 85..87
						return @weapons_melee_specials[19]
					when 88..90
						return @weapons_melee_specials[20]
					when 91..93
						return @weapons_melee_specials[21]
					when 94..95
						return @weapons_melee_specials[22]
					when 96..100 #roll again twice
						special1 = get_weapon_melee_specials(quality)
						special2 = get_weapon_melee_specials(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1]]
				end
			when 'major'
				case rand(1..100)
					when 1..3
						return get_weapon_special_bane
					when 4..6
						return @weapons_melee_specials[2]
					when 7..9
						return @weapons_melee_specials[3]
					when 10..12
						return @weapons_melee_specials[4]
					when 13..15
						return @weapons_melee_specials[5]
					when 16..19
						return @weapons_melee_specials[7]
					when 20..21
						return @weapons_melee_specials[9]
					when 22..24
						return @weapons_melee_specials[10]
					when 25..28
						return @weapons_melee_specials[11]
					when 29..32
						return @weapons_melee_specials[12]
					when 33..36
						return @weapons_melee_specials[13]
					when 37..41
						return @weapons_melee_specials[14]
					when 42..46
						return @weapons_melee_specials[15]
					when 47..49
						return @weapons_melee_specials[16]
					when 50..54
						return @weapons_melee_specials[17]
					when 55..59
						return @weapons_melee_specials[18]
					when 60..64
						return @weapons_melee_specials[19]
					when 65..69
						return @weapons_melee_specials[20]
					when 70..74
						return @weapons_melee_specials[21]
					when 75..78
						return @weapons_melee_specials[22]
					when 79..83
						return @weapons_melee_specials[23]
					when 84..86
						return @weapons_melee_specials[24]
					when 87..88
						return @weapons_melee_specials[25]
					when 89..90
						return @weapons_melee_specials[26]
					when 91..100 #roll again twice
						special1 = get_weapon_melee_specials(quality)
						special2 = get_weapon_melee_specials(quality)
						return [special1[0] + ' ' + special2[0], special1[1] + special2[1]]
				end
			else
				puts 'Invalid quality (' + quality + ')'
				return ['invalid', 0]
		end
	end

	@weapons_ranged_specials = [
		['Bane', 1],
		['Distance', 1],
		['Flaming', 1],
		['Frost', 1],
		['Merciful', 1],
		['Returning', 1],
		['Shock', 1],
		['Seeking', 1],
		['Thundering', 1],
		['Anarchic', 2],
		['Axiomatic', 2],
		['Flaming burst', 2],
		['Holy', 2],
		['Icy burst', 2],
		['Shocking burst', 2],
		['Unholy', 2],
		['Speed', 3],
		['Brilliant energy', 4]
	] #18 ranged specials - name, bonus modifier
	
	def Grimoire.get_weapon_ranged_specials(quality)
		case quality
			when 'minor'
				case rand(1..100)
					when 1..12
						return get_weapon_special_bane()
					when 13..25
						return @weapons_ranged_specials[1]
					when 26..40
						return @weapons_ranged_specials[2]
					when 41..55
						return @weapons_ranged_specials[3]
					when 56..60
						return @weapons_ranged_specials[4]
					when 61..68
						return @weapons_ranged_specials[5]
					when 69..83
						return @weapons_ranged_specials[6]
					when 84..93
						return @weapons_ranged_specials[7]
					when 94..99
						return @weapons_ranged_specials[8]
					when 100 #roll again twice
						special1 = get_weapon_ranged_specials(quality)
						special2 = get_weapon_ranged_specials(quality)
						return [special1[0] + " " + special2[0], special1[1] + special2[1]]
				end
			when 'medium'
				case rand(1..100)
					when 1..8
						return get_weapon_special_bane
					when 9..16
						return @weapons_ranged_specials[1]
					when 17..28
						return @weapons_ranged_specials[2]
					when 29..40
						return @weapons_ranged_specials[3]
					when 41..42
						return @weapons_ranged_specials[4]
					when 43..47
						return @weapons_ranged_specials[5]
					when 48..59
						return @weapons_ranged_specials[6]
					when 60..64
						return @weapons_ranged_specials[7]
					when 65..68
						return @weapons_ranged_specials[8]
					when 69..71
						return @weapons_ranged_specials[9]
					when 72..74
						return @weapons_ranged_specials[10]
					when 75..79
						return @weapons_ranged_specials[11]
					when 80..82
						return @weapons_ranged_specials[12]
					when 83..87
						return @weapons_ranged_specials[13]
					when 88..92
						return @weapons_ranged_specials[14]
					when 93..95
						return @weapons_ranged_specials[15]
					when 96..100 #roll again twice
						special1 = get_weapon_ranged_specials(quality)
						special2 = get_weapon_ranged_specials(quality)
						return [special1[0] + " " + special2[0], special1[1] + special2[1]]
				end
			when 'major'
				case rand(1..100)
					when 1..4
						return get_weapon_special_bane
					when 5..8
						return @weapons_ranged_specials[1]
					when 9..12
						return @weapons_ranged_specials[2]
					when 13..16
						return @weapons_ranged_specials[3]
					when 17..21
						return @weapons_ranged_specials[5]
					when 22..25
						return @weapons_ranged_specials[6]
					when 26..27
						return @weapons_ranged_specials[7]
					when 28..29
						return @weapons_ranged_specials[8]
					when 30..34
						return @weapons_ranged_specials[9]
					when 35..39
						return @weapons_ranged_specials[10]
					when 40..49
						return @weapons_ranged_specials[11]
					when 50..54
						return @weapons_ranged_specials[12]
					when 55..64
						return @weapons_ranged_specials[13]
					when 65..74
						return @weapons_ranged_specials[14]
					when 75..79
						return @weapons_ranged_specials[15]
					when 80..84
						return @weapons_ranged_specials[16]
					when 85..90
						return @weapons_ranged_specials[17]
					when 91..100 #roll again twice
						special1 = get_weapon_ranged_specials(quality)
						special2 = get_weapon_ranged_specials(quality)
						return [special1[0] + " " + special2[0], special1[1] + special2[1]]
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
	def Grimoire.get_weapons(num_minor = 0, num_medium = 0, num_major = 0, type = nil, final = true)
		#TODO: make a random roll for weather the weapon is ranged or melee
		#TODO: resolve "stack level too deep" issue when running in irb
		ret_weapons = []
		num_minor.times{
			weapon = []
			if type.nil? or ! ['melee', 'ranged'].include? type.downcase #if type is nil or NOT one of 'melee' or 'ranged'
			#There is no roll for melee vs ranged weapons so I made this up. There are different specials for melee/ranged so it's important
				case rand(1..100)
					when 1..75 #75% melee
						type = 'melee'
					when 76..100 #25% ranged 
						type = 'ranged'
				end
			end
			case rand(1..100)
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
							price = @weapons[bonus - 1][2] #weapon bonus value + the special modifier
							weapon = [special[0] + ' ' + weapon[0].scan(/\+\d/)[0] + ' minor ' + type + ' weapon', bonus, price]
						end
						#this has the possibility of producing a 'special +x melee weapon melee weapon' weapon
						#I'll try and rework that later
					end #if it was a specific item, we'll just pass it on through
			end #end case
			if final
				case rand(1..100)
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
				case rand(1..100)
					when 1..75 #75% melee
						type = 'melee'
					when 76..100 #25% ranged 
						type = 'ranged'
				end
			end
			case rand(1..100)
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
							price = @weapons[bonus - 1][2] #weapon bonus value + the special modifier
							weapon = [special[0] + ' ' + weapon[0].scan(/\+\d/)[0] + ' medium ' + type + ' weapon', bonus, price]
						end
						#this has the possibility of producing a 'special +x melee weapon melee weapon' weapon
						#I'll try and rework that later
					end #if it was a specific item, we'll just pass it on through
			end #end case
			if final
				case rand(1..100)
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
				case rand(1..100)
					when 1..75 #75% melee
						type = 'melee'
					when 76..100 #25% ranged 
						type = 'ranged'
				end
			end
			case rand(1..100)
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
							price = @weapons[bonus - 1][2] #weapon bonus value + the special modifier
							weapon = [special[0] + ' ' + weapon[0].scan(/\+\d/)[0] + ' major ' + type + ' weapon', bonus, price]
						end
						#this has the possibility of producing a 'special +x melee weapon melee weapon' weapon
						#I'll try and rework that later
					end #if it was a specific item, we'll just pass it on through
			end #end case
			if final
				case rand(1..100)
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

	def Grimoire.debug_weapons()
		puts "-- WEAPONS DEBUG --"
		puts "@weapons_specific count " + @weapons_specific.count.to_s
		puts @weapons_melee_specials.count.to_s + ' melee weapon specials'
		puts @weapons_ranged_specials.count.to_s + ' ranged weapon specials'
		puts @weapon_bane.count.to_s + ' weapon bane types'
		puts @humanoids.count.to_s + ' humanoid types'
		puts @outsiders.count.to_s + ' outsider types'
	end
end