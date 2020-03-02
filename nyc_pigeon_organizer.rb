def nyc_pigeon_organizer(data)
  # write your code here!
  names = []
  data[:color].each { |key, value| names << value }
  names.flatten!
  names.uniq!

  
end
