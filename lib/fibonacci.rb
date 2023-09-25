def fibs(n)
    arr = []

    0.upto(n) do |i|
        if i <= 1 
            arr[i] = i 
        else
            arr[i] = arr[i-1] + arr[i-2]
        end
    end

    return arr
end

def fibs_rec(n)
    return n if n <= 1
    fibs_rec(n-1) + fibs_rec(n-2)
  end

puts fibs(8)
puts fibs_rec(8)