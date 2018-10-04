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
data[:color].each |key, value|
value.each do |name|
  new_hash[name] = {}
  new_hash[name][:color] =  [key]
   #key is purple value is names
end


