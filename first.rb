def caser_cipher(string,num,first = " ")
  string.each_char do |char|
    valore =  char.ord < 91 ? 65 : 97
    if char.ord.between?(65,90)   || char.ord.between?(97,122)
      stringdue = (((char.ord - valore)+ num)% 26) + valore
      first += stringdue.chr
    else
      first += char
    end
  end
  first
end

puts caser_cipher("HELLO WORLD",2)