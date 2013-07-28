#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

module GrimoireUC


#Alchemist Spells - They use formulae instead of proper spells, but I'll leave there list here for reference
#1st-Level Alchemist Spells
#'Adjuring Step', 'Illusion of Calm', 'Longshot', 'See Alignment', 'Shock Shield', 'Targeted Bomb Admixture', 
#2nd-Level Alchemist Spells
#'Ablative Barrier', 'Animal Aspect', 'Ant Haul, Communal', 'Bestow Weapon Proficiency', 'Blistering Invective', 'Bullet Shield', 'Certain Grip', 'Kinetic Reverberation', 'Shadow Bomb Admixture', 'Touch Injection', 
#3rd-Level Alchemist Spells
#'Absorb Toxicity', 'Animal Aspect, Greater', 'Burst of Speed', 'Darkvision, Communal', 'Delay Poison, Communal', 'Endure Elements, Communal', 'Lightning Lash Bomb Admixture', 'Protection from Arrows, Communal', 'Resinous Skin', 'Resist Energy, Communal', 'Spider Climb, Communal', 
#4th-Level Alchemist Spells
#'Air Walk, Communal', 'Mutagenic Touch', 'Tongues, Communal', 'Viper Bomb Admixture', 
#5th-Level Alchemist Spells
#'Dust Form', 'Languid Bomb Admixture', 'Stoneskin, CommunalM', 
#6th-Level Alchemist Spells
#'Caging Bomb Admixture', 'Walk through Space'

# Antipaladin Spells - This isn't really a PC available class, but I'll leave these here for reference
#1st-Level Antipaladin Spells
#'Litany of Sloth', 'Litany of Weakness', 'Longshot', 
#2nd-Level Antipaladin Spells
#'Bestow Weapon Proficiency', 'Litany of Defense', 'Litany of Eloquence', 'Litany of Entanglement', 'Litany of Warding', 'Magic Siege Engine', 'Protection from Good, Communal', 'Protection from Law, Communal', 
#3rd-Level Antipaladin Spells
#'Burst of Speed', 'Darkvision, Communal', 'Deadly Juggernaut', 'Litany of Escape', 'Litany of Sight', 
#4th-Level Antipaladin Spells
#'Litany of Madness', 'Litany of Thunder', 'Litany of Vengeance', 'Magic Siege Engine, Greater', 'Nondetection, CommunalM'

