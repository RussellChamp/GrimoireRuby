#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

require './spells'
require './weapons'
require './deities'

module Grimoire
	
	@alignments = ['Chaotic good', 'Chaotic neutral', 'Chaotic evil', 'Neutral evil', 'Lawful evil', 
					'Lawful good', 'Lawful neutral', 'Neutral good', 'True neutral'] #9 alignments

	def Grimoire.get_alignment()
		case rand(100) + 1
			when 1..10
				return @alignments[0]
			when 11..20
				return @alignments[1]
			when 21..35
				return @alignments[2]
			when 36..45
				return @alignments[3]
			when 46..55
				return @alignments[4]
			when 56..70
				return @alignments[5]
			when 71..80
				return @alignments[6]
			when 81..90
				return @alignments[7]
			when 91..100
				return @alignments[8]
		end
	end

	#ability_score = [score, base price modifier, ego modifier]
	@ability_scores = [
		[10, 0, 0],
		[11, 200, 0],
		[12, 500, 1],
		[13, 700, 1],
		[14, 1000, 2],
		[15, 1400, 2],
		[16, 2000, 3],
		[17, 2800, 3],
		[18, 4000, 4],
		[19, 5200, 4],
		[20, 8000, 5]
	] #11 possible ability scores

	def Grimoire.get_ability_score()
		#there was no intellignent item ability scores roll table so I made up my own. It favors 12 and 14 with lower probabilities for higher numbers
		case rand(100) + 1
			when 1..10
				return @ability_scores[0]
			when 11..20
				return @ability_scores[1]
			when 21..40
				return @ability_scores[2]
			when 41..50
				return @ability_scores[3]
			when 51..70
				return @ability_scores[4]
			when 71..75
				return @ability_scores[5]
			when 76..80
				return @ability_scores[6]
			when 81..85
				return @ability_scores[7]
			when 86..90
				return @ability_scores[8]
			when 91..95
				return @ability_scores[9]
			when 96..100
				return @ability_scores[10]
		end
	end

	#Craft has been left off the skills list since an object would have a hard time crafting anything
	@skills_int = ['Appraise', 'Knowledge (arcana)', 'Knowledge (dungeoneering)', 'Knowledge (engineering)', 'Knowledge (geography)', 
		'Knowledge (history)', 'Knowledge (local)', 'Knowledge (nature)', 'Knowledge (nobility)', 'Knowledge (planes)', 'Knowledge (religion)', 
		'Linguistics', 'Spellcraft'] #13 int skills

	#Disguise, Handle Animal, and Use Magic Device have been removed since they require physical action. This could be up for debate
	@skills_cha = ['Bluff', 'Diplomacy', 'Intimidate', 'Perform'] #4 cha skills

	#Heal and Profession have been removed
	@skills_wis = [ 'Perception', 'Sense Motive', 'Survival'] #3 wis skills

	def Grimoire.get_skill(type = nil)
		if type.nil?
			case rand(@skills_int.count+@skills_cha.count+@skills_wis.count) + 1 #get a random number between 1 and the total skills
				when 1..@skills_int.count
					type = 'int'
				when @skills_int.count+1..@skills_int.count+@skills_cha.count
					type = 'cha'
				else
					type = 'wis'
			end
		end
		case type
			when 'int','Int','intelligence','Intelligence'
				return @skills_int[rand(@skills_int.count)]
			when 'cha','Cha','charisma','Charisma'
				return @skills_cha[rand(@skills_cha.count)]
			when 'wis','Wis','wisdom','Wisdom'
				return @skills_wis[rand(@skills_wis.count)]
			else
				return 'Invalid skill type'
		end
	end

	#I've tried to keep things orderly in public arrays but this items powers are a bit messy
	#item_power = [discription, base price modifier, ego modifier]
	def Grimoire.get_item_power()
		case rand(100) + 1
			when 1..10
				return ['Item can cast ' + get_spell(0) + ' at will', 1000, 1]
			when 11..20
				return ['Item can cast ' + get_spell(1) + ' 3/day', 1200, 1]
			when 21..25
				return ['Item can use magic aura on itself at will', 2000, 1]
			when 26..35
				return ['Item can cast ' + get_spell(2) + ' 1/day', 2400, 1]
			when 36..45
				return ['Item has 5 ranks in ' + get_skill(), 2500, 1]
			when 46..50
				return ['Item can sprout limbs and move with a speed of 10 feet', 5000, 1]
			when 51..55
				return ['Item can cast ' + get_spell(3) + ' 1/day', 6000, 1]
			when 56..60
				return ['Item can cast ' + get_spell(2) + ' 3/day', 7200, 1]
			when 61..70
				return ['Item has 10 ranks in ' + get_skill(), 10000, 2]
			when 71..75
				return ['Item can change shape into one other form of the same size', 10000, 2]
			when 76..80
				return ['Item can fly, as per the spell, at a speed of 30 feet', 10000, 2]
			when 81..85
				return ['Item can cast ' + get_spell(4) + ' 1/day', 11200, 2]
			when 86..90
				return ['Item can teleport itself 1/day', 15000, 2]
			when 91..95
				return ['Item can cast ' + get_spell(3) + ' 3/day', 18000, 2]
			when 96..100
				return ['Item can cast ' + get_spell(4) + ' 3/day', 33600, 2]
		end
	end

	#this one was also a bit messy
	#item_purpose = [discription, ego modifier]
	def Grimoire.get_item_purpose()
		case rand(100) + 1
			when 1..20
				return ['Defeat/slay diametrically opposed alignment', 2]
			when 21..30
				return ['Defeat/slay arcane spellcasters (including spellcasting monsters and those that use spell-like abilities)', 2]
			when 31..40
				return ['Defeat/slay divine spellcasters (including divine entities and servitors)', 2]
			when 41..50
				return ['Defeat/slay non-spellcasters', 2]
			when 51..55
				return ['Defeat/slay all ' + @weapon_bane.choice , 2] #this probably isn't quite right but we'll keep it for now
			when 56..60
				return ['Defeat/slay all ' + ['Humanoids (' + get_humanoid_type() + ')', 'Outsiders (' + get_outsider_type() + ')'].choice, 2]
			when 61..70
				return ['Defend all ' + ['Humanoids (' + get_humanoid_type() + ')', 'Outsiders (' + get_outsider_type() + ')'].choice, 2]
			when 71..80
				return ['Defeat/slay the servants of ' + get_deity(), 2]
			when 81..90
				return ['Defend the servants and interests of ' + get_deity(), 2]
			when 91..95
				return ['Defeat/slay all (other than the item and the wielder)', 2]
			when 96..100
				return ['Make something up! (DM discression)', 2]
		end
	end

	#another messy one
	#dedicated_power = [discription, base price modifier, ego modifier]
	def Grimoire.get_dedicated_power()
		case rand(100) + 1
			when 1..20
				return ['Item can detect any special purpose foes within 60 feet', 10000, 1]
			when 21..35
				return ['Item can cast ' + get_spell(4) + ' at will', 56000, 2]
			when 36..50
				return ['Wielder gets +2 luck bonus on attacks, saves, and checks', 80000, 2]
			when 51..65
				return ['Item can cast ' + get_spell(5) + ' at will', 90000, 2]
			when 66..80
				return ['Item can cast ' + get_spell(6) + ' at will', 132000, 2]
			when 81..95
				return ['Item can cast ' + get_spell(7) + ' at will', 182000, 2]
			when 96..100
				return ['Item can cast true resurrection on weilder, once per month', 200000, 2]
		end
	end

	@communication = [
		['Empathy', 0, 0],
		['Speech', 500, 0],
		['Telepathy', 1000, 1]
	] #3 communication options
	@senses_basic = [
		['Senses (30 ft.)', 0, 0],
		['Senses (60 ft.)', 500, 0],
		['Senses (120 ft.)', 1000, 0]
	] #3 basic senses
	@senses_special = [
		['Darkvision', 500, 0],
		['Blindsense', 5000, 1],
		['Read languages', 1000, 1],
		['Read magic', 2000, 1]
	] #4 special senses

	#Common was left out since ALL intelligent items speak common
	#Druidic was left out since only Druids know it
	#I was thinking of separating languages into generally "good" or "evil" but realized that was more up to DM discression
	@languages = ['Abyssal', 'Aklo', 'Aquan', 'Auran', 'Celestial', 'Draconic', 'Dwarven', 'Elven', 'Giant', 'Gnome', 'Goblin', 'Gnoll', 
		'Halfling', 'Ignan', 'Infernal', 'Orc', 'Sylvan', 'Terran', 'Undercommon'] #19 languages (excluding Common and Druidic)

	#returns an array ['all stats, powers, and abilities', cost]
	def Grimoire.get_item_intelligence(base_price)
		cost = 500 #the cumulative base price increase the item will be
		alignment = get_alignment()
		ego = 0
		if ! base_price.is_a? Integer  or base_price < 0
			return 'improper base_price value'
		elsif base_price <= 1000
			ego += 0
		elsif base_price <= 5000
			ego += 1
		elsif base_price <= 10000
			ego += 2
		elsif base_price <= 20000
			ego += 3
		elsif base_price <= 50000
			ego += 4
		elsif base_price <= 100000
			ego += 6
		elsif base_price <= 200000
			ego += 8
		elsif base_price > 200000
			ego += 12
		end

		cost_bonus = 0 #used to pick up the cost bonus from stats and powers
		ego_bonus = 0  #used to pick up the ego bonus from stats and powers
		stat_int, cost_bonus, ego_bonus = get_ability_score()
		cost += cost_bonus
		ego += ego_bonus

		stat_cha, cost_bonus, ego_bonus = get_ability_score()
		cost += cost_bonus
		ego += ego_bonus

		stat_wis, cost_bonus, ego_bonus = get_ability_score()
		cost += cost_bonus
		ego += ego_bonus

		item_languages = ' Languages: Common'
		bonus_language_count = (stat_int-10)/2 #extra languages will be calculated after we see if it picked up ranks in Linguistics

		senses_and_communication = ' Senses and communication: '

		case rand(100) + 1 #get communication ability for the item. there was no roll table so I made this up
			when 1..30
				communication, cost_bonus, ego_bonus = @communication[0]
			when 31..70
				communication, cost_bonus, ego_bonus = @communication[1]
			when 71..100
				communication, cost_bonus, ego_bonus = @communication[2]
		end
		senses_and_communication += communication
		cost += cost_bonus
		ego += ego_bonus

		case rand(100) + 1 #get senses for the item. there was no roll table so I made this up
			when 1..50
				senses, cost_bonus, ego_bonus = @senses_basic[0]
			when 51..80
				senses, cost_bonus, ego_bonus = @senses_basic[1]
			when 81..100
				senses, cost_bonus, ego_bonus = @senses_basic[2]
		end
		senses_and_communication += ', ' + senses
		cost += cost_bonus
		ego += ego_bonus

		case rand(100) + 1 #get special senses for the item. there was no roll table so I made this up and limited it to only 1 special per item
			when 1..50
				senses, cost_bonus, ego_bonus = ['', 0, 0]
			when 51..70
				senses, cost_bonus, ego_bonus = @senses_special[0]
			when 71..75
				senses, cost_bonus, ego_bonus = @senses_special[1]
			when 76..90
				senses, cost_bonus, ego_bonus = @senses_special[2]
			when 91..100
				senses, cost_bonus, ego_bonus = @senses_special[3]
		end
		if ! senses.empty? 
			senses_and_communication += ', ' + senses
		end
		cost += cost_bonus
		ego += ego_bonus

		#get item powers!
		#so I was thinking of making the number of powers an item had somewhat based on the base cost but decided to instead roll it pure random
		#items randomly get between 1-5 powers
		#there is the possibility to get repeats of the SAME power
		#in that case, I guess you would just add the numerical parts
		#eg if 'fly at 30 ft/round' is rolled twice, it becomes 'fly at 60 ft/round'

		powers = ' Powers: '

		first = true
		(rand(5)+1).times{
			power, cost_bonus, ego_bonus = get_item_power()
			if first #to make sure the grammars are right
				powers += power
				first = false
			else
				powers += ', ' + power
			end
			cost += cost_bonus
			ego += ego_bonus
			if power.downcase.include? 'linguistics' #if we got a skill as a power and hapened to get linguistics
				bonus_language_count += power.scan(/\d/)[0].to_i #we'll have an extra number of languages equal to the ranks
			end
		}

		#add any extra languages to the known languages list
		if bonus_language_count > 0
			@languages.shuffle[0..(bonus_language_count-1)].each{|language| item_languages += ', ' + language}
		end

		#determining purpose
		#there was NO roll chart for determining if an item has a purpose so I made this up
		#I figure 20% of the time sounds good
		purpose = ''
		if rand(100)+1 > 80
			purpose_desc, ego_bonus = get_item_purpose()
			purpose += ' Purpose: ' + purpose_desc
			ego += ego_bonus

			#decided that purposed items get between 1-3 dedicated powers, heavily leaning on 1
			case rand(100)+1
				when 1..70
					purpose_powers_num = 1
				when 71..90
					purpose_powers_num = 2
				when 91..100
					purpose_powers_num = 3
				else
					purpose_powers_num = 1
			end

			purpose += ' Dedicated Powers: '
			first = true
			purpose_powers_num.times{
				purpose_power, cost_bonus, ego_bonus = get_dedicated_power()
				if first
					purpose += purpose_power
					first = false
				else
					purpose += ', ' + purpose_power
				end
				cost += cost_bonus
				ego += ego_bonus
			}
		end
		return ['Alignment: ' + alignment + ' Stats: Ego ' + ego.to_s + ' Int ' + stat_int.to_s + ' Cha ' + stat_cha.to_s + ' Wis ' + stat_wis.to_s + senses_and_communication + item_languages + powers + purpose, cost]
	end

end