def substrings string, dictionary
 	output = {}
 	string_array = string.gsub(/[^a-z0-9\s]/i, '').downcase.split
 	string_array.each do |word|
 		puts word
  		dictionary.each do |entry|
    		if word.include?(entry)
      	
      			if output.key?(entry)  
      				output[entry] += 1
      			else output[entry] =1
      			end
    		end
  		end  
	end

puts output
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
