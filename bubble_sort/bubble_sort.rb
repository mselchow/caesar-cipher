def bubble_sort(nums)
  swapped = true
  length = nums.length
  until swapped = false do
    swapped = false
    for i in 1..length-1 do
      if nums[i - 1] > nums[i]
        nums[i - 1], nums[i] = nums[i], nums[i - 1]
        swapped = true
      end
    end
    length -= 1
  end
  nums
end