#NOTE Some spells appear multiple times since they appear in different caster books at different levels. I'm too lazy to remove those duplicates so this is "intentional"

	#arcane spells contain all Wizard/Sorcerer/Bard/Elementalist Wizard/Summoner/Witch spells.
	@spells_arcane_level_0 = ['Haunted Fey Aspect', ]

	@spells_arcane_level_1 = ['Adjuring Step', 'Abundant Ammunition' 'Adoration', 'Compel Hostility', 'Deadeye\'s Lore', 'Jury-Rig', 'Liberating Command', 'Lock Gaze', 'Moment of Greatness', 'Negative Reaction', 'See Alignment', 'Illusion of Calm', 'Longshot', 'Mirror Strike', 'Reinforce Armaments', 'Returning Weapon', 'Shock Shield', 'Unerring Weapon', 'Warding Weapon', 'Air Bubble', 'Damp Powder', 'Fabricate Bullets', 'Peacebond', 'Weaken Powder', 'Life Conduit', ]

	@spells_arcane_level_2 = ['Blistering Invective', 'Discovery Torch', 'Pilfering Hand', 'Qualm', 'Returning Weapon', 'Share Language, Communal', 'Tactical Acumen', 'Thunder Fire', 'Adoration', 'Animal Aspect', 'Ant Haul, Communal', 'Bestow Weapon Proficiency', 'Brow Gasher', 'Bullet Shield', 'Certain Grip', 'Destabilize Powder', 'Endure Elements, Communal', 'Fiery Shuriken', 'Frost Fall', 'Kinetic Reverberation', 'Magic Siege Engine', 'Mount, Communal', 'Reloading Hands', 'Protection from Chaos, Communal', 'Protection from Evil, Communal', 'Protection from Good, Communal', 'Protection from Law, Communal', 'Recoil Fire', 'Reinforce Armaments, Communal', 'Ricochet Shot', 'Spontaneous Immolation', 'Stabilize Powder', 'Telekinetic Assembly', 'Twisted Space', 'Warding Weapon', 'Ablative Barrier', 'Mask Dweomer, Communal', ]

	@spells_arcane_level_3 = ['Delay Poison, Communal', 'Phantom Driver', 'Returning Weapon, Communal', 'Tongues, Communal', 'Ablative Barrier', 'Animal Aspect', 'Bestow Weapon Proficiency', 'Brow Gasher', 'Effortless Armor', 'Mount, Communal', 'Pilfering Hand', 'Reloading Hands', 'Reinforce Armaments, Communal', 'Tactical Acumen', 'Telekinetic Assembly', 'Twisted Space', 'Animal Aspect, Greater', 'Burst of Speed', 'Locate Weakness', 'Chain of Perdition', 'Darkvision, Communal', 'Flash Fire', 'Healing Thief', 'Hostile Levitation', 'Pellet Blast', 'Protection from Arrows, Communal', 'Pup Shape', 'Resinous Skin', 'Resist Energy, Communal', 'Share Language, Communal', 'Spider Climb, Communal', 'Touch Injection', 'Life Conduit, Improved', 'Obsidian Flow', 'Phantom Chariot', 'Phantom Steed, Communal', ]

	@spells_arcane_level_4 = ['Phantom Steed, Communal', 'Shocking Image', 'Pellet Blast', 'Wreath of Blades', 'Animal Aspect, Greater', 'Magic Siege Engine, Greater', 'Named Bullet', 'Nondetection, Communal', 'Obsidian Flow', 'Phantom Chariot', 'Protection from Energy, Communal', 'Telekinetic Charge', 'Tongues, Communal', 'Hostile Juxtaposition', 'Stoneskin, Communal', 'Summoner Conduit', 'Absorb Toxicity', 'Debilitating Portent', ]

	@spells_arcane_level_5 = ['Symbol of Striking', 'Absorb Toxicity', 'Energy Siege Shot', 'Hostile Juxtaposition', 'Stoneskin, Communal', 'Summoner Conduit', 'Wreath of Blades', 'Life Conduit, Greater', 'Tar Pool', ]

	@spells_arcane_level_6 = ['Walk through Space', 'Energy Siege Shot, Greater', 'Named Bullet, Greater', 'Tar Pool', 'Hostile Juxtaposition, Greater', 'Dust Form', ]

	@spells_arcane_level_7 = ['Arcane Cannon', 'Hostile Juxtaposition, Greater', 'Walk through Space', 'Walk through Space', ]

	@spells_arcane_level_8 = ['Frightful Aspect', ]

	@spells_arcane_level_9 = ['Heroic Invocation', 'Mind Blank, Communal',]

	#divine spells contain all cleric/druid/inquisitor/paladin/ranger spells but only ONE instance at whichever LOWER spell level
	@spells_divine_level_0 = []

	@spells_divine_level_1 = ['Abundant Ammunition', 'Air Bubble', 'Compel Hostility', 'Deadeye\'s Lore', 'Liberating Command', 'Moment of Greatness', 'Reinforce Armaments', 'Sun Metal', 'Damp Powder', 'Weaken Powder', 'Bowstaff', 'Litany of Sloth', 'Litany of Weakness', 'Lock Gaze', 'Longshot', 'Peacebond', 'Returning Weapon', 'Unerring Weapon', 'Tactical Acumen', ]

	@spells_divine_level_2 = ['Ant Haul, Communal', 'Bestow Weapon Proficiency', 'Effortless Armor', 'Endure Elements, Communal', 'Instrument of Agony', 'Magic Siege Engine', 'Pilfering Hand', 'Protection from Chaos, Communal', 'Protection from Evil, Communal', 'Protection from Good, Communal', 'Protection from Law, Communal', 'Reinforce Armaments, Communal', 'Returning Weapon', 'Animal Aspect', 'Certain Grip', 'Forest Friend', 'Frost Fall', 'Wilderness Soldiers', 'Blistering Invective', 'Brow Gasher', 'Discovery Torch', 'Litany of Defense', 'Qualm', 'Returning Weapon, Communal', 'Tactical Acumen', 'Divine Arrow', 'Litany of Eloquence', 'Litany of Entanglement', 'Litany of Righteousness', 'Litany of Warding', 'Locate Weakness', 'Reloading Hands', 'Ricochet Shot', ]

	@spells_divine_level_3 = ['Chain of Perdition', 'Daybreak Arrow', 'Deadly Juggernaut', 'Delay Poison, Communal', 'Discovery Torch', 'Resist Energy, Communal', 'Returning Weapon, Communal', 'Share Language, Communal', 'Animal Aspect, Greater', 'Companion Mind Link', 'Pup Shape', 'Resinous Skin', 'Spider Climb, Communal', 'Burst of Speed', 'Litany of Eloquence', 'Litany of Entanglement', 'Litany of Righteousness', 'Litany of Warding', 'Locate Weakness', 'Litany of Escape', 'Litany of Sight', 'Named Bullet', 'Protection from Energy, Communal', ]

	@spells_divine_level_4 = ['Debilitating Portent', 'Protection from Energy, Communal', 'Summoner Conduit', 'Water Walk, Communal', 'Absorb Toxicity', 'Obsidian Flow', 'Find Quarry', 'Judgment Light', 'Litany of Escape', 'Litany of Sight', 'Magic Siege Engine, Greater', 'Named Bullet', 'Litany of Thunder', 'Litany of Vengeance', 'Darkvision, Communal', 'Named Bullet, Greater', 'Terrain Bond']

	@spells_divine_level_5 = ['Air Walk, Communal', 'Magic Siege Engine, Greater', 'Spell Immunity, Communal', 'Symbol of Striking', 'Tongues, Communal', 'Litany of Thunder', 'Litany of Vengeance', 'Stoneskin, Communal', ]

	@spells_divine_level_6 = ['Dust Form', 'Stoneskin, Communal', 'Tar Pool', 'Litany of Madness', 'Named Bullet, Greater']

	@spells_divine_level_7 = ['Jolting Portent', 'Siege of Trees', ]

	@spells_divine_level_8 = ['Frightful Aspect', ]

	@spells_divine_level_9 = ['Spell Immunity, Greater Communal', 'Siege of Trees, Greater']

	def GrimoireUC.get_spell(level = 0, type = 'any')
		case type
			when 'a','A','arcane','Arcane'
				case level
					when 0
						return @spells_arcane_level_0[rand(@spells_arcane_level_0.count)]
					when 1
						return @spells_arcane_level_1[rand(@spells_arcane_level_1.count)]
					when 2
						return @spells_arcane_level_2[rand(@spells_arcane_level_2.count)]
					when 3
						return @spells_arcane_level_3[rand(@spells_arcane_level_3.count)]
					when 4
						return @spells_arcane_level_4[rand(@spells_arcane_level_4.count)]
					when 5
						return @spells_arcane_level_5[rand(@spells_arcane_level_5.count)]
					when 6
						return @spells_arcane_level_6[rand(@spells_arcane_level_6.count)]
					when 7
						return @spells_arcane_level_7[rand(@spells_arcane_level_7.count)]
					when 8
						return @spells_arcane_level_8[rand(@spells_arcane_level_8.count)]
					when 9
						return @spells_arcane_level_9[rand(@spells_arcane_level_9.count)]
					else
						return 'invalid spell level'
				end
			when 'd','D','divine','Divine'
				case level
					when 0
						return []#@spells_divine_level_0[rand(@spells_divine_level_0.count)]
					when 1
						return @spells_divine_level_1[rand(@spells_divine_level_1.count)]
					when 2
						return @spells_divine_level_2[rand(@spells_divine_level_2.count)]
					when 3
						return @spells_divine_level_3[rand(@spells_divine_level_3.count)]
					when 4
						return @spells_divine_level_4[rand(@spells_divine_level_4.count)]
					when 5
						return @spells_divine_level_5[rand(@spells_divine_level_5.count)]
					when 6
						return @spells_divine_level_6[rand(@spells_divine_level_6.count)]
					when 7
						return @spells_divine_level_7[rand(@spells_divine_level_7.count)]
					when 8
						return @spells_divine_level_8[rand(@spells_divine_level_8.count)]
					when 9
						return @spells_divine_level_9[rand(@spells_divine_level_9.count)]
					else
						return 'invalid spell level'
				end
			when 'any','Any'
				case level
					when 0
						if rand(@spells_arcane_level_0.count+@spells_divine_level_0.count)+1 <= @spells_arcane_level_0.count
							return get_spell(0, 'arcane')
						else
							return get_spell(0, 'divine')
						end
					when 1
						if rand(@spells_arcane_level_1.count+@spells_divine_level_1.count)+1 <= @spells_arcane_level_1.count
							return get_spell(1, 'arcane')
						else
							return get_spell(1, 'divine')
						end
					when 2
						if rand(@spells_arcane_level_2.count+@spells_divine_level_2.count)+1 <= @spells_arcane_level_2.count
							return get_spell(2, 'arcane')
						else
							return get_spell(2, 'divine')
						end
					when 3
						if rand(@spells_arcane_level_3.count+@spells_divine_level_3.count)+1 <= @spells_arcane_level_3.count
							return get_spell(3, 'arcane')
						else
							return get_spell(3, 'divine')
						end
					when 4
						if rand(@spells_arcane_level_4.count+@spells_divine_level_4.count)+1 <= @spells_arcane_level_4.count
							return get_spell(4, 'arcane')
						else
							return get_spell(4, 'divine')
						end
					when 5
						if rand(@spells_arcane_level_5.count+@spells_divine_level_5.count)+1 <= @spells_arcane_level_5.count
							return get_spell(5, 'arcane')
						else
							return get_spell(5, 'divine')
						end
					when 6
						if rand(@spells_arcane_level_6.count+@spells_divine_level_6.count)+1 <= @spells_arcane_level_6.count
							return get_spell(6, 'arcane')
						else
							return get_spell(6, 'divine')
						end
					when 7
						if rand(@spells_arcane_level_7.count+@spells_divine_level_7.count)+1 <= @spells_arcane_level_7.count
							return get_spell(7, 'arcane')
						else
							return get_spell(7, 'divine')
						end
					when 8
						if rand(@spells_arcane_level_8.count+@spells_divine_level_8.count)+1 <= @spells_arcane_level_8.count
							return get_spell(8, 'arcane')
						else
							return get_spell(8, 'divine')
						end
					when 9
						if rand(@spells_arcane_level_9.count+@spells_divine_level_9.count)+1 <= @spells_arcane_level_9.count
							return get_spell(9, 'arcane')
						else
							return get_spell(9, 'divine')
						end
					else
						return 'invalid spell level'
				end
			else
				return 'invalid spell type'
		end
	end

	def GrimoireUC.debug_spells()
		puts "--- UC SPELLS DEBUG ---"
		puts @spells_arcane_level_0.count.to_s + ' level 0 arcane spells'
		puts @spells_arcane_level_1.count.to_s + ' level 1 arcane spells'
		puts @spells_arcane_level_2.count.to_s + ' level 2 arcane spells'
		puts @spells_arcane_level_3.count.to_s + ' level 3 arcane spells'
		puts @spells_arcane_level_4.count.to_s + ' level 4 arcane spells'
		puts @spells_arcane_level_5.count.to_s + ' level 5 arcane spells'
		puts @spells_arcane_level_6.count.to_s + ' level 6 arcane spells'
		puts @spells_arcane_level_7.count.to_s + ' level 7 arcane spells'
		puts @spells_arcane_level_8.count.to_s + ' level 8 arcane spells'
		puts @spells_arcane_level_9.count.to_s + ' level 9 arcane spells'

		puts @spells_divine_level_0.count.to_s + ' level 0 divine spells'
		puts @spells_divine_level_1.count.to_s + ' level 1 divine spells'
		puts @spells_divine_level_2.count.to_s + ' level 2 divine spells'
		puts @spells_divine_level_3.count.to_s + ' level 3 divine spells'
		puts @spells_divine_level_4.count.to_s + ' level 4 divine spells'
		puts @spells_divine_level_5.count.to_s + ' level 5 divine spells'
		puts @spells_divine_level_6.count.to_s + ' level 6 divine spells'
		puts @spells_divine_level_7.count.to_s + ' level 7 divine spells'
		puts @spells_divine_level_8.count.to_s + ' level 8 divine spells'
		puts @spells_divine_level_9.count.to_s + ' level 9 divine spells'
	end
end