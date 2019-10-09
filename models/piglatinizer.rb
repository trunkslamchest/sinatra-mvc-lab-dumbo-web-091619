class Piglatinizer

	attr_reader :user_phrase
	# attr_writer
	# attr_accessor

	def initialize(user_phrase)
	@user_phrase = user_phrase
	end

	def do_function
		new_phrase = ''
		vowels = "aAeEiIoOuU"
		split_phrase = user_phrase.split(" ")

		split_phrase.each { |word|
			if vowels.include?(word[0])
				new_phrase += word + "way "
			else
				word.each_char.with_index do |char, i|
					if vowels.include?(char)
						new_phrase += word[i..-1] + word[0...i] + "ay "
						break
					end
				end
			end
		}

		new_phrase

	end

end