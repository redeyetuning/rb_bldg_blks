#In cryptography, a Caesar cipher, also known as Caesar’s cipher, 
# the shift cipher, Caesar’s code or Caesar shift, is one of the simplest 
#and most widely known encryption techniques. It is a type of substitution cipher 
#in which each letter in the plaintext is replaced by a letter some fixed number 
#of positions down the alphabet. For example, with a left shift of 3, D would be 
#replaced by A, E would become B, and so on. The method is named after Julius 
#Caesar, who used it in his private correspondence.

def caeser_cipher string, shift
	output = []

	string.split("").each do |char|
		i = char.ord
		if i >= 65 && i <= 90
			if i + shift > 90
				output << (char.ord + shift - 26).chr
			elsif i + shift < 65
				output << (char.ord + shift + 26).chr
			else
				output << (char.ord + shift).chr
			end

		elsif i >= 97 && i <= 122
			if i + shift > 122
				output << (char.ord + shift - 26).chr
			elsif i + shift < 97
				output << (char.ord + shift + 26).chr
			else
				output << (char.ord + shift).chr
			end
		else
			output << char

		end
	end

	puts output.join
end

puts "Enter string to encrypt:"
phrase = gets.chomp
puts "Enter numerical shift factor:"
shift = gets.chomp.to_i

caeser_cipher(phrase, shift)