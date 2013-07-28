#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

require './intelligence'

module GrimoireAPG

	@staves_url = "http://paizo.com/pathfinderRPG/prd/advanced/magicItems/staves.html"
	@staves = [
		['Staff of Toxins', 12600, @staves_url + "#staff-of-toxins-"],
		['Staff of Journeys', 13600],
		['Staff of Rigor', 13600],
		['Staff of Shrieking', 14400],
		['Staff of Souls', 16400],
		['Staff of Stealth', 18400],
		['Staff of Revelations', 20400],
		['Staff of Bolstering', 20800],
		['Staff of Traps', 21200],
		['Staff of Cackling wrath', 23600],
		['Staff of Obstacles', 25800],
		['Staff of Performance', 26800],
		['Staff of Hoarding', 30016],
		['Staff of Slumber', 34050],
		['Staff of Vision', 41250],
		['Staff of Weather', 44200],
		['Staff of Many Rays', 52800],
	] #17 staves

	def GrimoireAPG.get_staves(num_minor = 0, num_medium = 0, num_major = 0) #argument 'num_minor' is kept to retain similarity between get functions
		ret_staves = []
		#TODO: clean up code so that when you return duplicate rods it is more obvious
		if !num_minor.zero?
			puts "There are no minor staves"
		end
		num_medium.times{
			case rand(100)+1
			when 1..2
				staff = @staves[0]
			when 3..5
				staff = @staves[1]
			when 6..10
				staff = @staves[2]
			when 11..18
				staff = @staves[3]
			when 19..25
				staff = @staves[4]
			when 26..35
				staff = @staves[5]
			when 36..42
				staff = @staves[6]
			when 43..54
				staff = @staves[7]
			when 55..59
				staff = @staves[8]
			when 60..69
				staff = @staves[9]
			when 70..76
				staff = @staves[10]
			when 77..82
				staff = @staves[11]
			when 83..86
				staff = @staves[12]
			when 87..92
				staff = @staves[13]
			when 93..95
				staff = @staves[14]
			when 96..98
				staff = @staves[15]
			when 99..100
				staff = @staves[16]
			end
			case rand(100)+1
				when 1..30
					ret_staves << [staff[0] + ' (with a clue as to its purpose)', staff[1]]
				else
					ret_staves << staff
			end
		}
		num_major.times{
			case rand(100)+1
			when 1
				staff = @staves[0]
			when 2
				staff = @staves[1]
			when 3..4
				staff = @staves[2]
			when 5..8
				staff = @staves[3]
			when 9..11
				staff = @staves[4]
			when 12..16
				staff = @staves[5]
			when 17..20
				staff = @staves[6]
			when 21..26
				staff = @staves[7]
			when 27..28
				staff = @staves[8]
			when 29..35
				staff = @staves[9]
			when 36..44
				staff = @staves[10]
			when 45..54
				staff = @staves[11]
			when 55..60
				staff = @staves[12]
			when 61..72
				staff = @staves[13]
			when 73..83
				staff = @staves[14]
			when 84..91
				staff = @staves[15]
			when 92..100
				staff = @staves[16]
			end
			case rand(100)+1
				when 1..30
					ret_staves << [staff[0] + ' (with a clue as to its purpose)', staff[1]]
				else
					ret_staves << staff
			end
		}
		return ret_staves
	end

	def GrimoireAPG.debug_staves()
		puts "-- APG STAVES DEBUG --"
		puts "@staves count = " + @staves.count.to_s
	end
end