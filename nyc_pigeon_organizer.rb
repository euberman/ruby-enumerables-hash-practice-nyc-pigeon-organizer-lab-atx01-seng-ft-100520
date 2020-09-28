require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_hash = pigeon_hash_builder(data)
  binding.pry
  pigeon_hash_filler(data,pigeon_hash)
end

def pigeon_hash_filler(data,pigeon_hash)
  data.each_pair { |cat_key, cat_value|
    cat_value.each_pair { |inner_key, inner_value|
      i = 0 
      while i < inner_value.length do
        pigen_hash[inner_value[i]][cat_key].push(inner_key.to_s)
        i += 1
      end
    }
  }
  pigeon_hash
end  

def pigeon_hash_builder(data)
  puts "Building Pigeon Data"
  pigeon_hash = {}
  data[:gender].each { |key,value| 
    puts "Looking at #{key} with #{value}"
    i = 0
    while i < value.length do
        pigeon_hash[value[i]] = { :color =>[], :gender => [], :lives => [] } 
        i += 1
    end
  }
  
  binding.pry
  pigeon_hash
end

