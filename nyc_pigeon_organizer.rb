def nyc_pigeon_organizer(data)
  names = []
  data[:color].each { |key, value| names << value }
  names.flatten!
  names.uniq!

  new_pigeon_data = {}
  index = 0
  while index < names.length do
    name = names[index]
    new_pigeon_data[name] = {}
    new_pigeon_data[name][:color] = bird_organizer(name, data[:color])
    new_pigeon_data[name][:gender] = bird_organizer(name, data[:gender])
    new_pigeon_data[name][:lives] = bird_organizer(name, data[:lives])
    index += 1
  end
  new_pigeon_data
end

def bird_organizer(bird_name, hash)
  bird_info = []
  hash.each_pair do |key, name|
    if name.include?(bird_name)
      bird_info << "#{key}"
    end
  end
  bird_info
end
