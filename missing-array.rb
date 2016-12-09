def getLengthOfMissingArray(array_of_arrays)
    if (array_of_arrays == nil) || !array_of_arrays.empty?
        sorted = array_of_arrays.sort_by(&:length)
        num = sorted[0].length

        sorted.each do |array|
            if !array.empty?
                return (array.length - 1) if (array.length != num)
                num += 1
            else
            0
            end
        end
    else
        0
    end
end