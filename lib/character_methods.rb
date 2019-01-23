# G.O.T. WIKI CHARACTER METHODS


################ HELPER METHODS ################

def cap_all_words(string)
  string.split.map(&:capitalize).join(' ')
end


################ FUNCTIONAL METHODS ################
def show_me_houses(char_name)
  characters = Character.all.select do |char|
    char.name.include?(cap_all_words(char_name))
  end
  array = characters.map do |char|
    char.houses.map do |house|
      house.name
    end
  end.flatten.uniq
  array.map do |element|
    puts element
  end
  # cap_all_words(char_name)
end
