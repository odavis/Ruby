#Create encryption key for strings

class Encryption	
	def encryp(string)
		alphabet = ('a'..'z').to_a
		cipher = alphabet.rotate(13)

		#splits string into letters, puts letters in array 
		message = string.downcase.split("")

		#determines array position of each leter 
		message.each do |letter|
			letter_array = alphabet.index(letter)
			return letter_array
		end

		puts letter_array
		#letter_index.each do |letter|
		#	letter_cipher_array = cipher[letter]
		#end


		#puts message.index('o')
	end
end


secret = Encryption.new
secret.encryp('Hello')