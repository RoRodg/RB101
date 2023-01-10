
def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.map do |string|
    lengths << string.length
  end
  return lengths
end

p string_lengths("Hi I'm Bob")
