# This is a refactored version after I did some research on rot13

def rotx(x, string, cipher=:encrypt)
  alpha = ('A'..'Z').to_a
  i = cipher == :encrypt ? x : (26 - x)
  i = i > 25 ? i - 26 : i
  replacement_letters = "#{alpha[i]}-ZA-#{alpha[i-1]}#{alpha[i].downcase}-za-#{alpha[i-1].downcase}"
  p string.tr!("A-Za-z", replacement_letters)
end

rotx 10, 'Hello, World'
rotx 10, "Rovvy, Gybvn", :decrypt