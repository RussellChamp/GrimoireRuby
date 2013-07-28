#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

module GrimoireAPG


#Alchemist Spells - They use formulae instead of proper spells, but I'll leave there list here for reference
#1st-Level Alchemist Spells
#'Ant Haul', 'Bomber\'s Eye', 'Crafter\'s Fortune', 'Keen Senses', 'Negate Aroma', 'Stone Fist', 'Touch of the Sea'
#2nd-Level Alchemist Spells
#'Alchemical Allocation', 'Elemental Touch', 'Fire Breath', 'Perceive Cues', 'Transmute Potion to Poison', 'Vomit Swarm'
#3rd-Level Alchemist Spells
#'Absorbing Touch', 'Amplify Elixir', 'Bloodhound', 'Draconic Reservoir', 'Elemental Aura', 'Seek Thoughts', 'Thorn Body'
#4th-Level Alchemist Spells
#'DetonateM', 'Dragon\'s Breath', 'Fluid Form', 'Universal FormulaM'
#5th-Level Alchemist Spells
#'Delayed Consumption', 'Elude TimeM', 'Planar Adaptation', 'Resurgent TransformationM'
#6th-Level Alchemist Spells
#'Twin Form'

# Antipaladin Spells - This isn't really a PC available class, but I'll leave these here for reference
#1st-Level Antipaladin Spells
#'Bane', 'Cause Fear', 'Command', 'Curse WaterM', 'Death Knell', 'Detect Poison', 'Disguise Self', 'Doom', 'Inflict Light Wounds', 'Magic Weapon', 'Protection from Good/Law', 'Read Magic', 'Summon Monster I'
#2nd-Level Antipaladin Spells
#'Blindness/Deafness', 'Bull\'s Strength', 'Corruption Resistance', 'Darkness', 'Darkvision', 'DesecrateM', 'Eagle\'s Splendor', 'Hold Person', 'Invisibility', 'Scare', 'Silence', 'Summon Monster II', 'Undetectable Alignment'
#3rd-Level Antipaladin Spells
#'Animate DeadM', 'Bestow Curse', 'Contagion', 'Deeper Darkness', 'Defile Armor', 'Dispel Magic', 'Inflict Moderate Wounds', 'Magic Circle against Good/Law', 'Magic Weapon, Greater', 'NondetectionM', 'Summon Monster III', 'Vampiric Touch'
#4th-Level Antipaladin Spells
#'Dispel Good', 'Dispel Law', 'Fear', 'Inflict Serious Wounds', 'Invisibility, Greater', 'Poison', 'Resounding Blow', 'Slay Living', 'Summon Monster IV', 

	#NOTE: Some spells appear multiple times since they appear in different caster books at different levels. I'm too lazy to remove those duplicates so this is "intentional"

	#arcane spells contain all Wizard/Sorcerer/Bard/Elementalist Wizard/Summoner/Witch spells.
	@spells_arcane_level_0 = ['Sift', 'Spark', 'Unwitting Ally', 'Message', 'Acid Splash', 'Ray of Frost', 'Putrefy Food and Drink']
	@spells_arcane_level_1 = ['Beguiling Gift', 'Borrow Skill', 'Dancing Lantern', 'Feather Step', 'Flare Burst', 'Innocence', 'Invigorate', 'Memory Lapse', 
		'Restful Sleep', 'Saving Finale', 'Share Language', 'Solid Note', 'Timely Inspiration', 'Touch of Gracelessness', 'Vanish', 'Alter Winds', 'Feather Fall', 
		'Shocking Grasp', 'Expeditious Excavation', 'Grease', 'Stone Fist', 'Burning Hands', 'Hydraulic Push', 'Obscuring Mist', 'Touch of the Sea', 'Ant Haul', 
		'Break', 'Crafter\'s Curse', 'Crafter\'s Fortune', 'Gravity Bow', 'Sculpt Corpse', 'Stumble Gap', 'Rejuvenate Eidolon, Lesser', 'Unfetter', 'Ill Omen', 
		'Mask Dweomer']

	@spells_arcane_level_2 = ['Blood Biography', 'Cacophonous Call', 'Create Treasure Map', 'Dust of Twilight', 'Enter Image', 'Gallant Inspiration', 
		'Ghostbane Dirge', 'Hidden Speech', 'Honeyed Tongue', 'Versatile Weapon', 'Elemental Speech', 'Elemental Touch', 'Resist Energy', 'Summon Monster II', 
		'Glide', 'Gust of Wind', 'Levitate', 'Whispering Wind', 'Acid Arrow', 'Create Pit', 'Glitterdust', 'Shatter', 'Stone Call', 'Burning Gaze', 'Fire Breath', 
		'Flaming Sphere', 'Pyrotechnics', 'Scorching Ray', 'Accelerate Poison', 'Fog Cloud', 'Slipstream', 'Arrow Eruption', 'Create Treasure Map', 'Share Language', 
		'Create Pit', 'Evolution Surge, Lesser', 'Summon Eidolon', 'Feast of Ashes', 'Fester', 'Perceive Cues', 'Pox Pustules', 'Vomit Swarm']

	@spells_arcane_level_3 = ['Arcane Concordance', 'Campfire Wall', 'Coordinated Effort', 'Elemental Speech', 'Feather Step, Mass', 'Invigorate, Mass', 
		'Jester\'s Jaunt', 'Purging Finale', 'Reviving Finale', 'Seek Thoughts', 'Thunderous Drums', 'Draconic Reservoir', 'Elemental Aura', 'Protection From Energy', 
		'Cloak of Winds', 'Fly', 'Gaseous Form', 'Lightning Bolt', 'Wind Wall', 'Shifting Sand', 'Spiked Pit', 'Stinking Cloud', 'Fireball', 'Flame Arrow', 'Aqueous Orb', 
		'Hydraulic Torrent', 'Sleet Storm', 'Water Breathing', 'Blood Biography', 'Devolution', 'Enter Image', 'Pain Strike', 'Twilight Knife', 'Versatile Weapon', 
		'Evolution Surge', 'Rejuvenate Eidolon', 'Cup of Dust', 'Guiding Star', 'Nature\'s Exile', 'Screech', 'Share Senses']

	@spells_arcane_level_4 = ['Denounce', 'Discordant Blast', 'Ghostbane Dirge, Mass', 'Heroic Finale', 'Treasure Stitching', 'Wandering Star Motes', 'Detonate', 
		'Dragon\'s Breath', 'Elemental Body I', 'Summon Monster IV', 'Ball Lightning', 'River of Wind', 'Shout', 'Acid Pit', 'Calcific Touch', 'Stone Shape', 'Stoneskin', 
		'Fire Shield', 'Fire Trap', 'Firefall', 'Wall of Fire', 'Ice Storm', 'Solid Fog', 'Wall of Ice', 'Acid Pit', 'Detonate', 'Moonstruck', 'Shadow Projection', 
		'Share Senses', 'True Form', 'Evolution Surge, Greater', 'Purified Calling', 'Transmogrify', 'Sleepwalk', 'Spite', 'Threefold Aspect']

	@spells_arcane_level_5 = ['Bard\'s Escape', 'Cacophonous Call, Mass', 'Cloak of Dreams', 'Deafening Song Bolt', 'Foe to Friend', 'Frozen Note', 'Phantasmal Web', 
		'Stunning Finale', 'Unwilling Shield', 'Elemental Body II', 'Planar Adaptation', 'Planar Binding, Lesser', 'Summon Monster V', 'Overland Flight', 'Suffocation', 
		'Hungry Pit', 'Passwall', 'Transmute Mud to Rock', 'Transmute Rock to Mud', 'Wall of Stone', 'Fire Snake', 'Geyser', 'Cloudkill', 'Cone of Cold', 
		'Life Bubble', 'Pain Strike, Mass', 'Treasure Stitching', 'Rejuvenate Eidolon, Greater', 'Banish Seeming', 'Rest Eternal']

	@spells_arcane_level_6 = ['Brilliant Inspiration', 'Deadly Finale', 'Euphoric Tranquility', 'Fool\'s Forbiddance', 'Getaway', 'Pied Piping', 'Elemental Body III', 
		'Planar Binding', 'Summon Monster VI', 'Chain Lightning', 'Sirocco', 'Acid Fog', 'Flesh to Stone', 'Move Earth', 'Stone to Flesh', 'Wall of Iron', 
		'Contagious Flame', 'Fluid Form', 'Freezing Sphere', 'Cloak of Dreams', 'Enemy Hammer', 'Unwilling Shield', 'Planar Adaptation, Mass', 'Fester, Mass', 
		'Swarm Skin']

	@spells_arcane_level_7 = ['Elemental Body IV', 'Planar Adaptation, Mass', 'Summon Monster VII', 'Control Weather', 'Fly, Mass', 'Rampart', 'Reverse Gravity', 
		'Statue', 'Delayed Blast Fireball', 'Firebrand', 'Vortex', 'Deflection', 'Expend', 'Phantasmal Revenge']

	@spells_arcane_level_8 = ['Planar Binding, Greater', 'Summon Monster VII', 'Shout, Greater', 'Stormbolts', 'Iron Body', 'Wall of Lava', 'Incendiary Cloud', 
		'Horrid Wilting', 'Polar Ray', 'Seamantle', 'Euphoric Tranquility']

	@spells_arcane_level_9 = ['Gate', 'Suffocation, Mass', 'Winds of Vengeance', 'Clashing Rocks', 'World Wave', 'Fiery Body', 'Meteor Swarm', 'Tsunami', 'Tsunami', 
		'Wall of SuppressionM']

	#divine spells contain all cleric/druid/inquisitor/paladin/ranger spells but only ONE instance at whichever LOWER spell level
	@spells_divine_level_0 = ['Spark', 'Brand', 'Sift']

	@spells_divine_level_1 = ['Ant Haul', 'Dancing Lantern', 'Alter Winds', 'Aspect of the Falcon', 'Bristle', 'Call Animal', 'Cloak of Shade', 'Detect Aberration', 
		'Expeditious Excavation', 'Feather Step', 'Flare Burst', 'Hydraulic Push', 'Keen Senses', 'Negate Aroma', 'Stone Fist', 'Touch of the Sea', 'Burst Bonds', 
		'Tireless Pursuit', 'Wrath', 'Challenge Evil', 'Ghostbane Dirge', 'Grace', 'Hero\'s Defiance', 'Honeyed Tongue', 'Knight\'s Calling', 'Rally Point', 
		'Veil of Positive Energy', 'Glide', 'Gravity Bow', 'Hunter\'s Howl', 'Lead Blades', 'Residual Tracking']

	@spells_divine_level_2 = ['Blessing of Courage and Life', 'Ghostbane Dirge', 'Grace', 'Instant Armor', 'Oracle\'s Burden', 'Share Language', 'Weapon of Awe', 
		'Accelerate Poison', 'Aspect of the Bear', 'Burning Gaze', 'Campfire Wall', 'Eagle Eye', 'Elemental Speech', 'Feast of Ashes', 'Glide', 'Lockjaw', 
		'Natural Rhythm', 'Pox Pustules', 'Scent Trail', 'Slipstream', 'Stone Call', 'Bloodhound', 'Castigate', 'Confess', 'Corruption Resistance', 
		'Flames of the Faithful', 'Follow Aura', 'Honeyed Tongue', 'Perceive Cues', 'Sacred Bond', 'Aura of Greater Courage', 'Bestow Grace', 'Fire of Entanglement', 
		'Light Lance', 'Paladin\'s Sacrifice', 'Righteous Vigor', 'Saddle Surge', 'Wake of Light', 'Allfood', 'Arrow Eruption', 'Chameleon Stride', 
		'Create Treasure Map', 'Guiding Star', 'Hide Campsite', 'Hunter\'s Eye', 'Protective Spirit', 'Versatile Weapon']

	@spells_divine_level_3 = ['Blood Biography', 'Borrow Fortune', 'Elemental Speech', 'Enter Image', 'Guiding Star', 'Nap Stack', 'Sacred Bond', 'Wrathful Mantle', 
		'Aqueous Orb', 'Cloak of Winds', 'Create Treasure Map', 'Cup of Dust', 'Feather Step, Mass', 'Hide Campsite', 'Hydraulic Torrent', 'Lily Pad Stride', 
		'Nature\'s Exile', 'Shifting Sand', 'Banish Seeming', 'Cast Out', 'Coordinated Effort', 'Fester', 'Hidden Speech', 'Hunter\'s Eye', 'Retribution', 
		'Righteous Vigor', 'Seek Thoughts', 'Ward the Faithful', 'Divine Transfer', 'Fire of Judgment', 'Ghostbane Dirge, Mass', 'Holy Whisper', 
		'Marks of Forbiddance', 'Sanctify Armor', 'Aspect of the Stag', 'Bloody Claws', 'Instant Enemy', 'Life Bubble', 'Strong Jaw', 'Tireless Pursuers', 
		'Venomous Bolt']

	@spells_divine_level_4 = ['Blessing of Fervor', 'Planar Adaptation', 'Rest Eternal', 'Spiritual Ally', 'Aspect of the Stag', 'Ball Lightning', 'Bloody Claws', 
		'Geyser', 'Grove of Respite', 'Life Bubble', 'Moonstruck', 'River of Wind', 'Strong Jaw', 'Thorn Body', 'True Form', 'Brand, Greater', 'Coward\'s Lament', 
		'Defile Armor', 'Denounce', 'Forced Repentance', 'Rebuke', 'Sanctify Armor', 'Shared Wrath', 'Sleepwalk', 'Tireless Pursuers', 'Blaze of Glory', 
		'Fire of Vengeance', 'King\'s Castle', 'Oath of Peace', 'Resounding Blow', 'Sacrificial Oath', 'Stay the Hand', 'Aspect of the Wolf', 
		'Blessing of the Salamander', 'Bow Spirit']

	@spells_divine_level_5 = ['Cleanse', 'Ghostbane Dirge, Mass', 'Life Bubble', 'Pillar of Life', 'Snake Staff', 'Treasure Stitching', 'Aspect of the Wolf', 
		'Blessing of the Salamander', 'Fire Snake', 'Rest Eternal', 'Threefold Aspect', 'Castigate, Mass', 'Resounding Blow', 'Unwilling Shield']

	@spells_divine_level_6 = ['Planar Adaptation, Mass', 'Sirocco', 'Swarm Skin', 'Cleanse', 'Fester, Mass']

	@spells_divine_level_7 = ['Rampart', 'Vortex']

	@spells_divine_level_8 = ['Divine Vessel', 'Euphoric Tranquility', 'Stormbolts', 'Seamantle', 'Wall of Lava']

	@spells_divine_level_9 = ['Winds of Vengeance', 'Clashing Rocks', 'Tsunami', 'World Wave']

	def GrimoireAPG.get_spell(level = 0, type = 'any')
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
						return @spells_divine_level_0[rand(@spells_divine_level_0.count)]
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

	def GrimoireAPG.debug_spells()
		puts "--- APG SPELLS DEBUG ---"
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