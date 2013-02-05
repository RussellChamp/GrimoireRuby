#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

module Grimoire

	#arcane spells contain all Wizard/Sorcerer spells (at the wizard cost). I may add the others later
	@spells_arcane_level_0 = ['Resistance', 'Acid Splash', 'Detect Magic', 'Detect Poison', 'Read Magic', 'Daze', 'Dancing Lights', 'Flare', 'Light', 
		'Ray of Frost', 'Ghost Sound', 'Bleed', 'Disrupt Undead', 'Touch of Fatigue', 'Mage Hand', 'Mending', 'Message', 'Open/Close', 'Arcane Mark', 
		'Prestidigitation']
	@spells_arcane_level_1 = ['Alarm', 'Endure Elements', 'Hold Portal', 'Protection from Chaos', 'Protection from Evil', 'Protection from Good', 
		'Protection from Law', 'Shield', 'Grease', 'Mage Armor', 'Mount', 'Obscuring Mist', 'Summon Monster I', 'Unseen Servant', 
		'Comprehend Languages', 'Detect Secret Doors', 'Detect Undead', 'Identify', 'True Strike', 'Charm Person', 'Hypnotism', 'Sleep', 
		'Burning Hands', 'Floating Disk', 'Magic Missile', 'Shocking Grasp', 'Color Spray', 'Disguise Self', 'Magic Aura', 'Silent Image', 
		'Ventriloquism', 'Cause Fear', 'Chill Touch', 'Ray of Enfeeblement', 'Animate Rope', 'Enlarge Person', 'Erase', 'Expeditious Retreat', 
		'Feather Fall', 'Jump', 'Magic Weapon', 'Reduce Person']

	@spells_arcane_level_2 = ['Arcane LockM', 'Obscure Object', 'Protection from Arrows', 'Resist Energy', 'Acid Arrow', 'Fog Cloud', 'Glitterdust', 
		'Summon Monster II', 'Summon Swarm', 'Web', 'Detect Thoughts', 'Locate Object', 'See Invisibility', 'Daze Monster', 'Hideous Laughter', 
		'Touch of Idiocy', 'Continual FlameM', 'Darkness', 'Flaming Sphere', 'Gust of Wind', 'Scorching Ray', 'Shatter', 'Blur', 'Hypnotic Pattern', 
		'Invisibility', 'Magic Mouth', 'Minor Image', 'Mirror Image', 'Misdirection', 'Phantom TrapM', 'Blindness/Deafness', 'Command Undead', 
		'False Life', 'Ghoul Touch', 'Scare', 'Spectral Hand', 'Alter Self', 'Bear\'s Endurance', 'Bull\'s Strength', 'Cat\'s Grace', 'Darkvision',
		'Eagle\'s Splendor', 'Fox\'s Cunning', 'Knock', 'Levitate', 'Make Whole', 'Owl\'s Wisdom', 'Pyrotechnics', 'Rope Trick', 'Spider Climb', 
		'Whispering Wind']

	@spells_arcane_level_3 = ['Dispel Magic', 'Explosive Runes', 'Magic Circle against Chaos', 'Magic Circle against Evil', 'Magic Circle against Good', 
		'Magic Circle against Law', 'Nondetection', 'Protection from Energy', 'Phantom Steed', 'Sepia Snake Sigil', 'Sleet Storm', 'Stinking Cloud', 
		'Summon Monster III', 'Arcane Sight', 'Clairaudience/Clairvoyance', 'Tongues', 'Deep Slumber', 'Heroism', 'Hold Person', 'Rage', 'Suggestion', 
		'Daylight', 'Fireball', 'Lightning Bolt', 'Tiny Hut', 'Wind Wall', 'Displacement', 'Illusory Script', 'Invisibility Sphere', 'Major Image', 
		'Gentle Repose', 'Halt Undead', 'Ray of Exhaustion', 'Vampiric Touch', 'Beast Shape I', 'Blink', 'Flame Arrow', 'Fly', 'Gaseous Form', 'Haste', 
		'Keen Edge', 'Magic Weapon, Greater', 'Secret Page', 'Shrink Item', 'Slow', 'Water Breathing']

	@spells_arcane_level_4 = ['Dimensional Anchor', 'Fire Trap', 'Globe of Invulnerability, Lesser', 'Remove Curse', 'Stoneskin', 'Black Tentacles', 
		'Dimension Door', 'Minor Creation', 'Secure Shelter', 'Solid Fog', 'Summon Monster IV', 'Arcane Eye', 'Detect Scrying', 'Locate Creature', 
		'Scrying', 'Charm Monster', 'Confusion', 'Crushing Despair', 'Geas, Lesser', 'Fire Shield', 'Ice Storm', 'Resilient Sphere', 'Shout', 
		'Wall of Fire', 'Wall of Ice', 'Hallucinatory Terrain', 'Illusory Wall', 'Invisibility, Greater', 'Phantasmal Killer', 'Rainbow Pattern', 
		'Shadow Conjuration', 'Animate Dead', 'Bestow Curse', 'Contagion', 'Enervation', 'Fear', 'Beast Shape II', 'Elemental Body I', 
		'Enlarge Person, Mass', 'Mnemonic Enhancer', 'Reduce Person, Mass', 'Stone Shape']

	@spells_arcane_level_5 = ['Break Enchantment', 'Dismissal', 'Mage\'s Private Sanctum', 'Cloudkill', 'Mage\'s Faithful Hound', 'Major Creation', 
		'Planar Binding, Lesser', 'Secret Chest', 'Summon Monster V', 'Teleport', 'Wall of Stone', 'Contact Other Plane', 'Prying Eyes', 
		'Telepathic Bond', 'Dominate Person', 'Feeblemind', 'Hold Monster', 'Mind Fog', 'Symbol of SleepM', 'Cone of Cold', 'Interposing Hand', 
		'Sending', 'Wall of Force', 'Dream', 'False Vision', 'Mirage Arcana', 'Nightmare', 'Persistent Image', 'Seeming', 'Shadow Evocation', 
		'Blight', 'Magic Jar', 'Symbol of Pain', 'Waves of Fatigue', 'Animal Growth', 'Baleful Polymorph', 'Beast Shape III', 'Elemental Body II', 
		'Fabricate', 'Overland Flight', 'Passwall', 'Plant Shape I', 'Polymorph', 'Telekinesis', 'Transmute Mud to Rock', 'Transmute Rock to Mud', 
		'Permanency']

	@spells_arcane_level_6 = ['Antimagic Field', 'Dispel Magic, Greater', 'Globe of Invulnerability', 'Guards and Wards', 'Repulsion', 'Acid Fog', 
		'Planar Binding', 'Summon Monster VI', 'Wall of Iron', 'Analyze Dweomer', 'Legend LoreMF', 'True Seeing', 'Geas/Quest', 'Heroism, Greater', 
		'Suggestion, Mass', 'Symbol of Persuasion', 'Chain Lightning', 'Contingency', 'Forceful Hand', 'Freezing Sphere', 'Mislead', 'Permanent Image', 
		'Programmed ImageM', 'Shadow Walk', 'Veil', 'Circle of DeathM', 'Create Undead', 'Eyebite', 'Symbol of FearM', 'Undeath to Death', 
		'Bear\'s Endurance, Mass', 'Beast Shape IV', 'Bull\'s Strength, Mass', 'Cat\'s Grace, Mass', 'Control Water', 'Disintegrate', 
		'Eagle\'s Splendor, Mass', 'Elemental Body III', 'Flesh to Stone', 'Form of the Dragon I', 'Fox\'s Cunning, Mass', 'Mage\'s Lucubration', 
		'Move Earth', 'Owl\'s Wisdom, Mass', 'Plant Shape II', 'Stone to Flesh', 'Transformation']

	@spells_arcane_level_7 = ['Banishment', 'Sequester', 'Spell Turning', 'Instant Summons', 'Mage\'s Magnificent Mansion', 'Phase Door', 
		'Plane ShiftF', 'Summon Monster VII', 'Teleport, Greater', 'Teleport Object', 'Arcane Sight, Greater', 'Scrying, Greater', 'Vision', 
		'Hold Person, Mass', 'Insanity', 'Power Word Blind', 'Symbol of Stunning', 'Delayed Blast Fireball', 'Forcecage', 'Grasping Hand', 
		'Mage\'s Sword', 'Prismatic Spray', 'Invisibility, Mass', 'Project Image', 'Shadow Conjuration, Greater', 'Simulacrum', 'Control Undead', 
		'Finger of Death', 'Symbol of Weakness', 'Waves of Exhaustion', 'Control Weather', 'Elemental Body IV', 'Ethereal Jaunt', 
		'Form of the Dragon II', 'Giant Form I', 'Plant Shape III', 'Polymorph, Greater', 'Reverse Gravity', 'Statue', 'Limited Wish']

	@spells_arcane_level_8 = ['Dimensional Lock', 'Mind Blank', 'Prismatic Wall', 'Protection from Spells', 'Incendiary Cloud', 'Maze', 
		'Planar Binding, Greater', 'Summon Monster VIII', 'Trap the SoulM', 'Discern Location', 'Moment of Prescience', 'Prying Eyes, Greater', 
		'Antipathy', 'Binding', 'Charm Monster, Mass', 'Demand', 'Irresistible Dance', 'Power Word Stun', 'Symbol of Insanity', 'Sympathy', 
		'Clenched Fist', 'Polar Ray', 'Shout, Greater', 'Sunburst', 'Telekinetic Sphere', 'Scintillating Pattern', 'Screen', 'Shadow Evocation, Greater', 
		'Clone', 'Create Greater Undead', 'Horrid Wilting', 'Symbol of Death', 'Form of the Dragon III', 'Giant Form II', 'Iron Body', 
		'Polymorph Any Object', 'Temporal Stasis']

	@spells_arcane_level_9 = ['Freedom', 'Imprisonment', 'Mage\'s Disjunction', 'Prismatic Sphere', 'Gate', 'Refuge', 'Summon Monster IX', 
		'Teleportation Circle', 'Foresight', 'Dominate Monster', 'Hold Monster, Mass', 'Power Word Kill', 'Crushing Hand', 'Meteor Swarm', 'Shades', 
		'Weird', 'Astral Projection', 'Energy Drain', 'Soul Bind', 'Wail of the Banshee', 'Etherealness', 'Shapechange', 'Time Stop', 'Wish']

	#divine spells contain all cleric and druid spells but only ONE instance at whichever LOWER spell level
	@spells_divine_level_0 = ['Bleed', 'Create Water', 'Detect Magic', 'Detect Poison', 'Guidance', 'Light', 'Mending', 'Purify Food and Drink', 
		'Read Magic', 'Resistance', 'Stabilize', 'Virtue', 'Flare', 'Know Direction']

	@spells_divine_level_1 = ['Bane', 'Bless', 'Bless Water', 'Cause Fear', 'Command', 'Comprehend Languages', 'Cure Light Wounds', 'Curse Water', 
		'Deathwatch', 'Detect Chaos', 'Detect Evil', 'Detect Good', 'Detect Law', 'Detect Undead', 'Divine Favor', 'Doom', 'Endure Elements', 
		'Entropic Shield', 'Hide from Undead', 'Inflict Light Wounds', 'Magic Stone', 'Magic Weapon', 'Obscuring Mist', 
		'Protection from Chaos', 'Protection from Evil', 'Protection from Good', 'Protection from Law', 'Remove Fear', 'Sanctuary', 
		'Shield of Faith', 'Summon Monster I', 'Calm Animals', 'Charm Animal', 'Detect Animals or Plants', 'Detect Snares and Pits', 'Entangle', 
		'Faerie Fire', 'Goodberry', 'Hide from Animals', 'Jump', 'Longstrider', 'Magic Fang', 'Pass without Trace', 'Produce Flame', 'Shillelagh', 
		'Speak with Animals', 'Summon Nature\'s Ally I']

	@spells_divine_level_2 = ['Aid', 'Align Weapon', 'Augury', 'Bear\'s Endurance', 'Bull\'s Strength', 'Calm Emotions', 'Consecrate', 
		'Cure Moderate Wounds', 'Darkness', 'Death Knell', 'Delay Poison', 'Desecrate', 'Eagle\'s Splendor', 'Enthrall', 'Find Traps', 'Gentle Repose', 
		'Hold Person', 'Inflict Moderate Wounds', 'Make Whole', 'Owl\'s Wisdom', 'Remove Paralysis', 'Resist Energy', 'Restoration, Lesser', 'Shatter', 
		'Shield Other', 'Silence', 'Sound Burst', 'Spiritual Weapon', 'Status', 'Summon Monster II', 'Undetectable Alignment', 'Zone of Truth',
		'Animal Messenger', 'Animal Trance', 'Barkskin', 'Cat\'s Grace', 'Chill Metal', 'Delay Poison', 'Fire Trap', 'Flame Blade', 'Flaming Sphere', 
		'Fog Cloud', 'Gust of Wind', 'Heat Metal', 'Hold Animal', 'Reduce Animal', 'Soften Earth and Stone', 'Spider Climb', 
		'Summon Nature\'s Ally II', 'Summon Swarm', 'Tree Shape', 'Warp Wood', 'Wood Shape']

	@spells_divine_level_3 = ['Animate Dead', 'Bestow Curse', 'Blindness/Deafness', 'Contagion', 'Continual Flame', 'Create Food and Water', 
		'Cure Serious Wounds', 'Daylight', 'Deeper Darkness', 'Dispel Magic', 'Glyph of Warding', 'Helping Hand', 'Inflict Serious Wounds', 
		'Invisibility Purge', 'Locate Object', 'Magic Circle against Chaos', 'Magic Circle against Evil', 'Magic Circle against Good', 
		'Magic Circle against Law', 'Magic Vestment', 'Meld into Stone', 'Obscure Object', 'Prayer', 'Protection from Energy', 
		'Remove Blindness/Deafness', 'Remove Curse', 'Remove Disease', 'Searing Light', 'Speak with Dead', 'Stone Shape', 'Summon Monster III', 
		'Water Breathing', 'Water Walk', 'Wind Wall', 'Call Lightning', 'Diminish Plants', 'Dominate Animal', 'Magic Fang, Greater', 'Meld into Stone', 
		'Neutralize Poison', 'Plant Growth', 'Poison', 'Quench', 'Sleet Storm', 'Snare', 'Speak with Plants', 'Spike Growth','Summon Nature\'s Ally III']

	@spells_divine_level_4 = ['Air Walk', 'Chaos Hammer', 'Control Water', 'Cure Critical Wounds', 'Death Ward', 'Dimensional Anchor', 'Discern Lies', 
		'Dismissal', 'DivinationM', 'Divine Power', 'Freedom of Movement', 'Giant Vermin', 'Holy Smite', 'Imbue with Spell Ability', 
		'Inflict Critical Wounds', 'Magic Weapon, Greater', 'Neutralize Poison', 'Order\'s Wrath', 'Planar Ally, Lesser', 'Poison', 'Repel Vermin', 
		'Restoration', 'Sending', 'Spell Immunity', 'Summon Monster IV', 'Tongues', 'Unholy Blight', 'Antiplant Shell', 'Blight', 'Command Plants', 
		'Flame Strike', 'Freedom of Movement', 'Giant Vermin', 'Ice Storm', 'Reincarnate', 'Repel Vermin', 'Rusting Grasp', 'Scrying', 'Spike Stones', 
		'Summon Nature\'s Ally IV']

	@spells_divine_level_5 = ['Atonement', 'Break Enchantment', 'Breath of Life', 'Command, Greater', 'Commune', 'Cure Light Wounds, Mass', 
		'Dispel Chaos', 'Dispel Evil', 'Dispel Good', 'Dispel Law', 'Disrupting Weapon', 'Flame Strike', 'Hallow', 'Inflict Light Wounds, Mass', 
		'Insect Plague', 'Mark of Justice', 'Plane ShiftF', 'Raise Dead', 'Righteous Might', 'Slay Living', 'Spell Resistance', 
		'Summon Monster V', 'Symbol of Pain', 'Symbol of Sleep', 'True Seeing', 'UnhallowM', 'Wall of Stone', 'Animal Growth', 'Awaken', 
		'Baleful Polymorph', 'Call Lightning Storm', 'Commune with Nature', 'Control Winds', 'Death Ward', 'Insect Plague', 'Stoneskin', 
		'Summon Nature\'s Ally V', 'Transmute Mud to Rock', 'Transmute Rock to Mud', 'Tree Stride', 'Wall of Fire', 'Wall of Thorns']

	@spells_divine_level_6 = ['Animate Objects', 'Antilife Shell', 'Banishment', 'Bear\'s Endurance, Mass', 'Blade Barrier', 'Bull\'s Strength, Mass', 
		'Create Undead', 'Cure Moderate Wounds, Mass', 'Dispel Magic, Greater', 'Eagle\'s Splendor, Mass', 'Find the Path', 'Forbiddance', 'Geas/Quest', 
		'Glyph of Warding, Greater', 'Harm', 'Heal', 'Heroes\' Feast', 'Inflict Moderate Wounds, Mass', 'Owl\'s Wisdom, Mass', 'Planar Ally', 
		'Summon Monster VI', 'Symbol of Fear', 'Symbol of Persuasion', 'Undeath to Death', 'Wind Walk', 'Word of Recall', 'Antilife Shell', 
		'Cat\'s Grace, Mass', 'Fire Seeds', 'Ironwood', 'Liveoak', 'Move Earth', 'Owl\'s Wisdom, Mass', 'Repel Wood', 'Spellstaff', 'Stone Tell', 
		'Summon Nature\'s Ally VI', 'Transport via Plants', 'Wall of Stone']

	@spells_divine_level_7 = ['Blasphemy', 'Control Weather', 'Cure Serious Wounds, Mass', 'Destruction', 'Dictum', 'Ethereal Jaunt', 'Holy Word', 
		'Inflict Serious Wounds, Mass', 'Refuge', 'Regenerate', 'Repulsion', 'Restoration, Greater', 'Resurrection', 'Scrying, Greater', 
		'Summon Monster VII', 'Symbol of Stunning', 'Symbol of Weakness', 'Word of Chaos', 'Animate Plants', 'Changestaff', 'Control Weather', 
		'Creeping Doom', 'Fire Storm', 'Summon Nature\'s Ally VII', 'Sunbeam', 'Transmute Metal to Wood', 'True Seeing']

	@spells_divine_level_8 = ['Antimagic Field', 'Cloak of Chaos', 'Create Greater Undead', 'Cure Critical Wounds, Mass', 'Dimensional Lock', 
		'Discern Location', 'Earthquake', 'Fire Storm', 'Holy Aura', 'Inflict Critical Wounds, Mass', 'Planar Ally, Greater', 'Shield of Law', 
		'Spell Immunity, Greater', 'Summon Monster VIII', 'Symbol of Death', 'Symbol of Insanity', 'Unholy Aura', 'Animal Shapes', 'Control Plants', 
		'Finger of Death', 'Repel Metal or Stone', 'Reverse Gravity', 'Summon Nature\'s Ally VIII', 'Sunburst', 'Whirlwind', 'Word of Recall']

	@spells_divine_level_9 = ['Astral Projection', 'Energy Drain', 'Etherealness', 'Gate', 'Heal, Mass', 'Implosion', 'Miracle', 'Soul Bind', 
		'Storm of Vengeance', 'Summon Monster IX', 'True Resurrection', 'Antipathy', 'Elemental Swarm', 'Foresight', 'Regenerate', 'Shambler', 
		'Shapechange', 'Summon Nature\'s Ally IX', 'Sympathy']

	def Grimoire.get_spell(level = 0, type = 'any')
		case type
			when 'a','A','arcane','Arcane'
				case level
					when 0
						return @spells_arcane_level_0[rand(0...@spells_arcane_level_0.count)]
					when 1
						return @spells_arcane_level_1[rand(0...@spells_arcane_level_1.count)]
					when 2
						return @spells_arcane_level_2[rand(0...@spells_arcane_level_2.count)]
					when 3
						return @spells_arcane_level_3[rand(0...@spells_arcane_level_3.count)]
					when 4
						return @spells_arcane_level_4[rand(0...@spells_arcane_level_4.count)]
					when 5
						return @spells_arcane_level_5[rand(0...@spells_arcane_level_5.count)]
					when 6
						return @spells_arcane_level_6[rand(0...@spells_arcane_level_6.count)]
					when 7
						return @spells_arcane_level_7[rand(0...@spells_arcane_level_7.count)]
					when 8
						return @spells_arcane_level_8[rand(0...@spells_arcane_level_8.count)]
					when 9
						return @spells_arcane_level_9[rand(0...@spells_arcane_level_9.count)]
					else
						return 'invalid spell level'
				end
			when 'd','D','divine','Divine'
				case level
					when 0
						return @spells_divine_level_0[rand(0...@spells_divine_level_0.count)]
					when 1
						return @spells_divine_level_1[rand(0...@spells_divine_level_1.count)]
					when 2
						return @spells_divine_level_2[rand(0...@spells_divine_level_2.count)]
					when 3
						return @spells_divine_level_3[rand(0...@spells_divine_level_3.count)]
					when 4
						return @spells_divine_level_4[rand(0...@spells_divine_level_4.count)]
					when 5
						return @spells_divine_level_5[rand(0...@spells_divine_level_5.count)]
					when 6
						return @spells_divine_level_6[rand(0...@spells_divine_level_6.count)]
					when 7
						return @spells_divine_level_7[rand(0...@spells_divine_level_7.count)]
					when 8
						return @spells_divine_level_8[rand(0...@spells_divine_level_8.count)]
					when 9
						return @spells_divine_level_9[rand(0...@spells_divine_level_9.count)]
					else
						return 'invalid spell level'
				end
			when 'any','Any'
				case level
					when 0
						if rand(1..@spells_arcane_level_0.count+@spells_divine_level_0.count) <= @spells_arcane_level_0.count
							return get_spell(0, 'arcane')
						else
							return get_spell(0, 'divine')
						end
					when 1
						if rand(1..@spells_arcane_level_1.count+@spells_divine_level_1.count) <= @spells_arcane_level_1.count
							return get_spell(1, 'arcane')
						else
							return get_spell(1, 'divine')
						end
					when 2
						if rand(1..@spells_arcane_level_2.count+@spells_divine_level_2.count) <= @spells_arcane_level_2.count
							return get_spell(2, 'arcane')
						else
							return get_spell(2, 'divine')
						end
					when 3
						if rand(1..@spells_arcane_level_3.count+@spells_divine_level_3.count) <= @spells_arcane_level_3.count
							return get_spell(3, 'arcane')
						else
							return get_spell(3, 'divine')
						end
					when 4
						if rand(1..@spells_arcane_level_4.count+@spells_divine_level_4.count) <= @spells_arcane_level_4.count
							return get_spell(4, 'arcane')
						else
							return get_spell(4, 'divine')
						end
					when 5
						if rand(1..@spells_arcane_level_5.count+@spells_divine_level_5.count) <= @spells_arcane_level_5.count
							return get_spell(5, 'arcane')
						else
							return get_spell(5, 'divine')
						end
					when 6
						if rand(1..@spells_arcane_level_6.count+@spells_divine_level_6.count) <= @spells_arcane_level_6.count
							return get_spell(6, 'arcane')
						else
							return get_spell(6, 'divine')
						end
					when 7
						if rand(1..@spells_arcane_level_7.count+@spells_divine_level_7.count) <= @spells_arcane_level_7.count
							return get_spell(7, 'arcane')
						else
							return get_spell(7, 'divine')
						end
					when 8
						if rand(1..@spells_arcane_level_8.count+@spells_divine_level_8.count) <= @spells_arcane_level_8.count
							return get_spell(8, 'arcane')
						else
							return get_spell(8, 'divine')
						end
					when 9
						if rand(1..@spells_arcane_level_9.count+@spells_divine_level_9.count) <= @spells_arcane_level_9.count
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

	def Grimoire.debug_spells()
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