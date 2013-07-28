require "./grimoire.rb"

def how_many()
	print "* How many minor items? "
	minor = gets.chomp.to_i
	print "* How many medium items? "
	medium = gets.chomp.to_i
	print "* How many major items? "
	major = gets.chomp.to_i
	return [minor, medium, major]
end

puts "Would you like to get from?"
puts "[1] Pathfinder Core Rulebook"
puts "[2] Advanced Player's Guide"
puts "[3] Ultimate Magic"
puts "[4] Ultimate Combat"
print "Selection: "
input = gets.chomp

while input != 'quit'	
	case input
		when '1', 'core'
			puts "Which of the following would you like?"
			puts "[1] Armor and shields"
			puts "[2] Weapons"
			puts "[3] Potions"
			puts "[4] Rings"
			puts "[5] Rods"
			puts "[6] Scrolls"
			puts "[7] Staves"
			puts "[8] Wands"
			puts "[9] Wondrous Items"
			puts "[0] Other"
			print "Selection: "
			case gets.chomp
				when '1'
					print Grimoire.get_armor_and_shields(*(how_many))
				when '2'
					print Grimoire.get_weapons(*(how_many))
				when '3'
					print Grimoire.get_potions(*(how_many))
				when '4'
					print Grimoire.get_rings(*(how_many))
				when '5'
					print Grimoire.get_rods(*(how_many))
				when '6'
					print Grimoire.get_scrolls(*(how_many))
				when '7'
					print Grimoire.get_staves(*(how_many))
				when '8'
					print Grimoire.get_wands(*(how_many))
				when '9'
					print Grimoire.get_wondrous_items(*(how_many))
				when '0'
					puts "[1] Deity"
					puts "[2] Alignment"
					puts "[3] Ability Score"
					puts "[4] Skill"
					puts "[5] Item Power"
					puts "[6] Item Purpose"
					puts "[7] Dedicated Power"
					puts "[8] Item Intelligence"
					puts "[9] Humanoid Type"
					puts "[10] Outsider Type"
					puts "[11] Weapon Special Bane"
					print "Selection: "
					case gets.chomp
						when '1'
							print Grimoire.get_deity()
						when '2'
							print Grimoire.get_alignment()
						when '3'
							print Grimoire.get_ability_score()
						when '4'
							print Grimoire.get_skill()
						when '5'
							print Grimoire.get_item_power()
						when '6'
							print Grimoire.get_item_purpose()
						when '7'
							print Grimoire.get_dedicated_power()
						when '8'
							print ' * Item base value: '
							value = gets.chomp.to_i
							print Grimoire.get_item_intelligence(value)
						when '9'
							print Grimoire.get_humanoid_type().capitalize
						when '10'
							print Grimoire.get_outsider_type().capitalize
						when '11'
							print Grimoire.get_weapon_special_bane()
						else
							puts "Try again!"
					end
				else
					puts "I don't like you. Retry!"
			end

		when '2', 'apg'
			puts "Which of the following would you like?"
			puts "[6] Scrolls"
			print "Selection: "
			case gets.chomp
				when '6'
					print GrimoireAPG.get_scrolls(*(how_many))
			end
		when '3', 'um'
			puts "Which of the following would you like?"
			puts "[6] Scrolls"
			print "Selection: "
			case gets.chomp
				when '6'
					print GrimoireUM.get_scrolls(*(how_many))
			end	
		when '4', 'uc'
			puts "Which of the following would you like?"
			puts "[6] Scrolls"
			print "Selection: "
			case gets.chomp
				when '6'
					print GrimoireUC.get_scrolls(*(how_many))
			end
		else
			puts "none"
	end

	puts
	puts
	puts "Would you like to get from?"
	puts "[1] Pathfinder Core Rulebook"
	puts "[2] Advanced Player's Guide"
	puts "[3] Ultimate Magic"
	puts "[4] Ultimate Combat"
	print "Selection: "
	input = gets.chomp
end