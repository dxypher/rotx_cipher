def rotx(x, string, cipher=:encrypt)
  alpha = ('A'..'Z').to_a
  string_array = string.split("")
  output = []
  increment = cipher == :encrypt ? x : (26 - x)

  string_array.each do |char|
    if char =~ /[[:alpha:]]/
      index = alpha.index(char.upcase) + increment
      index = index > 25 ? index - 26 : index
      new_letter = char == char.downcase ? alpha[index].downcase : alpha[index]
      output << new_letter
    else
      output << char
    end
  end
  p output.join("")
end

rotx 10, 'Hello, World'
rotx 10, "Rovvy, Gybvn", :decrypt
