def caesar_cipher(string_to_encrypt, shift_number = 0)
  # CREER UN HASH AVEC TOUTES LES LETTRES DE L'ALPHABET => NUMBRE INDEX
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u
                v w x y z]
  string_to_return = ''

  string_to_encrypt.each_char do |ch|
    index = alphabet.find_index(ch.downcase)
    # checker si ce n'est pas une lettre
    if index.nil?
      string_to_return << ch
    else
      index = shift_alphabet(index, shift_number)
      letter = alphabet[index]
      letter = letter.upcase if ch == ch.upcase
      string_to_return << letter
    end
  end
  puts string_to_return
  string_to_return
end

# shift le parametre par la valeur du deusième param. wrap from z to a.
# @param index de la lettre dans l'alphabet
# @param shift_number valeur à ajouter à l'index
def shift_alphabet(index, shift_number)
  lenght_alphabet = 25
  shift_to = index + shift_number
  shift_to = shift_to - lenght_alphabet - 1 if (shift_to - lenght_alphabet).positive?
  shift_to
end

caesar_cipher('What a string!', 5)
