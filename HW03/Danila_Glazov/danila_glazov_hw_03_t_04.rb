# frozen_string_literal: false

def letter_counter(str)
  letters = {}

  (0...str.length).each { |i| letters[str[i]].nil? ? letters[str[i]] = 1 : letters[str[i]] += 1 }

  letters
end

p letter_counter('hel2!lo')
p letter_counter('wicked .. !')
