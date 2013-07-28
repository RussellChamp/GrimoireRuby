#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

module GrimoireUM


#Alchemist Spells - They use formulae instead of proper spells, but I'll leave there list here for reference
#1st-Level Alchemist Spells
#'Anticipate Peril', 'Polypurpose Panacea', 'Vocal Alteration', 'Youthful Appearance'
#2nd-Level Alchemist Spells
#'Acute Senses', 'Blood Transcription', 'Defensive Shock', 'Ghostly Disguise', 'Skinsend'
#3rd-Level Alchemist Spells
#'Age Resistance, Lesser', 'Burrow', 'Countless Eyes', 'Eruptive Pustules', 'Marionette Possession', 'Monstrous Physique I', 'Undead Anatomy I'
#4th-Level Alchemist Spells
#'Age Resistance', 'Darkvision, Greater', 'Echolocation', 'False Life, Greater', 'Monstrous Physique II', 'Touch of Slime', 'Vermin Shape I', 'Vitriolic Mist'
#5th-Level Alchemist Spells
#'Age Resistance, Greater', 'Monstrous Physique III', 'Undead Anatomy II', 'Vermin Shape II'
#6th-Level Alchemist Spells
#'Monstrous Physique IV', 'Undead Anatomy III'

# Antipaladin Spells - This isn't really a PC available class, but I'll leave these here for reference
#1st-Level Antipaladin Spells
#'Murderous Command', 'Summon Minor Monster', 'Wartrain Mount'
#2nd-Level Antipaladin Spells
#'Pernicious Poison', 'Toxic Gift', 'Unadulterated Loathing', 'Vestment of the Champion'
#3rd-Level Antipaladin Spells
#'Blade of Dark Triumph', 'Utter Contempt'
#4th-Level Antipaladin Spells
#'Darkvision, Greater', 'Unholy Sword'
	
	#NOTE: Some spells appear multiple times since they appear in different caster books at different levels. I'm too lazy to remove those duplicates so this is "intentional"

	#arcane spells contain all Wizard/Sorcerer/Bard/Magus/Summoner/Witch spells.
	@spells_arcane_level_0 = []

	@spells_arcane_level_1 = ['Anticipate Peril', 'Chord of Shards', 'Delusional Pride', 'Ear-Piercing Scream', 'Forced Quiet', 'Fumbletongue', 'Horn of Pursuit', 'Ki Arrow', 'Play Instrument', 'Summon Minor Monster', 'Unnatural Lust', 'Unprepared Combatant', 'Vocal Alteration', 'Youthful Appearance', 'Corrosive Touch', 'Frostbite', 'Bungle', 'Decompose Corpse', 'Icicle Dagger', 'Interrogation', 'Polypurpose Panacea', 'Ray of Sickening', 'Restore Corpse', 'Shadow Weapon', 'Snapdragon Fireworks', 'Diagnose Disease', 'Hex Ward', 'Remove Sickness', 'Sanctify Corpse']

	@spells_arcane_level_2 = ['Acute Senses', 'Allegro', 'Boiling Blood', 'Compassionate Ally', 'Delay Pain', 'Disguise Other', 'Distracting Cacophony', 'Distressing Tone', 'Ghostly Disguise', 'Haunting Mists', 'Mad Hallucination', 'Masterwork Transformation', 'Miserable Pity', 'Oppressive Boredom', 'Piercing Shriek', 'Reckless Infatuation', 'Share Memory', 'Silk to Steel', 'Snapdragon Fireworks', 'Steal Voice', 'Unadulterated Loathing', 'Wartrain Mount', 'Blood Transcription', 'Defensive Shock', 'Frigid Touch', 'Badger\'s Ferocity', 'Cushioning Bands', 'Disfiguring Touch ', 'Pernicious Poison', 'Protective Penumbra', 'Sculpt Simulacrum', 'Silk To Steel', 'Skinsend', 'Symbol of Mirroring', 'Unnatural Lust', 'Unshakable Chill', 'Web Shelter', 'Restore Eidolon, Lesser']

	@spells_arcane_level_3 = ['Control Summoned Creature', 'Curse of Disgust', 'Exquisite Accompaniment', 'Rain of Frogs', 'Haunting Choir', 'Mad Monkeys', 'Malicious Spite', 'Overwhelming Grief', 'Smug Narcissism', 'Terrible Remorse', 'Vision of Hell', 'Witness', 'Force Hook Charge', 'Force Punch', 'Monstrous Physique I', 'Undead Anatomy I', 'Animate Dead, Lesser', 'Anthropomorphic Animal', 'Ash Storm', 'Burrow', 'Countless Eyes', 'Distracting Cacophony', 'Eldritch Fever', 'Eruptive Pustules', 'Excruciating Deformation', 'Howling Agony', 'Ki Leech', 'Loathsome Veil', 'Marionette Possession', 'Reckless Infatuation', 'Sands of Time', 'Strangling Hair', 'Toxic Gift', 'Unadulterated Loathing', 'Agonize', 'Restore Eidolon', 'Cackling Skull', 'Spit Venom', 'Vermin Shape I']

	@spells_arcane_level_4 = ['Dance of a Hundred Cuts', 'Daze, Mass', 'Echolocation', 'Envious Urge', 'Primal Scream', 'Serenity', 'Shadow Step', 'Sonic Thrust', 'Utter Contempt', 'Virtuoso Performance', 'Wall of Sound', 'Arcana Theft', 'Monstrous Physique II', 'Vermin Shape I', 'Age Resistance, Lesser', 'Agonize', 'Control Summoned Creature', 'Curse of Magic Negation', 'Darkvision, Greater', 'False Life, Greater', 'Familiar Melding', 'Fleshworm Infestation', 'Malfunction', 'Malicious Spite', 'Overwhelming Grief', 'Ride the Waves', 'Simulacrum, Lesser', 'Symbol of Revelation', 'Symbol of Slowing', 'Terrible Remorse', 'Touch of Slime', 'Vitriolic Mist', 'Volcanic Storm', 'Cape of Wasps', 'Symbol of Healing', 'Vermin Shape II']

	@spells_arcane_level_5 = ['Joyful Rapture', 'Ki Shout', 'Resonating Word', 'Shadowbard', 'Vengeful Outrage', 'Acidic Spray', 'Corrosive Consumption', 'Monstrous Physique III', 'Undead Anatomy II', 'Vermin Shape II', 'Astral Projection, Lesser', 'Curse of Disgust', 'Echolocation', 'Fickle Winds', 'Icy Prison', 'Lightning Arc', 'Plague Carrier', 'Possess Object', 'Rapid Repair', 'Smug Narcissism', 'Sonic Thrust', 'Soothe Construct', 'Symbol of Scrying', 'Unbreakable Construct', 'Wall of Sound', 'Conjure Black Pudding', 'Create Demiplane, Lesser', 'Ice Crystal Teleport', 'Contagion, Greater', 'Curse, Major']

	@spells_arcane_level_6 = ['Dance of a Thousand Cuts', 'Overwhelming Presence', 'Waves of Ecstasy', 'Monstrous Physique IV', 'Undead Anatomy III', 'Age Resistance', 'Battlemind Link', 'Cold Ice Strike', 'Conjure Black Pudding', 'Contagion, Greater', 'Curse, Major', 'Envious Urge', 'Ice Crystal Teleport', 'Leashed Shackles ', 'Serenity', 'Symbol of Sealing', 'Utter Contempt', 'Vengeful Outrage', 'Create Demiplane', 'Eagle Aerie', 'Epidemic', 'Plague Storm']

	@spells_arcane_level_7 = ['Age Resistance, Greater', 'Caustic Eruption', 'Circle of Clarity', 'Control Construct', 'Create Demiplane, Lesser', 'Epidemic', 'Ice Body', 'Joyful Rapture', 'Ki Shout', 'Lunar Veil', 'Plague Storm', 'Resonating Word', 'Scouring Winds', 'Temporary Resurrection', 'Waves of Ecstasy', 'Waves of Ecstasy']

	@spells_arcane_level_8 = ['Call Construct', 'Create Demiplane', 'Orb of the Void', 'Prediction of Failure', 'Undead Anatomy IV']

	@spells_arcane_level_9 = ['Create Demiplane, Greater', 'Cursed Earth', 'Icy Prison, Mass', 'Interplanetary Teleport', 'Overwhelming Presence', 'Ride the Lightning', 'Symbol of Strife', 'Symbol of Vulnerability', 'Transmute Blood to Acid', 'Wooden Phalanx', 'Polar Midnight',]

	#divine spells contain all cleric/druid/inquisitor/paladin/ranger spells but only ONE instance at whichever LOWER spell level
	@spells_divine_level_0 = []

	@spells_divine_level_1 = ['Decompose Corpse', 'Diagnose Disease', 'Forbid Action', 'Know the Enemy', 'Murderous Command', 'Ray of Sickening', 'Remove Sickness', 'Restore Corpse', 'Sanctify Corpse', 'Summon Minor Monster', 'Frostbite', 'Summon Minor Ally', 'Ear-Piercing Scream', 'Forced Quiet', 'Hex Ward', 'Horn of Pursuit', 'Interrogation', 'Lend Judgment', 'Persuasive Goad', 'Vocal Alteration', 'Wartrain Mount', 'Wartrain Mount', 'Word of Resolve', 'Anticipate Peril']

	@spells_divine_level_2 = ['Animate Dead, Lesser', 'Arrow of Law', 'Boiling Blood', 'Compassionate Ally', 'Delay Pain', 'Disfiguring Touch', 'Dread Bolt', 'Imbue with Aura', 'Masterwork Transformation', 'Protective Penumbra', 'Shard of Chaos', 'Spear of Purity', 'Surmount Affliction', 'Web Shelter', 'Frigid Touch', 'Pernicious Poison', 'Tar Ball', 'Unshakable Chill', 'Wartrain Mount', 'Acute Senses', 'Disguise Other', 'Distressing Tone', 'Ghostly Disguise', 'Howling Agony', 'Holy Shield', 'Vestment of the Champion', 'Badger\'s Ferocity']

	@spells_divine_level_3 = ['Agonize', 'Archon\'s Aura', 'Badger\'s Ferocity', 'Blessing of the Mole', 'Ki Leech', 'Sands of Time', 'Symbol of Healing', 'Vision of Hell', 'Anthropomorphic Animal', 'Ash Storm', 'Burrow', 'Burst of Nettles', 'Fungal Infestation', 'Mad Monkeys', 'Rain of Frogs', 'Spit Venom', 'Vermin Shape I', 'Countless Eyes', 'Eldritch Fever', 'Terrible Remorse', 'Witness', 'Blade of Bright Victory', 'Fickle Winds']

	@spells_divine_level_4 = ['Aura of Doom', 'Blood Crow Strike', 'Control Summoned Creature', 'Fleshworm Infestation', 'Oracle\'s Vessel', 'Plague Carrier', 'Ride the Waves', 'Soothe Construct', 'Spit Venom', 'Symbol of Revelation', 'Symbol of Slowing', 'Terrible Remorse', 'Age Resistance, Lesser', 'Arboreal Hammer', 'Atavism', 'Cape of Wasps', 'Echolocation', 'Touch of Slime', 'Vermin Shape II', 'Volcanic Storm', 'Battlemind Link', 'Curse of Magic Negation', 'Daze, Mass', 'Interrogation, Greater', 'Leashed Shackles ', 'Reprobation', 'Bestow Grace of the Champion', 'Raise Animal Companion', 'Symbol of Healing', 'Darkvision, Greater']

	@spells_divine_level_5 = ['Astral Projection, Lesser', 'Contagion, Greater', 'Curse of Magic Negation', 'Curse, Major', 'Fickle Winds', 'Forbid Action, Greater', 'Holy Ice', 'Rapid Repair', 'Reprobation', 'Serenity', 'Symbol of Scrying', 'Unholy Ice', 'Raise Animal Companion', 'Divine Pursuit', 'Lend Greater Judgment']

	@spells_divine_level_6 = ['Cold Ice Strike', 'Epidemic', 'Joyful Rapture', 'Plague Storm', 'Symbol of Sealing', 'Age Resistance', 'Eagle Aerie', 'Overwhelming Presence']

	@spells_divine_level_7 = ['Bestow Grace of the Champion', 'Circle of Clarity', 'Create Demiplane, Lesser', 'Lunar Veil', 'Waves of Ecstasy', 'Call Construct', 'Create Demiplane', 'Orb of the Void', 'Age Resistance, Greater', 'Scouring Winds']

	@spells_divine_level_8 = ['Atavism, Mass', 'Blood Mist']

	@spells_divine_level_9 = ['Create Demiplane, Greater', 'Cursed Earth', 'Interplanetary Teleport', 'Overwhelming Presence', 'Polar Midnight', 'Symbol of Strife', 'Symbol of Vulnerability', 'Wooden Phalanx', 'Summon Elder Worm', 'Summon Froghemoth']

	def GrimoireUM.get_spell(level = 0, type = 'any')
		case type
			when 'a','A','arcane','Arcane'
				case level
					when 0
						return []#[@spells_arcane_level_0[rand(@spells_arcane_level_0.count)]]
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

	def GrimoireUM.debug_spells()
		puts "--- UM SPELLS DEBUG ---"
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