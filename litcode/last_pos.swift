// given sorted array find indexes of element started and ended

class Solution{
    func searchRange(_ nums: [Int],_ target: Int) -> [Int] {
   
        var local : [Int] = [-1,-1]
        
        local[0] = nums.firstIndex(of: target) ?? -1
        local[1] = nums.lastIndex(of: target) ?? -1
        // for i in nums{
        //     if target == i
        // }
        return local
    }
}

let kek = Solution()
let nums = [5,7,7,8,8,10]
let target = 6

print(kek.searchRange(nums,target))