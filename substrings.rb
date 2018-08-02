def substrings(string, array)
	matches = []
	i = 0
	matches_hash = {}
	j = 0

	string_split = string.split(" ")
	string_split.map! { |e| e.downcase  }


	while i < string_split.length
		string_split[i]
		j = 0
		while j < array.length
			if string_split[i].match(array[j]).nil? == false
				matches.push((string_split[i].match(array[j])).to_s)
			end
			j += 1
		end
		i += 1
	end
	

	matches_unique = matches.uniq


	j = 0
	while j < matches.length
		matches_hash[matches[j]] = (matches.count(matches[j]))

		j += 1
	end

	matches_hash

	sorted_hash = Hash[matches_hash.sort]


end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


p substrings("Howdy partner, sit down! How's it going?", dictionary)



