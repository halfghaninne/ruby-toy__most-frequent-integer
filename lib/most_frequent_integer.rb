# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  counts = Hash.new(0)

  arr.each do |int|
    counts[int] += 1
  end

  freq = counts.values
  # returns array of frequencies [2,1]

  if freq.uniq! == false && freq.uniq.length > 1
    freq.max
    counts.key(freq.max)
  else
    nil
  end

  
end

# note to self: method now accounts for duplicates (eg [2,2,1,1,0]) and for unique arrays (eg [1,2,3,4]) BUT NOW NOT FOR most freq integers :( (eg [1,1,2,3])
