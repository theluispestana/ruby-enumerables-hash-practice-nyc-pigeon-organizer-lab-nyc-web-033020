def nyc_pigeon_organizer(data)
  # write your code here!
  names = []
  data[:color].each { |key, value| names << value }
  names.flatten!
  names.uniq!

  new_pigeon_data = {}
  index = 0
  while index < names.length do
    name = names[index]
    new_pigeon_data[name] = {}
    new_pigeon_data[name][:color] = color_organizer(name, data[:color])
    new_pigeon_data[name][:gender] = color_organizer(name, data[:gender])
    new_pigeon_data[name][:lives] = color_organizer(name, data[:lives])
    index += 1
  end
  new_pigeon_data
end

def color_organizer(bird_name, color_hash)
  bird_colors = []
  color_hash.each_pair do |hue, name|
    if name.include?(bird_name)
      bird_colors << "#{hue}"
    end
  end
  bird_colors
end

def gender_organizer(bird_name, gender_hash)
  bird_gender = []
  gender_hash.each_pair do |gender, name|
    if name.include?(bird_name)
      bird_colors << "#{gener}"
    end
  end
  bird_gender
end

def home_organizer(bird_name, home_hash)
  bird_home = []
  home_hash.each_pair do |home, name|
    if name.include?(bird_name)
      bird_colors << "#{home}"
    end
  end
  bird_home
end
