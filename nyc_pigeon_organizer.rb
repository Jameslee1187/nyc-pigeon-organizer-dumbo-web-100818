def nyc_pigeon_organizer(data)
new_hash = {}
data.each do |key, value|
  value.each do |type, spec|
    spec.each do |names|
      if !new_hash.has_key?(names)
        new_hash[names][type]
         
end