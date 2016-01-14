# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  counts = Hash.new(0)
  
  arr.each do |int|
    counts[int] += 1
  end
  # returns a hash with the count for each value in the array
  
  freq = counts.values
  # returns array of just the frequencies.
  
  if freq.uniq.length > 1
    freq.max
    counts.key(freq.max)
  else
    nil
  end
  
end

# note to self: method does not yet account for a situation like [2,2,1,1,0]
