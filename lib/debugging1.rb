def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  puts "The cipher is #{cipher}"
  ciphertext_chars = plaintext.chars.map do |char|
      "This char of the plaintext is #{char}"
      "The index of this char in the cipher is #{cipher.find_index(char)}"
      "Added 65 and turned into a chr it is #{(65 + cipher.find_index(char)).chr}"
      (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  return plaintext_chars.join
end

puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")

puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")