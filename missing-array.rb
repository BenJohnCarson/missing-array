def getLengthOfMissingArray(array_of_arrays)
    if !(array_of_arrays == nil) && !array_of_arrays.empty?
        array_of_arrays.each { |array| return 0 if (array == nil) || (array.empty?)}
        
        sorted = array_of_arrays.sort_by(&:length)
        num = sorted[0].length

        sorted.each do |array|
            return (array.length - 1) if (array.length != num)
            num += 1
        end
    else
        0
    end
end