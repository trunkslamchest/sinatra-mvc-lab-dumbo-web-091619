class PigLatinizer

	def piglatinize(input_str)
		new_phrase = ''
		vowels = "aAeEiIoOuU"
		split_phrase = input_str.split(" ")

		split_phrase.each { |word|
			if vowels.include?(word[0])
				new_phrase += word + "way"
			else
				word.each_char.with_index do |char, i|
					if vowels.include?(char)
						new_phrase += word[i..-1] + word[0...i] + "ay"
						break
					end
				end
			end
		}

new_phrase

	end

end