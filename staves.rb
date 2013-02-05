#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

require './intelligence'

module Grimoire

	@staves_url = "http://paizo.com/pathfinderRPG/prd/magicItems/staves.html"
	@staves = [
		['Staff of Charming', 17600, @staves_url + "#staff-of-charming"],
		['Staff of Fire', 18950],
		['Staff of Swarming Insects', 22800],
		['Staff of Size Alteration', 26150],
		['Staff of Healing', 29600],
		['Staff of Frost', 41400],
		['Staff of Illumination', 51500],
		['Staff of Defense', 62000],
		['Staff of Abjuration', 82000],
		['Staff of Conjuration', 82000],
		['Staff of Divination', 82000],
		['Staff of Enchantment', 82000],
		['Staff of Evocation', 82000],
		['Staff of Illusion', 82000],
		['Staff of Necromancy', 82000],
		['Staff of Transmutation', 82000],
		['Staff of Earth and Stone', 85800],
		['Staff of Woodlands', 100400],
		['Staff of Life', 109400],
		['Staff of Passage', 206900],
		['Staff of Power', 235000],
	] #21 staves

	def Grimoire.get_staves(num_minor = 0, num_medium = 0, num_major = 0) #argument 'num_minor' is kept to retain similarity between get functions
		ret_staves = []
		#TODO: clean up code so that when you return duplicate rods it is more obvious
		if !num_minor.zero?
			puts "There are no minor staves"
		end
		num_medium.times{
			case rand(1..100)
			when 1..15
				staff = @staves[0]
			when 16..30
				staff = @staves[1]
			when 31..40
				staff = @staves[2]
			when 41..55
				staff = @staves[3]
			when 56..75
				staff = @staves[4]
			when 76..90
				staff = @staves[5]
			when 91..95
				staff = @staves[6]
			when 96..100
				staff = @staves[7]
			end
			case rand(1..100)
				when 1..30
					ret_staves << [staff[0] + ' (with a clue as to its purpose)', staff[1]]
				else
					ret_staves << staff
			end
		}
		num_major.times{
			case rand(1..100)
			when 1..3
				staff = @staves[0]
			when 4..9
				staff = @staves[1]
			when 10..11
				staff = @staves[2]
			when 12..13
				staff = @staves[3]
			when 14..19
				staff = @staves[4]
			when 20..24
				staff = @staves[5]
			when 25..31
				staff = @staves[6]
			when 32..38
				staff = @staves[7]
			when 39..45
				staff = @staves[8]
			when 46..50
				staff = @staves[9]
			when 51..55
				staff = @staves[10]
			when 56..60
				staff = @staves[11]
			when 61..65
				staff = @staves[12]
			when 66..70
				staff = @staves[13]
			when 71..75
				staff = @staves[14]
			when 76..80
				staff = @staves[15]
			when 81..85
				staff = @staves[16]
			when 86..90
				staff = @staves[17]
			when 91..95
				staff = @staves[18]
			when 96..98
				staff = @staves[19]
			when 99..100
				staff = @staves[20]
			end
			case rand(1..100)
				when 1..30
					ret_staves << [staff[0] + ' (with a clue as to its purpose)', staff[1]]
				else
					ret_staves << staff
			end
		}
		return ret_staves
	end

	def Grimoire.debug_staves()
		puts "-- DEBUG STAVES --"
		puts "@staves count = " + @staves.count.to_s
	end
end