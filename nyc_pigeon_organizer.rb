def nyc_pigeon_organizer(data)
new_hash = {}
data.each do |key, value|
  value.each do |type, spec|
    spec.each do |names|
      if !new_hash.has_key?(names)
        new_hash[names] = {}
        if !new_hash[names][type].has_key?(names)
          new_hash[names][type] = []          
          if !new_hash[names][type].include?(spec)
            new_hash[names][type] << spec.to_s
          end
        end
      end
end
end
end
new_hash
        
         
end