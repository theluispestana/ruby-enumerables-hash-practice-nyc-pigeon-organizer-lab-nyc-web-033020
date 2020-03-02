def nyc_pigeon_organizer(data)
  # write your code here!
  names = []
  data[:color].each { |key, value| names << value }
  names.flatten!
  names.uniq!

  pigeon_data = {}
  index = 0
  while index < names.length do
    pigeon_data[name[index]][:color] = data[:color].select{ |key, value| value == name[index] }
  end
end
