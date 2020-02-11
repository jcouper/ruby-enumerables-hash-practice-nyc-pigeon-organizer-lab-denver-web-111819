require 'pry'

def nyc_pigeon_organizer(data)

  new_hash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(property)
          new_hash[name][property] = []
        end

        if !new_hash[name][property].include?(attribute)
          new_hash[name][property] << attribute.to_s
        end
      end
    end
  end
  new_hash
end



# def nyc_pigeon_organizer(data)
#   pigeon_list = {}
#   data.each do |color_gender_lives, value|
#     value.each do |stats, all_names|
#       all_names.each do |name|
#         if pigeon_list[name] == nil
#           pigeon_list[name] = {}
#         end
#         if pigeon_list[name][color_gender_lives] == nil
#           pigeon_list[name][color_gender_lives] = []
#         end
#         pigeon_list[name][color_gender_lives].push(stats.to_s)
#       end
#     end 
#   end
#   pigeon_list
# end