def substrings(string, array)
	matches = []
	i = 0
	matches_hash = {}
	matches_unique = 
	j = 0

	while i < array.length
		if (string.match(array[i]).to_s).empty? == false
			matches.push(string.match(array[i]).to_s)
		end

		i += 1
	end

	matches_unique = matches.uniq
	p matches
	
	while j < matches_unique.length
		matches_hash[matches[j]] = (matches.count(matches[j]))

		j += 1
	end

	matches_hash


end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


p substrings("below", dictionary)

