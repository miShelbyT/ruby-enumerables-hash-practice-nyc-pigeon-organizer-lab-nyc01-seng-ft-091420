require 'pry'
def nyc_pigeon_organizer(data)

  check_array = data.each_with_object({}) do |(key, value), final_array|
    value.each do |sub_key, sub_value|
      sub_value.each do |name|
      if !final_array[name]
        final_array[name] = {}
      end

      if !final_array[name][key]
           final_array[name][key] = []
      end

          final_array[name][key].push(sub_key.to_s)
        end
      end
    end
end

# binding.pry
  # write your code here!
