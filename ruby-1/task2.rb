class String
    def vignere_decode(key_string)
      alphabet = ('A'..'Z').to_a
      key_string = key_string.upcase
      decoded_string = ""
      key_length = key_string.length
  
      self.upcase.chars.each_with_index do |char, index|
        if alphabet.include?(char)
          key_char = key_string[index % key_length]
          char_index = alphabet.index(char)
          key_index = alphabet.index(key_char)
          decoded_index = (char_index - key_index) % 26
          decoded_string << alphabet[decoded_index]
        else
          decoded_string << char
        end
      end
  
      decoded_string
    end
  end
  
# Пример использования
encoded_text = "LXFOPVEFRNHR"
key = "LEMON"
puts encoded_text.vignere_decode(key)  # Ожидаемый результат: ATTACKATDAWN
