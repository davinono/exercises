# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    position_counter = 0
    current_number = 0
    temporary_array = []
    final_array = []
    
    while position_counter < nums.size
        current_number = nums[position_counter]
        temporary_array = nums - [current_number]
        temporary_array.each do |n|
            if ((n + current_number) == target)
                final_array = [current_number, n]
            end
        end
        position_counter += 1
    end
    
    puts "#{final_array}"
end

puts two_sum([10, 24, 14, 1, 5, 8], 22)