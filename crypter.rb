class Encryptor
	def cipher
		{'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
     	'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
     	'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
     	'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
     	'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
     	'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     	'y' => 'l', 'z' => 'm'}
	end

	def decipher
		{'n' => 'a', 'o' => 'b', 'p' => 'c', 'q' => 'd',
     	'r' => 'e', 's' => 'f', 't' => 'g', 'u' => 'h',
     	'v' => 'i', 'w' => 'j', 'x' => 'k', 'y' => 'l',
     	'z' => 'm', 'a' => 'n', 'b' => 'o', 'c' => 'p',
     	'd' => 'q', 'e' => 'r', 'f' => 's', 'g' => 't',
     	'h' => 'u', 'i' => 'v', 'j' => 'w', 'k' => 'x',
     	'l' => 'y', 'm' => 'z'}
	end

	def encrypt(string)
		#Cut string input  into letters
		letters = string.downcase.split("")

		#Encryp letters one at a time, gathering results
		results = []
		letters.each do |letter|
			encrypted_letter = cipher[letter]
			results.push(encrypted_letter)
		end

		#join results
		results.join
	end

	def decrypt(string)
		letters = string.downcase.split("")
		results = []

		letters.each do |letter|
			encrypted_letter = decipher[letter]
			results.push(encrypted_letter)
		end
	end
end


secret = Encryptor.new
#puts secret.encrypt('DOG')
puts secret.decrypt('QBT')

