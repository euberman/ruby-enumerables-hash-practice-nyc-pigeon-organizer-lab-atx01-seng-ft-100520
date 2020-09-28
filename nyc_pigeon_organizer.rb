require 'pry'

def nyc_pigeon_organizer(data)
  puts "Sending data to pigeon_hash_builder"
  pigeon_hash = pigeon_hash_builder(data)
  binding.pry
  
  pigeon_hash_filler(data, pigeon_hash)
end

def pigeon_hash_filler(data, pigeon_hash)
  puts "Filling Pigeon Data"
  data.each { |cat, cat_hash|
    puts "working on #{cat} = #{cat_hash}"
    cat_hash.each { |sub_cat, name_list|
      i = 0 
      while i < name_list.length do
        pigeon_hash[name_list[i]][cat].push(sub_cat.to_s)
        i += 1
      end
    }
  }
  binding.pry
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

