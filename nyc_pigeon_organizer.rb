def nyc_pigeon_organizer(data)
# new_hash = {}
# data.each do |key, value|
#   value.each do |type, spec|
#     spec.each do |names|
#       if !new_hash.has_key?(names)
#         new_hash[names] = {}
#       end
#         if !new_hash[names].has_key?(key)
#           new_hash[names][key] = []
#         end
#           if !new_hash[names][key].include?(type)
#             new_hash[names][key] << type.to_s
#           end
#       end
#     end
#   end

# p new_hash
# new_hash
        
new_hash = {}
data[:color].each do |key, value|
  value.each do |name|
    if new_hash.has_key?(name)
      new_hash[name][:color] << key.to_s
    else
      new_hash[name] = {}
      new_hash[name][:color] =  [key.to_s]
    # key is purple value is names
    # if key is not newHash = { "Theo" => {:color=>["purple"]}}
    end
  end
end
data[:gender].each do |key, value|
  value.each do |name|
    if new_hash.has_key?(name) && new_hash[name].has_key?("gender")
      new_hash[name][:gender] << key.to_s
    else
      new_hash[name][:gender] =  [key.to_s]
    # key is purple value is names
    # if key is not newHash = { "Theo" => {:color=>["purple"]}}
    end
  end
end
data[:lives].each do |key, value|
  value.each do |name|
    if new_hash.has_key?(name)&& new_hash[name].has_key?("lives")
      new_hash[name][:lives] << key.to_s
    else
      new_hash[name][:lives] =  [key.to_s]
    # key is purple value is names
    # if key is not newHash = { "Theo" => {:color=>["purple"]}}
    end
  end
end

puts new_hash
end



