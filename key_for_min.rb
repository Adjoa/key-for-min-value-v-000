# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  else
    key_array = []
    value_array = []

    name_hash.each do |name, value|
      key_array << name
      value_array << value
    end

    i = 0
    smallest = value_array[0]

    value_array.each_with_index do |value, index|
      if value < smallest
        smallest = value
        i = index
      end
    end

    return key_array[i]
  end
end
