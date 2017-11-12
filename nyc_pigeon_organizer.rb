def nyc_pigeon_organizer(data)
  organized_hash = {}
  data.each do |key, value|
    value.each do |kv, array|
      array.each do |name|
        if organized_hash[name] == nil
          organized_hash[name] = {}
          end
          if organized_hash[name][key] == nil
            organized_hash[name][key] = []
          end
          organized_hash[name][key].push(kv.to_s)
        end
      end
    end
  return organized_hash
end
