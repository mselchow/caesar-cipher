def substrings(str, substr_arr)
    result = Hash.new()
    substr_arr.each do |substr|
        count = str.downcase.scan(substr).count
        if count > 0
            result[substr] = count
        end
    end
    result
end