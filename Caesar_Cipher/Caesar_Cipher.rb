def caesar_cipher(string_to_encrypt, shift_number = 0)
  
  # CREER UN HASH AVEC TOUTES LES LETTRES DE L'ALPHABET => NUMBRE INDEX
  alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  stringToReturn = ''
  # BOUCLER, POUR CHAQUE LETTRE 
  string_to_encrypt.each_char { |ch| 
    # TROUVER L'INDEX CORRESPONDANT DANS LE HASH.
    temp = alphabet.find_index(ch)
    # checker si ce n'est pas une lettre
    if temp == nil
      stringToReturn << ch
    else
      # SHIFTER PAR shift_number GERER FIN DE INDEX POUR RETOUR AU DEBUT
      temp = temp + shift_number
      stringToReturn << alphabet[temp]
    end
    p temp
  }
  puts stringToReturn
  # 
  # RETURN
end

caesar_cipher('bonjour !',1)
