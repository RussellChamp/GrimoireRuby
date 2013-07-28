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

puts "Would you like something from core [1] or advanced player's guide [2]? (Type 1 or 2): "
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
			print "Selection: "
			case gets.chomp
				when '1'
					print Grimoire.get_armor_and_shields(*(how_many))
				when 2
					print Grimoire.get_weapons(*(how_many))
				when 3
					print Grimoire.get_potions(*(how_many))
				when 4
				when 5
				when 6
				when 7
				when 8
				when 9
				else
					;
			end

		when '2', 'apg'
			puts "Here's an item from APG"
		else
			puts "none"
	end

	puts
	puts
	puts "Would you like something from core [1] or advanced player's guide [2]? (Type 1 or 2): "
	input = gets.chomp
end