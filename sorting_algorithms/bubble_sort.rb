def bubble_sort(arr)
    n = arr.length
    for i in 0..n-2 do
        for j in 0..n-i-2 do
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    arr
end

def bubble_sort_using_each(arr)
    n = arr.length
    (0..n-2).step(1).each do |i|
        (0..n-i-2).step(1) do |j|
            if arr[j] > arr[j+1]
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
end

arr = [5, 1, 4, 2, 8]
bubble_sort(arr)
puts arr.inspect

arr = [5, 1, 4, 2, 8]
bubble_sort_using_each(arr)
puts arr.inspect