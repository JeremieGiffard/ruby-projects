def caesar_cipher(string_to_encrypt, shift_number = 0)
  # CREER UN HASH AVEC TOUTES LES LETTRES DE L'ALPHABET => NUMBRE INDEX
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u
                v w x y z]
  stringToReturn = ''

  string_to_encrypt.each_char do |ch|
    # TROUVER L'INDEX CORRESPONDANT DANS LE HASH
    index = alphabet.find_index(ch.downcase)
    # checker si ce n'est pas une lettre
    if index.nil?
      stringToReturn << ch
    else
      index = shift_alphabet(index, shift_number)
      letter = alphabet[index]
      letter = letter.upcase if ch == ch.upcase
      stringToReturn << letter
    end
  end
  puts stringToReturn
  stringToReturn
end

# shift le parametre par la valeur du deusième param. wrap from z to a.
# @param index de la lettre dans l'alphabet
# @param shift_number valeur à ajouter à l'index
def shift_alphabet(index, shift_number)
  lenght_Alphabet = 25
  shiftTo = index + shift_number
  shiftTo = shiftTo - lenght_Alphabet - 1 if shiftTo - lenght_Alphabet > 0
  shiftTo
end

caesar_cipher('What a string!', 5)
