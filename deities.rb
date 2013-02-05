#!/usr/env ruby
#
#grimoire v0.1
#by Russell Champoux

module Grimoire

	#list of deities and their allignments
	#dieties['lawful/neutral/chaotic']['good/neutral/evil'] = [gods]
	@deities = {
		'lawful' => {
			'good'    => ['Erastil', 'Iomedae', 'Torag'],
			'neutral' => ['Abadar', 'Irori'],
			'evil'    => ['Asmodeus', 'Zon-Kuthon']
			},
		'neutral' => {
			'good'    => ['Sarenrae'],
			'neutral' => ['Gozreh', 'Pharasma', 'Nethys'],
			'evil'    => ['Urgathoa', 'Norgorber'],
			},
		'chaotic' => {
			'good'    => ['Desna', 'Cayden Cailean'],
			'neutral' => ['Gorum', 'Calistria'],
			'evil'    => ['Lamashtu', 'Rovagug'],
			}
		}

	def Grimoire.get_deity(alignment1 = 'any', alignment2 = 'any')
		alignment1 = alignment1.downcase
		alignment2 = alignment2.downcase
		case alignment1
			when 'any'
				alignment1 = ['lawful', 'neutral', 'chaotic'].sample
			when 'lawful','neutral','chaotic'
				; #we're fine. don't do anything
			else
				return 'invalid alignment'
		end
		case alignment2
			when 'any'
				alignment2 = ['good', 'neutral', 'evil'].sample
			when 'good','neutral','evil'
				; #we're fine. don't do anything
			else
				return 'invalid alignment'
		end
		return @deities[alignment1][alignment2].sample + " (" + alignment1 + " " + alignment2 + ")"
	end

end