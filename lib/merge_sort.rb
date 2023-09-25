def merge_sort(arr)
    return arr if arr.length < 2

    center = arr.length / 2

    left = merge_sort(arr.slice(0, center))
    right = merge_sort(arr.slice(center, arr.length - 1))

    sorted = []
    until left.empty? || right.empty?
        if left.first() < right.first()
            sorted.push(left.shift())
        else
            sorted.push(right.shift())
        end
    end
    
    sorted + left + right
end

p merge_sort([3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6])